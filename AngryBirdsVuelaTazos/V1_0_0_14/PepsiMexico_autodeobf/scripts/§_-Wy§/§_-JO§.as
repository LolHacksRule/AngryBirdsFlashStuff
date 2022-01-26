package §_-Wy§
{
   import §_-DQ§.Texture;
   import §_-M0§.§_-u4§;
   import §_-PC§.§_-lx§;
   import §_-b5§.Sprite;
   import §_-b5§.§_-HK§;
   import §_-b5§.§_-Xj§;
   import flash.display.BitmapData;
   
   public class §_-JO§
   {
      
      public static const §_-v8§:String = "CutScene_Type_Intro";
      
      public static const §_-pZ§:String = "CutScene_Type_Outro";
      
      public static const §_-97§:String = "CutScene_Type_Final_Outro";
       
      
      private var §_-LT§:String;
      
      private var §_-FA§:Vector.<§_-W5§>;
      
      private var §_-IJ§:Number;
      
      private var §_-tS§:Number;
      
      private var §_-U0§:Number;
      
      private var §_-bN§:Number;
      
      private var §_-MT§:Sprite;
      
      private var §_-NV§:Boolean = true;
      
      private var §_-7p§:uint;
      
      private var §_-uE§:Texture;
      
      private var §true§:Boolean;
      
      private var §_-1B§:Boolean;
      
      private var §_-it§:§_-Xj§;
      
      private var §_-6T§:§_-Xj§;
      
      public function §_-JO§(param1:Object, param2:String)
      {
         var _loc3_:§_-W5§ = null;
         var _loc4_:Object = null;
         this.§_-FA§ = new Vector.<§_-W5§>();
         super();
         this.§_-IJ§ = 0;
         if(param1)
         {
            if(param2.search("intro") != -1)
            {
               this.§_-LT§ = §_-v8§;
            }
            else if(param2.search("complete") != -1)
            {
               this.§_-LT§ = §_-pZ§;
            }
            for each(_loc4_ in param1)
            {
               _loc3_ = this.§_-Wj§(_loc4_);
               if(_loc3_)
               {
                  this.§_-FA§.push(_loc3_);
               }
            }
            for each(_loc3_ in this.§_-FA§)
            {
               if(_loc3_ is §_-o8§)
               {
                  (_loc3_ as §_-o8§).§_-iH§(this.§_-U0§,this.§_-bN§);
                  (_loc3_ as §_-o8§).§_-yT§ = this.§_-NV§;
               }
               else if(_loc3_ is §_-Ek§)
               {
                  (_loc3_ as §_-Ek§).§_-iH§(this.§_-U0§,this.§_-bN§);
                  (_loc3_ as §_-Ek§).§_-wP§ = this.§_-NV§;
               }
            }
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.§_-MT§;
      }
      
      private function §_-Wj§(param1:Object) : §_-W5§
      {
         var _loc2_:Object = null;
         var _loc3_:BitmapData = null;
         switch(param1.action)
         {
            case §_-W5§.§_-FU§:
               return new §_-Ek§(param1.time * 1000,0,param1.name,param1.image,param1.x,param1.y);
            case §_-W5§.§_-3e§:
               _loc2_ = param1.scroll_target;
               if(_loc2_.type == "sprite")
               {
                  return new §_-o8§(param1.time * 1000,param1.duration * 1000,_loc2_.sprite,_loc2_.x,_loc2_.y);
               }
               break;
            case §_-W5§.§_-Sy§:
               return new §_-vW§(param1.time * 1000,0,param1.sound,param1.loop,param1.volume,param1.track);
            case §_-W5§.END:
               this.§_-tS§ = param1.time * 1000;
               break;
            case §_-W5§.§_-Rd§:
               this.§_-U0§ = param1.width;
               this.§_-bN§ = param1.height;
               if(!this.§_-uE§)
               {
                  _loc3_ = new BitmapData(16,16,false,4278190080);
                  this.§_-uE§ = §_-lx§.§_-aP§.§_-a§(_loc3_);
                  this.§_-1B§ = true;
                  break;
               }
               break;
            case §_-W5§.§_-qm§:
               this.§_-NV§ = false;
               break;
            case §_-W5§.§_-TH§:
               this.§_-NV§ = true;
               break;
            case §_-W5§.§_-gd§:
               this.§_-7p§ = (param1.r << 16) + (param1.g << 8) + param1.b + (255 << 24);
         }
         return null;
      }
      
      public function dispose() : void
      {
         if(this.§_-MT§)
         {
            this.§_-MT§.dispose();
            this.§_-MT§ = null;
         }
         if(this.§_-uE§)
         {
            if(this.§_-1B§)
            {
               §_-lx§.§_-aP§.§try§(this.§_-uE§);
            }
            this.§_-uE§ = null;
         }
         this.§_-FA§ = null;
      }
      
      public function update(param1:Number) : Boolean
      {
         if(!this.§_-MT§)
         {
            this.§_-MT§ = new Sprite();
         }
         this.§_-IJ§ += param1;
         var _loc2_:int = this.§_-FA§.length - 1;
         while(_loc2_ >= 0)
         {
            if(!this.§_-FA§[_loc2_].update(this.§_-IJ§,this.§_-MT§))
            {
               this.§_-FA§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§_-9i§();
         this.§_-sP§();
         this.§_-aS§();
         return this.§_-IJ§ < this.§_-tS§;
      }
      
      private function §_-aS§() : void
      {
         this.§_-MT§.x = (§_-u4§.§_-cS§ / §_-u4§.§_-Ps§ * 1024 - 1024) / 2;
         if(this.§_-6T§)
         {
            this.§_-6T§.width = (§_-u4§.§_-cS§ / §_-u4§.§_-Ps§ * 1024 - 1024) / 2;
         }
         if(this.§_-it§)
         {
            this.§_-it§.width = (§_-u4§.§_-cS§ / §_-u4§.§_-Ps§ * 1024 - 1024) / 2;
            this.§_-it§.x = -this.§_-it§.width;
         }
      }
      
      private function §_-9i§() : void
      {
         var _loc2_:§_-HK§ = null;
         var _loc1_:Sprite = this.§_-MT§.getChildByName(§_-Ek§.§_-7H§) as Sprite;
         if(_loc1_)
         {
            _loc2_ = new §_-HK§(this.§_-U0§,this.§_-bN§,this.§_-7p§);
            _loc2_.y = _loc1_.§_-8N§.top;
            _loc1_.addChildAt(_loc2_,0);
         }
      }
      
      private function §_-sP§() : void
      {
         var _loc2_:int = 0;
         var _loc3_:§_-Xj§ = null;
         if(this.§true§)
         {
            return;
         }
         var _loc1_:Sprite = this.§_-MT§.getChildByName(§_-Ek§.§_-7H§) as Sprite;
         if(_loc1_)
         {
            if(this.§_-uE§)
            {
               _loc2_ = 1 + Math.ceil((§_-u4§.§_-ho§ - §_-o8§.§_-ho§) / 2);
               _loc3_ = new §_-Xj§(this.§_-uE§);
               _loc3_.width = §_-u4§.§_-4r§;
               _loc3_.height = _loc2_;
               _loc3_.y = _loc1_.§_-8N§.bottom - §_-o8§.§_-ho§ - _loc3_.height;
               this.§_-MT§.addChild(_loc3_);
               _loc3_ = new §_-Xj§(this.§_-uE§);
               _loc3_.width = §_-u4§.§_-4r§;
               _loc3_.height = _loc2_;
               _loc3_.y = _loc1_.§_-8N§.bottom - 1;
               this.§_-MT§.addChild(_loc3_);
               _loc3_ = new §_-Xj§(this.§_-uE§);
               _loc3_.width = 1;
               _loc3_.height = §_-u4§.§_-ho§;
               _loc3_.y = _loc1_.§_-8N§.bottom - §_-o8§.§_-ho§ - _loc2_;
               _loc3_.x = 0;
               this.§_-it§ = _loc3_;
               this.§_-MT§.addChild(_loc3_);
               _loc3_ = new §_-Xj§(this.§_-uE§);
               _loc3_.width = 1;
               _loc3_.height = §_-u4§.§_-ho§;
               _loc3_.y = _loc1_.§_-8N§.bottom - §_-o8§.§_-ho§ - _loc2_;
               _loc3_.x = §_-u4§.§_-4r§;
               this.§_-6T§ = _loc3_;
               this.§_-MT§.addChild(_loc3_);
            }
         }
         this.§true§ = true;
      }
      
      public function clone() : §_-JO§
      {
         var _loc2_:§_-W5§ = null;
         var _loc1_:§_-JO§ = new §_-JO§(null,null);
         for each(_loc2_ in this.§_-FA§)
         {
            _loc1_.§_-FA§.push(_loc2_.clone());
         }
         _loc1_.§_-IJ§ = this.§_-IJ§;
         _loc1_.§_-tS§ = this.§_-tS§;
         _loc1_.§_-U0§ = this.§_-U0§;
         _loc1_.§_-bN§ = this.§_-bN§;
         _loc1_.§_-NV§ = this.§_-NV§;
         _loc1_.§_-7p§ = this.§_-7p§;
         _loc1_.§_-uE§ = this.§_-uE§;
         _loc1_.§_-LT§ = this.§_-LT§;
         return _loc1_;
      }
      
      public function get §_-Q9§() : String
      {
         return this.§_-LT§;
      }
      
      public function set §_-Q9§(param1:String) : void
      {
         this.§_-LT§ = param1;
      }
   }
}
