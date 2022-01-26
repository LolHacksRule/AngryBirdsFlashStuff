package §_-wH§
{
   import §_-1P§.§_-3p§;
   import §_-Hw§.§_-3C§;
   import §_-S4§.Texture;
   import §_-pF§.Sprite;
   import §_-pF§.§_-gY§;
   import flash.display.BitmapData;
   
   public class §_-6w§
   {
      
      public static const §_-gO§:String = "CutScene_Type_Intro";
      
      public static const §_-72§:String = "CutScene_Type_Outro";
      
      public static const §_-l2§:String = "CutScene_Type_Final_Outro";
       
      
      private var §_-un§:String;
      
      private var §_-4i§:Vector.<§_-Xc§>;
      
      private var §_-lw§:Number;
      
      private var §_-4u§:Number;
      
      private var §_-Fy§:Number;
      
      private var §_-XU§:Number;
      
      private var §_-C8§:Sprite;
      
      private var §_-Yo§:Boolean = true;
      
      private var §_-mc§:Texture;
      
      private var §_-ik§:Boolean;
      
      private var §_-QP§:Boolean;
      
      private var §_-Pe§:Texture;
      
      private var §_-4D§:Boolean;
      
      private var §_-gy§:Boolean;
      
      private var §_-gb§:§_-gY§;
      
      private var §_-pS§:§_-gY§;
      
      public function §_-6w§(param1:Object, param2:String)
      {
         var _loc3_:§_-Xc§ = null;
         var _loc4_:Object = null;
         this.§_-4i§ = new Vector.<§_-Xc§>();
         super();
         this.§_-lw§ = 0;
         if(param1)
         {
            if(param2.search("intro") != -1)
            {
               this.§_-un§ = §_-gO§;
            }
            else if(param2.search("complete") != -1)
            {
               this.§_-un§ = §_-72§;
            }
            for each(_loc4_ in param1)
            {
               _loc3_ = this.§_-hL§(_loc4_);
               if(_loc3_)
               {
                  this.§_-4i§.push(_loc3_);
               }
            }
            for each(_loc3_ in this.§_-4i§)
            {
               if(_loc3_ is § each§)
               {
                  (_loc3_ as § each§).§_-7r§(this.§_-Fy§,this.§_-XU§);
                  (_loc3_ as § each§).§_-d-§ = this.§_-Yo§;
               }
               else if(_loc3_ is §_-oH§)
               {
                  (_loc3_ as §_-oH§).§_-7r§(this.§_-Fy§,this.§_-XU§);
                  (_loc3_ as §_-oH§).§_-e9§ = this.§_-Yo§;
               }
            }
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.§_-C8§;
      }
      
      private function §_-hL§(param1:Object) : §_-Xc§
      {
         var _loc2_:Object = null;
         var _loc3_:BitmapData = null;
         var _loc4_:uint = 0;
         switch(param1.action)
         {
            case §_-Xc§.§_-kj§:
               return new §_-oH§(param1.time * 1000,0,param1.name,param1.image,param1.x,param1.y);
            case §_-Xc§.§_-rx§:
               _loc2_ = param1.scroll_target;
               if(_loc2_.type == "sprite")
               {
                  return new § each§(param1.time * 1000,param1.duration * 1000,_loc2_.sprite,_loc2_.x,_loc2_.y);
               }
               break;
            case §_-Xc§.§_-G0§:
               return new §_-WQ§(param1.time * 1000,0,param1.sound,param1.loop,param1.volume,param1.track);
            case §_-Xc§.END:
               this.§_-4u§ = param1.time * 1000;
               break;
            case §_-Xc§.§_-HD§:
               this.§_-Fy§ = param1.width;
               this.§_-XU§ = param1.height;
               if(!this.§_-Pe§)
               {
                  _loc3_ = new BitmapData(16,16,false,4278190080);
                  this.§_-Pe§ = §_-3p§.§_-WK§.§_-8R§(_loc3_);
                  this.§_-gy§ = true;
                  break;
               }
               break;
            case §_-Xc§.§_-Mf§:
               this.§_-Yo§ = false;
               break;
            case §_-Xc§.§_-BP§:
               this.§_-Yo§ = true;
               break;
            case §_-Xc§.§_-Xb§:
               if(!this.§_-mc§)
               {
                  _loc4_ = (param1.r << 16) + (param1.g << 8) + param1.b + (255 << 24);
                  this.§_-mc§ = §_-3p§.§_-WK§.§_-8R§(new BitmapData(64,64,false,_loc4_));
                  this.§_-QP§ = true;
                  break;
               }
         }
         return null;
      }
      
      public function dispose() : void
      {
         if(this.§_-C8§)
         {
            this.§_-C8§.dispose();
            this.§_-C8§ = null;
         }
         if(this.§_-mc§)
         {
            if(this.§_-QP§)
            {
               §_-3p§.§_-WK§.§_-8o§(this.§_-mc§);
            }
            this.§_-mc§ = null;
         }
         if(this.§_-Pe§)
         {
            if(this.§_-gy§)
            {
               §_-3p§.§_-WK§.§_-8o§(this.§_-Pe§);
            }
            this.§_-Pe§ = null;
         }
         this.§_-4i§ = null;
      }
      
      public function update(param1:Number) : Boolean
      {
         if(!this.§_-C8§)
         {
            this.§_-C8§ = new Sprite();
         }
         this.§_-lw§ += param1;
         var _loc2_:int = this.§_-4i§.length - 1;
         while(_loc2_ >= 0)
         {
            if(!this.§_-4i§[_loc2_].update(this.§_-lw§,this.§_-C8§))
            {
               this.§_-4i§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§_-46§();
         this.§_-17§();
         this.§_-aw§();
         return this.§_-lw§ < this.§_-4u§;
      }
      
      private function §_-aw§() : void
      {
         this.§_-C8§.x = (§_-3C§.§_-pu§ / §_-3C§.§_-Wc§ * 1024 - 1024) / 2;
         if(this.§_-pS§)
         {
            this.§_-pS§.width = (§_-3C§.§_-pu§ / §_-3C§.§_-Wc§ * 1024 - 1024) / 2;
         }
         if(this.§_-gb§)
         {
            this.§_-gb§.width = (§_-3C§.§_-pu§ / §_-3C§.§_-Wc§ * 1024 - 1024) / 2;
            this.§_-gb§.x = -this.§_-gb§.width;
         }
      }
      
      private function §_-46§() : void
      {
         var _loc1_:Sprite = null;
         var _loc2_:§_-gY§ = null;
         if(this.§_-ik§)
         {
            return;
         }
         if(this.§_-mc§)
         {
            _loc1_ = this.§_-C8§.getChildByName(§_-oH§.§_-2-§) as Sprite;
            if(_loc1_)
            {
               _loc2_ = new §_-gY§(this.§_-mc§);
               _loc2_.width = this.§_-Fy§;
               _loc2_.height = this.§_-XU§;
               _loc2_.y = _loc1_.§_-gh§.top;
               _loc1_.addChildAt(_loc2_,0);
            }
         }
         this.§_-ik§ = true;
      }
      
      private function §_-17§() : void
      {
         var _loc2_:int = 0;
         var _loc3_:§_-gY§ = null;
         if(this.§_-4D§)
         {
            return;
         }
         var _loc1_:Sprite = this.§_-C8§.getChildByName(§_-oH§.§_-2-§) as Sprite;
         if(_loc1_)
         {
            if(this.§_-Pe§)
            {
               _loc2_ = Math.ceil((§_-3C§.§_-mI§ - § each§.§_-mI§) / 2);
               _loc3_ = new §_-gY§(this.§_-Pe§);
               _loc3_.width = §_-3C§.§_-dN§;
               _loc3_.height = _loc2_;
               _loc3_.y = _loc1_.§_-gh§.bottom - § each§.§_-mI§ - _loc3_.height;
               this.§_-C8§.addChild(_loc3_);
               _loc3_ = new §_-gY§(this.§_-Pe§);
               _loc3_.width = §_-3C§.§_-dN§;
               _loc3_.height = _loc2_;
               _loc3_.y = _loc1_.§_-gh§.bottom;
               this.§_-C8§.addChild(_loc3_);
               _loc3_ = new §_-gY§(this.§_-Pe§);
               _loc3_.width = 1;
               _loc3_.height = §_-3C§.§_-mI§;
               _loc3_.y = _loc1_.§_-gh§.bottom - § each§.§_-mI§ - _loc2_;
               _loc3_.x = 0;
               this.§_-gb§ = _loc3_;
               this.§_-C8§.addChild(_loc3_);
               _loc3_ = new §_-gY§(this.§_-Pe§);
               _loc3_.width = 1;
               _loc3_.height = §_-3C§.§_-mI§;
               _loc3_.y = _loc1_.§_-gh§.bottom - § each§.§_-mI§ - _loc2_;
               _loc3_.x = §_-3C§.§_-dN§;
               this.§_-pS§ = _loc3_;
               this.§_-C8§.addChild(_loc3_);
            }
         }
         this.§_-4D§ = true;
      }
      
      public function clone() : §_-6w§
      {
         var _loc2_:§_-Xc§ = null;
         var _loc1_:§_-6w§ = new §_-6w§(null,null);
         for each(_loc2_ in this.§_-4i§)
         {
            _loc1_.§_-4i§.push(_loc2_.clone());
         }
         _loc1_.§_-lw§ = this.§_-lw§;
         _loc1_.§_-4u§ = this.§_-4u§;
         _loc1_.§_-Fy§ = this.§_-Fy§;
         _loc1_.§_-XU§ = this.§_-XU§;
         _loc1_.§_-Yo§ = this.§_-Yo§;
         _loc1_.§_-mc§ = this.§_-mc§;
         _loc1_.§_-Pe§ = this.§_-Pe§;
         _loc1_.§_-un§ = this.§_-un§;
         return _loc1_;
      }
      
      public function get §_-IB§() : String
      {
         return this.§_-un§;
      }
      
      public function set §_-IB§(param1:String) : void
      {
         this.§_-un§ = param1;
      }
   }
}
