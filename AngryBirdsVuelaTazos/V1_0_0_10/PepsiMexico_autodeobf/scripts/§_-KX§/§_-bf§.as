package §_-KX§
{
   import §_-I1§.§_-2N§;
   import §_-KS§.§_-ia§;
   import §_-jY§.Texture;
   import §_-se§.Sprite;
   import §_-se§.§_-N§;
   import flash.display.BitmapData;
   
   public class §_-bf§
   {
      
      public static const §_-LC§:String = "CutScene_Type_Intro";
      
      public static const §_-8F§:String = "CutScene_Type_Outro";
      
      public static const §_-rA§:String = "CutScene_Type_Final_Outro";
       
      
      private var §_-2-§:String;
      
      private var §_-gE§:Vector.<§_-Z8§>;
      
      private var §_-KJ§:Number;
      
      private var §_-j-§:Number;
      
      private var §_-NR§:Number;
      
      private var §_-F0§:Number;
      
      private var §_-Pj§:Sprite;
      
      private var §_-0h§:Boolean = true;
      
      private var §_-f0§:Texture;
      
      private var §_-mW§:Boolean;
      
      private var §_-lR§:Boolean;
      
      private var §_-SV§:Texture;
      
      private var §_-WU§:Boolean;
      
      private var §_-e§:Boolean;
      
      private var §_-Ol§:§_-N§;
      
      private var §_-Wn§:§_-N§;
      
      public function §_-bf§(param1:Object, param2:String)
      {
         var _loc3_:§_-Z8§ = null;
         var _loc4_:Object = null;
         this.§_-gE§ = new Vector.<§_-Z8§>();
         super();
         this.§_-KJ§ = 0;
         if(param1)
         {
            if(param2.search("intro") != -1)
            {
               this.§_-2-§ = §_-LC§;
            }
            else if(param2.search("complete") != -1)
            {
               this.§_-2-§ = §_-8F§;
            }
            for each(_loc4_ in param1)
            {
               _loc3_ = this.§_-ci§(_loc4_);
               if(_loc3_)
               {
                  this.§_-gE§.push(_loc3_);
               }
            }
            for each(_loc3_ in this.§_-gE§)
            {
               if(_loc3_ is §_-AR§)
               {
                  (_loc3_ as §_-AR§).§ for§(this.§_-NR§,this.§_-F0§);
                  (_loc3_ as §_-AR§).§_-k4§ = this.§_-0h§;
               }
               else if(_loc3_ is §_-C9§)
               {
                  (_loc3_ as §_-C9§).§ for§(this.§_-NR§,this.§_-F0§);
                  (_loc3_ as §_-C9§).§_-V1§ = this.§_-0h§;
               }
            }
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.§_-Pj§;
      }
      
      private function §_-ci§(param1:Object) : §_-Z8§
      {
         var _loc2_:Object = null;
         var _loc3_:BitmapData = null;
         var _loc4_:uint = 0;
         switch(param1.action)
         {
            case §_-Z8§.§_-vz§:
               return new §_-C9§(param1.time * 1000,0,param1.name,param1.image,param1.x,param1.y);
            case §_-Z8§.§_-Tm§:
               _loc2_ = param1.scroll_target;
               if(_loc2_.type == "sprite")
               {
                  return new §_-AR§(param1.time * 1000,param1.duration * 1000,_loc2_.sprite,_loc2_.x,_loc2_.y);
               }
               break;
            case §_-Z8§.§_-pK§:
               return new §_-YT§(param1.time * 1000,0,param1.sound,param1.loop,param1.volume,param1.track);
            case §_-Z8§.END:
               this.§_-j-§ = param1.time * 1000;
               break;
            case §_-Z8§.§_-ID§:
               this.§_-NR§ = param1.width;
               this.§_-F0§ = param1.height;
               if(!this.§_-SV§)
               {
                  _loc3_ = new BitmapData(16,16,false,4278190080);
                  this.§_-SV§ = §_-ia§.§_-vJ§.§_-2V§(_loc3_);
                  this.§_-e§ = true;
                  break;
               }
               break;
            case §_-Z8§.§_-gH§:
               this.§_-0h§ = false;
               break;
            case §_-Z8§.§_-wX§:
               this.§_-0h§ = true;
               break;
            case §_-Z8§.§_-nn§:
               if(!this.§_-f0§)
               {
                  _loc4_ = (param1.r << 16) + (param1.g << 8) + param1.b + (255 << 24);
                  this.§_-f0§ = §_-ia§.§_-vJ§.§_-2V§(new BitmapData(64,64,false,_loc4_));
                  this.§_-lR§ = true;
                  break;
               }
         }
         return null;
      }
      
      public function dispose() : void
      {
         if(this.§_-Pj§)
         {
            this.§_-Pj§.dispose();
            this.§_-Pj§ = null;
         }
         if(this.§_-f0§)
         {
            if(this.§_-lR§)
            {
               §_-ia§.§_-vJ§.§_-Tx§(this.§_-f0§);
            }
            this.§_-f0§ = null;
         }
         if(this.§_-SV§)
         {
            if(this.§_-e§)
            {
               §_-ia§.§_-vJ§.§_-Tx§(this.§_-SV§);
            }
            this.§_-SV§ = null;
         }
         this.§_-gE§ = null;
      }
      
      public function update(param1:Number) : Boolean
      {
         if(!this.§_-Pj§)
         {
            this.§_-Pj§ = new Sprite();
         }
         this.§_-KJ§ += param1;
         var _loc2_:int = this.§_-gE§.length - 1;
         while(_loc2_ >= 0)
         {
            if(!this.§_-gE§[_loc2_].update(this.§_-KJ§,this.§_-Pj§))
            {
               this.§_-gE§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§_-5L§();
         this.§_-mV§();
         this.§_-ih§();
         return this.§_-KJ§ < this.§_-j-§;
      }
      
      private function §_-ih§() : void
      {
         this.§_-Pj§.x = (§_-2N§.§_-QJ§ / §_-2N§.§_-pv§ * 1024 - 1024) / 2;
         if(this.§_-Wn§)
         {
            this.§_-Wn§.width = (§_-2N§.§_-QJ§ / §_-2N§.§_-pv§ * 1024 - 1024) / 2;
         }
         if(this.§_-Ol§)
         {
            this.§_-Ol§.width = (§_-2N§.§_-QJ§ / §_-2N§.§_-pv§ * 1024 - 1024) / 2;
            this.§_-Ol§.x = -this.§_-Ol§.width;
         }
      }
      
      private function §_-5L§() : void
      {
         var _loc1_:Sprite = null;
         var _loc2_:§_-N§ = null;
         if(this.§_-mW§)
         {
            return;
         }
         if(this.§_-f0§)
         {
            _loc1_ = this.§_-Pj§.getChildByName(§_-C9§.§_-xU§) as Sprite;
            if(_loc1_)
            {
               _loc2_ = new §_-N§(this.§_-f0§);
               _loc2_.width = this.§_-NR§;
               _loc2_.height = this.§_-F0§;
               _loc2_.y = _loc1_.§_-Br§.top;
               _loc1_.addChildAt(_loc2_,0);
            }
         }
         this.§_-mW§ = true;
      }
      
      private function §_-mV§() : void
      {
         var _loc2_:int = 0;
         var _loc3_:§_-N§ = null;
         if(this.§_-WU§)
         {
            return;
         }
         var _loc1_:Sprite = this.§_-Pj§.getChildByName(§_-C9§.§_-xU§) as Sprite;
         if(_loc1_)
         {
            if(this.§_-SV§)
            {
               _loc2_ = Math.ceil((§_-2N§.§_-Uw§ - §_-AR§.§_-Uw§) / 2);
               _loc3_ = new §_-N§(this.§_-SV§);
               _loc3_.width = §_-2N§.§_-ZL§;
               _loc3_.height = _loc2_;
               _loc3_.y = _loc1_.§_-Br§.bottom - §_-AR§.§_-Uw§ - _loc3_.height;
               this.§_-Pj§.addChild(_loc3_);
               _loc3_ = new §_-N§(this.§_-SV§);
               _loc3_.width = §_-2N§.§_-ZL§;
               _loc3_.height = _loc2_;
               _loc3_.y = _loc1_.§_-Br§.bottom;
               this.§_-Pj§.addChild(_loc3_);
               _loc3_ = new §_-N§(this.§_-SV§);
               _loc3_.width = 1;
               _loc3_.height = §_-2N§.§_-Uw§;
               _loc3_.y = _loc1_.§_-Br§.bottom - §_-AR§.§_-Uw§ - _loc2_;
               _loc3_.x = 0;
               this.§_-Ol§ = _loc3_;
               this.§_-Pj§.addChild(_loc3_);
               _loc3_ = new §_-N§(this.§_-SV§);
               _loc3_.width = 1;
               _loc3_.height = §_-2N§.§_-Uw§;
               _loc3_.y = _loc1_.§_-Br§.bottom - §_-AR§.§_-Uw§ - _loc2_;
               _loc3_.x = §_-2N§.§_-ZL§;
               this.§_-Wn§ = _loc3_;
               this.§_-Pj§.addChild(_loc3_);
            }
         }
         this.§_-WU§ = true;
      }
      
      public function clone() : §_-bf§
      {
         var _loc2_:§_-Z8§ = null;
         var _loc1_:§_-bf§ = new §_-bf§(null,null);
         for each(_loc2_ in this.§_-gE§)
         {
            _loc1_.§_-gE§.push(_loc2_.clone());
         }
         _loc1_.§_-KJ§ = this.§_-KJ§;
         _loc1_.§_-j-§ = this.§_-j-§;
         _loc1_.§_-NR§ = this.§_-NR§;
         _loc1_.§_-F0§ = this.§_-F0§;
         _loc1_.§_-0h§ = this.§_-0h§;
         _loc1_.§_-f0§ = this.§_-f0§;
         _loc1_.§_-SV§ = this.§_-SV§;
         _loc1_.§_-2-§ = this.§_-2-§;
         return _loc1_;
      }
      
      public function get §_-OX§() : String
      {
         return this.§_-2-§;
      }
      
      public function set §_-OX§(param1:String) : void
      {
         this.§_-2-§ = param1;
      }
   }
}
