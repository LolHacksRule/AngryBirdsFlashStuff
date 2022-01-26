package §_-Sc§
{
   import §_-Ah§.§_-b§;
   import §_-Bp§.§_-5N§;
   import §_-Q2§.Texture;
   import §_-vO§.Sprite;
   import §_-vO§.§_-OW§;
   import flash.display.BitmapData;
   
   public class §_-eF§
   {
      
      public static const §_-2Y§:String = "CutScene_Type_Intro";
      
      public static const §_-gR§:String = "CutScene_Type_Outro";
      
      public static const §_-Hx§:String = "CutScene_Type_Final_Outro";
       
      
      private var §_-jO§:String;
      
      private var §_-vK§:Vector.<§ case§>;
      
      private var §_-0o§:Number;
      
      private var §_-kD§:Number;
      
      private var §_-x9§:Number;
      
      private var §_-Ql§:Number;
      
      private var §_-0O§:Sprite;
      
      private var §_-oY§:Boolean = true;
      
      private var §_-mi§:Texture;
      
      private var §_-S§:Boolean;
      
      private var §_-dA§:Boolean;
      
      private var §_-1A§:Texture;
      
      private var § in§:Boolean;
      
      private var §_-PL§:Boolean;
      
      private var §_-La§:§_-OW§;
      
      private var §_-Ke§:§_-OW§;
      
      public function §_-eF§(param1:Object, param2:String)
      {
         var _loc3_:§ case§ = null;
         var _loc4_:Object = null;
         this.§_-vK§ = new Vector.<§ case§>();
         super();
         this.§_-0o§ = 0;
         if(param1)
         {
            if(param2.search("intro") != -1)
            {
               this.§_-jO§ = §_-2Y§;
            }
            else if(param2.search("complete") != -1)
            {
               this.§_-jO§ = §_-gR§;
            }
            for each(_loc4_ in param1)
            {
               _loc3_ = this.§_-SG§(_loc4_);
               if(_loc3_)
               {
                  this.§_-vK§.push(_loc3_);
               }
            }
            for each(_loc3_ in this.§_-vK§)
            {
               if(_loc3_ is §_-mS§)
               {
                  (_loc3_ as §_-mS§).§_-b2§(this.§_-x9§,this.§_-Ql§);
                  (_loc3_ as §_-mS§).§_-15§ = this.§_-oY§;
               }
               else if(_loc3_ is §_-Ff§)
               {
                  (_loc3_ as §_-Ff§).§_-b2§(this.§_-x9§,this.§_-Ql§);
                  (_loc3_ as §_-Ff§).§_-J4§ = this.§_-oY§;
               }
            }
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.§_-0O§;
      }
      
      private function §_-SG§(param1:Object) : § case§
      {
         var _loc2_:Object = null;
         var _loc3_:BitmapData = null;
         var _loc4_:uint = 0;
         switch(param1.action)
         {
            case § case§.§_-Ps§:
               return new §_-Ff§(param1.time * 1000,0,param1.name,param1.image,param1.x,param1.y);
            case § case§.§_-rE§:
               _loc2_ = param1.scroll_target;
               if(_loc2_.type == "sprite")
               {
                  return new §_-mS§(param1.time * 1000,param1.duration * 1000,_loc2_.sprite,_loc2_.x,_loc2_.y);
               }
               break;
            case § case§.§_-qV§:
               return new §_-lR§(param1.time * 1000,0,param1.sound,param1.loop,param1.volume,param1.track);
            case § case§.END:
               this.§_-kD§ = param1.time * 1000;
               break;
            case § case§.§_-d6§:
               this.§_-x9§ = param1.width;
               this.§_-Ql§ = param1.height;
               if(!this.§_-1A§)
               {
                  _loc3_ = new BitmapData(16,16,false,4278190080);
                  this.§_-1A§ = §_-5N§.§_-9v§.§_-pE§(_loc3_);
                  this.§_-PL§ = true;
                  break;
               }
               break;
            case § case§.§_-p6§:
               this.§_-oY§ = false;
               break;
            case § case§.§_-bH§:
               this.§_-oY§ = true;
               break;
            case § case§.§_-Ed§:
               if(!this.§_-mi§)
               {
                  _loc4_ = (param1.r << 16) + (param1.g << 8) + param1.b + (255 << 24);
                  this.§_-mi§ = §_-5N§.§_-9v§.§_-pE§(new BitmapData(64,64,false,_loc4_));
                  this.§_-dA§ = true;
                  break;
               }
         }
         return null;
      }
      
      public function dispose() : void
      {
         if(this.§_-0O§)
         {
            this.§_-0O§.dispose();
            this.§_-0O§ = null;
         }
         if(this.§_-mi§)
         {
            if(this.§_-dA§)
            {
               §_-5N§.§_-9v§.§finally§(this.§_-mi§);
            }
            this.§_-mi§ = null;
         }
         if(this.§_-1A§)
         {
            if(this.§_-PL§)
            {
               §_-5N§.§_-9v§.§finally§(this.§_-1A§);
            }
            this.§_-1A§ = null;
         }
         this.§_-vK§ = null;
      }
      
      public function update(param1:Number) : Boolean
      {
         if(!this.§_-0O§)
         {
            this.§_-0O§ = new Sprite();
         }
         this.§_-0o§ += param1;
         var _loc2_:int = this.§_-vK§.length - 1;
         while(_loc2_ >= 0)
         {
            if(!this.§_-vK§[_loc2_].update(this.§_-0o§,this.§_-0O§))
            {
               this.§_-vK§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§_-Ov§();
         this.§_-s4§();
         this.§_-Ig§();
         return this.§_-0o§ < this.§_-kD§;
      }
      
      private function §_-Ig§() : void
      {
         this.§_-0O§.x = (§_-b§.§_-X4§ / §_-b§.§_-Hu§ * 1024 - 1024) / 2;
         if(this.§_-Ke§)
         {
            this.§_-Ke§.width = (§_-b§.§_-X4§ / §_-b§.§_-Hu§ * 1024 - 1024) / 2;
         }
         if(this.§_-La§)
         {
            this.§_-La§.width = (§_-b§.§_-X4§ / §_-b§.§_-Hu§ * 1024 - 1024) / 2;
            this.§_-La§.x = -this.§_-La§.width;
         }
      }
      
      private function §_-Ov§() : void
      {
         var _loc1_:Sprite = null;
         var _loc2_:§_-OW§ = null;
         if(this.§_-S§)
         {
            return;
         }
         if(this.§_-mi§)
         {
            _loc1_ = this.§_-0O§.getChildByName(§_-Ff§.§_-mg§) as Sprite;
            if(_loc1_)
            {
               _loc2_ = new §_-OW§(this.§_-mi§);
               _loc2_.width = this.§_-x9§;
               _loc2_.height = this.§_-Ql§;
               _loc2_.y = _loc1_.§_-bC§.top;
               _loc1_.addChildAt(_loc2_,0);
            }
         }
         this.§_-S§ = true;
      }
      
      private function §_-s4§() : void
      {
         var _loc2_:int = 0;
         var _loc3_:§_-OW§ = null;
         if(this.§ in§)
         {
            return;
         }
         var _loc1_:Sprite = this.§_-0O§.getChildByName(§_-Ff§.§_-mg§) as Sprite;
         if(_loc1_)
         {
            if(this.§_-1A§)
            {
               _loc2_ = Math.ceil((§_-b§.§_-q§ - §_-mS§.§_-q§) / 2);
               _loc3_ = new §_-OW§(this.§_-1A§);
               _loc3_.width = §_-b§.§_-iX§;
               _loc3_.height = _loc2_;
               _loc3_.y = _loc1_.§_-bC§.bottom - §_-mS§.§_-q§ - _loc3_.height;
               this.§_-0O§.addChild(_loc3_);
               _loc3_ = new §_-OW§(this.§_-1A§);
               _loc3_.width = §_-b§.§_-iX§;
               _loc3_.height = _loc2_;
               _loc3_.y = _loc1_.§_-bC§.bottom;
               this.§_-0O§.addChild(_loc3_);
               _loc3_ = new §_-OW§(this.§_-1A§);
               _loc3_.width = 1;
               _loc3_.height = §_-b§.§_-q§;
               _loc3_.y = _loc1_.§_-bC§.bottom - §_-mS§.§_-q§ - _loc2_;
               _loc3_.x = 0;
               this.§_-La§ = _loc3_;
               this.§_-0O§.addChild(_loc3_);
               _loc3_ = new §_-OW§(this.§_-1A§);
               _loc3_.width = 1;
               _loc3_.height = §_-b§.§_-q§;
               _loc3_.y = _loc1_.§_-bC§.bottom - §_-mS§.§_-q§ - _loc2_;
               _loc3_.x = §_-b§.§_-iX§;
               this.§_-Ke§ = _loc3_;
               this.§_-0O§.addChild(_loc3_);
            }
         }
         this.§ in§ = true;
      }
      
      public function clone() : §_-eF§
      {
         var _loc2_:§ case§ = null;
         var _loc1_:§_-eF§ = new §_-eF§(null,null);
         for each(_loc2_ in this.§_-vK§)
         {
            _loc1_.§_-vK§.push(_loc2_.clone());
         }
         _loc1_.§_-0o§ = this.§_-0o§;
         _loc1_.§_-kD§ = this.§_-kD§;
         _loc1_.§_-x9§ = this.§_-x9§;
         _loc1_.§_-Ql§ = this.§_-Ql§;
         _loc1_.§_-oY§ = this.§_-oY§;
         _loc1_.§_-mi§ = this.§_-mi§;
         _loc1_.§_-1A§ = this.§_-1A§;
         _loc1_.§_-jO§ = this.§_-jO§;
         return _loc1_;
      }
      
      public function get §_-GY§() : String
      {
         return this.§_-jO§;
      }
      
      public function set §_-GY§(param1:String) : void
      {
         this.§_-jO§ = param1;
      }
   }
}
