lc_oResizeImage = new ResizeImage()

lc_oResizeImage.Resize('wallpaperbig.jpg','wallpaper_big_resized.jpg','2048','2048','90')

class ResizeImage
	
   // Cosa fa			:			Ridimensione un immagine
   // pr_sPath			:			stringa, percorso+nome del file immagine da usare
   //	pr_sOutputPath	:			stringa, percorso+nome del file immagine da creare come output
   // pr_sLarghezza	:			stringa, larghezza dell'immagine da generare (in px)
   //	pr_sAltezza		:			stringa, altezza dell'immagine da generare (in px)
   // pr_sQuality		:			stringa(numero), qualità dell'immagine da generare: da 1 a 100
   // N.B.: Mantiene le proporzioni (aspect-ratio) dell'immagine
	function Resize(pr_sPath,pr_sOutputPath,pr_sLarghezza,pr_sAltezza,pr_sQuality)
   	local lc_sPath,lc_sOutputPath,lc_sLarghezza,lc_sAltezza,lc_sQuality,lc_scriptPath

      lc_sPath = pr_sPath
      lc_sOutputPath = pr_sOutputPath
		lc_sLarghezza = pr_sLarghezza
      lc_sAltezza = pr_sAltezza
      lc_sQuality = pr_sQuality

		// Percorso del file convert.exe
      lc_scriptPath = '.\convert\convert.exe'

      lc_sScript = lc_scriptPath+' '+lc_sPath+' -resize '+lc_sLarghezza+'x'+lc_sAltezza+' -quality '+lc_sQuality+' '+lc_sOutputPath

		run(lc_sScript)

   	return
endclass