package §_-bs§
{
   import §_-7§.§_-ph§;
   import §_-Cy§.Texture;
   import §_-UX§.Sprite;
   import §_-UX§.§_-2S§;
   import §_-rQ§.§_-hA§;
   import flash.display.BitmapData;
   
   public class §_-J5§
   {
      
      public static const §_-Tx§:String = "CutScene_Type_Intro";
      
      public static const §_-KQ§:String = "CutScene_Type_Outro";
      
      public static const §_-Ix§:String = "CutScene_Type_Final_Outro";
       
      
      private var §do §:String;
      
      private var §_-7b§:Vector.<§_-bA§>;
      
      private var §_-2y§:Number;
      
      private var §_-2Z§:Number;
      
      private var §_-NR§:Number;
      
      private var §_-gD§:Number;
      
      private var §_-bB§:Sprite;
      
      private var §_-UM§:Boolean = true;
      
      private var §_-BW§:Texture;
      
      private var §_-XO§:Boolean;
      
      private var §_-pE§:Boolean;
      
      private var §_-0I§:Texture;
      
      private var §_-3Q§:Boolean;
      
      private var §_-sQ§:Boolean;
      
      private var §_-Q3§:§_-2S§;
      
      private var §_-3P§:§_-2S§;
      
      public function §_-J5§(param1:Object, param2:String)
      {
         var _loc3_:§_-bA§ = null;
         var _loc4_:Object = null;
         this.§_-7b§ = new Vector.<§_-bA§>();
         super();
         this.§_-2y§ = 0;
         if(param1)
         {
            if(param2.search("intro") != -1)
            {
               this.§do § = §_-Tx§;
            }
            else if(param2.search("complete") != -1)
            {
               this.§do § = §_-KQ§;
            }
            for each(_loc4_ in param1)
            {
               _loc3_ = this.§_-bt§(_loc4_);
               if(_loc3_)
               {
                  this.§_-7b§.push(_loc3_);
               }
            }
            for each(_loc3_ in this.§_-7b§)
            {
               if(_loc3_ is §_-ki§)
               {
                  (_loc3_ as §_-ki§).§_-Bn§(this.§_-NR§,this.§_-gD§);
                  (_loc3_ as §_-ki§).§_-hV§ = this.§_-UM§;
               }
               else if(_loc3_ is §_-jM§)
               {
                  (_loc3_ as §_-jM§).§_-Bn§(this.§_-NR§,this.§_-gD§);
                  (_loc3_ as §_-jM§).§_-Lc§ = this.§_-UM§;
               }
            }
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.§_-bB§;
      }
      
      private function §_-bt§(param1:Object) : §_-bA§
      {
         var _loc2_:Object = null;
         var _loc3_:BitmapData = null;
         var _loc4_:uint = 0;
         switch(param1.action)
         {
            case §_-bA§.§_-Sh§:
               return new §_-jM§(param1.time * 1000,0,param1.name,param1.image,param1.x,param1.y);
            case §_-bA§.§_-iz§:
               _loc2_ = param1.scroll_target;
               if(_loc2_.type == "sprite")
               {
                  return new §_-ki§(param1.time * 1000,param1.duration * 1000,_loc2_.sprite,_loc2_.x,_loc2_.y);
               }
               break;
            case §_-bA§.§_-4P§:
               return new §_-kC§(param1.time * 1000,0,param1.sound,param1.loop,param1.volume,param1.track);
            case §_-bA§.END:
               this.§_-2Z§ = param1.time * 1000;
               break;
            case §_-bA§.§_-Vq§:
               this.§_-NR§ = param1.width;
               this.§_-gD§ = param1.height;
               if(!this.§_-0I§)
               {
                  _loc3_ = new BitmapData(16,16,false,4278190080);
                  this.§_-0I§ = §_-hA§.§_-G4§.§_-ka§(_loc3_);
                  this.§_-sQ§ = true;
                  break;
               }
               break;
            case §_-bA§.§_-FU§:
               this.§_-UM§ = false;
               break;
            case §_-bA§.§_-q0§:
               this.§_-UM§ = true;
               break;
            case §_-bA§.§_-Jo§:
               if(!this.§_-BW§)
               {
                  _loc4_ = (param1.r << 16) + (param1.g << 8) + param1.b + (255 << 24);
                  this.§_-BW§ = §_-hA§.§_-G4§.§_-ka§(new BitmapData(64,64,false,_loc4_));
                  this.§_-pE§ = true;
                  break;
               }
         }
         return null;
      }
      
      public function dispose() : void
      {
         if(this.§_-bB§)
         {
            this.§_-bB§.dispose();
            this.§_-bB§ = null;
         }
         if(this.§_-BW§)
         {
            if(this.§_-pE§)
            {
               §_-hA§.§_-G4§.§_-18§(this.§_-BW§);
            }
            this.§_-BW§ = null;
         }
         if(this.§_-0I§)
         {
            if(this.§_-sQ§)
            {
               §_-hA§.§_-G4§.§_-18§(this.§_-0I§);
            }
            this.§_-0I§ = null;
         }
         this.§_-7b§ = null;
      }
      
      public function update(param1:Number) : Boolean
      {
         if(!this.§_-bB§)
         {
            this.§_-bB§ = new Sprite();
         }
         this.§_-2y§ += param1;
         var _loc2_:int = this.§_-7b§.length - 1;
         while(_loc2_ >= 0)
         {
            if(!this.§_-7b§[_loc2_].update(this.§_-2y§,this.§_-bB§))
            {
               this.§_-7b§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§_-T4§();
         this.§_-Hy§();
         this.§_-Yx§();
         return this.§_-2y§ < this.§_-2Z§;
      }
      
      private function §_-Yx§() : void
      {
         this.§_-bB§.x = (§_-ph§.§_-6t§ / §_-ph§.§_-an§ * 1024 - 1024) / 2;
         if(this.§_-3P§)
         {
            this.§_-3P§.width = (§_-ph§.§_-6t§ / §_-ph§.§_-an§ * 1024 - 1024) / 2;
         }
         if(this.§_-Q3§)
         {
            this.§_-Q3§.width = (§_-ph§.§_-6t§ / §_-ph§.§_-an§ * 1024 - 1024) / 2;
            this.§_-Q3§.x = -this.§_-Q3§.width;
         }
      }
      
      private function §_-T4§() : void
      {
         var _loc1_:Sprite = null;
         var _loc2_:§_-2S§ = null;
         if(this.§_-XO§)
         {
            return;
         }
         if(this.§_-BW§)
         {
            _loc1_ = this.§_-bB§.getChildByName(§_-jM§.§_-Hm§) as Sprite;
            if(_loc1_)
            {
               _loc2_ = new §_-2S§(this.§_-BW§);
               _loc2_.width = this.§_-NR§;
               _loc2_.height = this.§_-gD§;
               _loc2_.y = _loc1_.§_-uY§.top;
               _loc1_.addChildAt(_loc2_,0);
            }
         }
         this.§_-XO§ = true;
      }
      
      private function §_-Hy§() : void
      {
         var _loc2_:int = 0;
         var _loc3_:§_-2S§ = null;
         if(this.§_-3Q§)
         {
            return;
         }
         var _loc1_:Sprite = this.§_-bB§.getChildByName(§_-jM§.§_-Hm§) as Sprite;
         if(_loc1_)
         {
            if(this.§_-0I§)
            {
               _loc2_ = Math.ceil((§_-ph§.§_-UU§ - §_-ki§.§_-UU§) / 2);
               _loc3_ = new §_-2S§(this.§_-0I§);
               _loc3_.width = §_-ph§.§_-EK§;
               _loc3_.height = _loc2_;
               _loc3_.y = _loc1_.§_-uY§.bottom - §_-ki§.§_-UU§ - _loc3_.height;
               this.§_-bB§.addChild(_loc3_);
               _loc3_ = new §_-2S§(this.§_-0I§);
               _loc3_.width = §_-ph§.§_-EK§;
               _loc3_.height = _loc2_;
               _loc3_.y = _loc1_.§_-uY§.bottom;
               this.§_-bB§.addChild(_loc3_);
               _loc3_ = new §_-2S§(this.§_-0I§);
               _loc3_.width = 1;
               _loc3_.height = §_-ph§.§_-UU§;
               _loc3_.y = _loc1_.§_-uY§.bottom - §_-ki§.§_-UU§ - _loc2_;
               _loc3_.x = 0;
               this.§_-Q3§ = _loc3_;
               this.§_-bB§.addChild(_loc3_);
               _loc3_ = new §_-2S§(this.§_-0I§);
               _loc3_.width = 1;
               _loc3_.height = §_-ph§.§_-UU§;
               _loc3_.y = _loc1_.§_-uY§.bottom - §_-ki§.§_-UU§ - _loc2_;
               _loc3_.x = §_-ph§.§_-EK§;
               this.§_-3P§ = _loc3_;
               this.§_-bB§.addChild(_loc3_);
            }
         }
         this.§_-3Q§ = true;
      }
      
      public function clone() : §_-J5§
      {
         var _loc2_:§_-bA§ = null;
         var _loc1_:§_-J5§ = new §_-J5§(null,null);
         for each(_loc2_ in this.§_-7b§)
         {
            _loc1_.§_-7b§.push(_loc2_.clone());
         }
         _loc1_.§_-2y§ = this.§_-2y§;
         _loc1_.§_-2Z§ = this.§_-2Z§;
         _loc1_.§_-NR§ = this.§_-NR§;
         _loc1_.§_-gD§ = this.§_-gD§;
         _loc1_.§_-UM§ = this.§_-UM§;
         _loc1_.§_-BW§ = this.§_-BW§;
         _loc1_.§_-0I§ = this.§_-0I§;
         _loc1_.§do § = this.§do §;
         return _loc1_;
      }
      
      public function get §_-QH§() : String
      {
         return this.§do §;
      }
      
      public function set §_-QH§(param1:String) : void
      {
         this.§do § = param1;
      }
   }
}
