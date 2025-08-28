install-templates:
	@echo "📦 Instalando templates Xcode..."
	mkdir -p ~/Library/Developer/Xcode/Templates/File Templates/Custom/
	cp -R MVVMScene.xctemplate ~/Library/Developer/Xcode/Templates/File Templates/Custom/
	cp -R DDDModule.xctemplate ~/Library/Developer/Xcode/Templates/File Templates/Custom/
	@echo "✅ Templates instalados!"
