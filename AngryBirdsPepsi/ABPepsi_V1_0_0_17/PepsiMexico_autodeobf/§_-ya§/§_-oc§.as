package §_-ya§
{
   import §_-4g§.Texture;
   import §_-LP§.Sprite;
   import §_-LP§.§_-19§;
   import §_-LP§.§_-rC§;
   import §_-Ra§.§_-2X§;
   import §_-hU§.§_-MB§;
   import flash.display.BitmapData;
   
   public class §_-oc§
   {
      
      public static const §_-Z8§:String = "CutScene_Type_Intro";
      
      public static const §_-A9§:String = "CutScene_Type_Outro";
      
      public static const §_-Qf§:String = "CutScene_Type_Final_Outro";
       
      
      private var §_-Uc§:String;
      
      private var §_-x9§:Vector.<§_-ga§>;
      
      private var §_-c0§:Number;
      
      private var §_-yT§:Number;
      
      private var §_-sa§:Number;
      
      private var §_-cr§:Number;
      
      private var §_-Cv§:Sprite;
      
      private var §_-BX§:Boolean = true;
      
      private var §_-D0§:uint;
      
      private var §_-UR§:Texture;
      
      private var §_-RB§:Boolean;
      
      private var §_-t3§:Boolean;
      
      private var §_-sM§:§_-19§;
      
      private var §_-j0§:§_-19§;
      
      public function §_-oc§(param1:Object, param2:String)
      {
         var _loc3_:§_-ga§ = null;
         var _loc4_:Object = null;
         this.§_-x9§ = new Vector.<§_-ga§>();
         super();
         this.§_-c0§ = 0;
         if(param1)
         {
            if(param2.search("intro") != -1)
            {
               this.§_-Uc§ = §_-Z8§;
            }
            else if(param2.search("complete") != -1)
            {
               this.§_-Uc§ = §_-A9§;
            }
            for each(_loc4_ in param1)
            {
               _loc3_ = this.§_-c§(_loc4_);
               if(_loc3_)
               {
                  this.§_-x9§.push(_loc3_);
               }
            }
            for each(_loc3_ in this.§_-x9§)
            {
               if(_loc3_ is §_-tW§)
               {
                  (_loc3_ as §_-tW§).§_-lX§(this.§_-sa§,this.§_-cr§);
                  (_loc3_ as §_-tW§).§_-OZ§ = this.§_-BX§;
               }
               else if(_loc3_ is §_-fs§)
               {
                  (_loc3_ as §_-fs§).§_-lX§(this.§_-sa§,this.§_-cr§);
                  (_loc3_ as §_-fs§).§_-q6§ = this.§_-BX§;
               }
            }
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.§_-Cv§;
      }
      
      private function §_-c§(param1:Object) : §_-ga§
      {
         var _loc2_:Object = null;
         var _loc3_:BitmapData = null;
         switch(param1.action)
         {
            case §_-ga§.§_-ao§:
               return new §_-fs§(param1.time * 1000,0,param1.name,param1.image,param1.x,param1.y);
            case §_-ga§.§_-8R§:
               _loc2_ = param1.scroll_target;
               if(_loc2_.type == "sprite")
               {
                  return new §_-tW§(param1.time * 1000,param1.duration * 1000,_loc2_.sprite,_loc2_.x,_loc2_.y);
               }
               break;
            case §_-ga§.§_-uz§:
               return new §_-fd§(param1.time * 1000,0,param1.sound,param1.loop,param1.volume,param1.track);
            case §_-ga§.END:
               this.§_-yT§ = param1.time * 1000;
               break;
            case §_-ga§.§_-sO§:
               this.§_-sa§ = param1.width;
               this.§_-cr§ = param1.height;
               if(!this.§_-UR§)
               {
                  _loc3_ = new BitmapData(16,16,false,4278190080);
                  this.§_-UR§ = §_-2X§.§_-mE§.§_-pz§(_loc3_);
                  this.§_-t3§ = true;
               }
               break;
            case §_-ga§.§_-8Q§:
               this.§_-BX§ = false;
               break;
            case §_-ga§.§_-tu§:
               this.§_-BX§ = true;
               break;
            case §_-ga§.§_-1B§:
               this.§_-D0§ = (param1.r << 16) + (param1.g << 8) + param1.b + (255 << 24);
         }
         return null;
      }
      
      public function dispose() : void
      {
         if(this.§_-Cv§)
         {
            this.§_-Cv§.dispose();
            this.§_-Cv§ = null;
         }
         if(this.§_-UR§)
         {
            if(this.§_-t3§)
            {
               §_-2X§.§_-mE§.§_-tO§(this.§_-UR§);
            }
            this.§_-UR§ = null;
         }
         this.§_-x9§ = null;
      }
      
      public function update(param1:Number) : Boolean
      {
         if(!this.§_-Cv§)
         {
            this.§_-Cv§ = new Sprite();
         }
         this.§_-c0§ += param1;
         var _loc2_:int = this.§_-x9§.length - 1;
         while(_loc2_ >= 0)
         {
            if(!this.§_-x9§[_loc2_].update(this.§_-c0§,this.§_-Cv§))
            {
               this.§_-x9§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§_-a9§();
         this.§_-2N§();
         this.§_-RK§();
         return this.§_-c0§ < this.§_-yT§;
      }
      
      private function §_-RK§() : void
      {
         this.§_-Cv§.x = (§_-MB§.§_-Rs§ / §_-MB§.§_-y3§ * 1024 - 1024) / 2;
         if(this.§_-j0§)
         {
            this.§_-j0§.width = (§_-MB§.§_-Rs§ / §_-MB§.§_-y3§ * 1024 - 1024) / 2;
         }
         if(this.§_-sM§)
         {
            this.§_-sM§.width = (§_-MB§.§_-Rs§ / §_-MB§.§_-y3§ * 1024 - 1024) / 2;
            this.§_-sM§.x = -this.§_-sM§.width;
         }
      }
      
      private function §_-a9§() : void
      {
         var _loc2_:§_-rC§ = null;
         var _loc1_:Sprite = this.§_-Cv§.getChildByName(§_-fs§.§_-6G§) as Sprite;
         if(_loc1_)
         {
            _loc2_ = new §_-rC§(this.§_-sa§,this.§_-cr§,this.§_-D0§);
            _loc2_.y = _loc1_.§_-cB§.top;
            _loc1_.addChildAt(_loc2_,0);
         }
      }
      
      private function §_-2N§() : void
      {
         var _loc2_:int = 0;
         var _loc3_:§_-19§ = null;
         if(this.§_-RB§)
         {
            return;
         }
         var _loc1_:Sprite = this.§_-Cv§.getChildByName(§_-fs§.§_-6G§) as Sprite;
         if(_loc1_)
         {
            if(this.§_-UR§)
            {
               _loc2_ = 1 + Math.ceil((§_-MB§.§_-SP§ - §_-tW§.§_-SP§) / 2);
               _loc3_ = new §_-19§(this.§_-UR§);
               _loc3_.width = §_-MB§.§_-1q§;
               _loc3_.height = _loc2_;
               _loc3_.y = _loc1_.§_-cB§.bottom - §_-tW§.§_-SP§ - _loc3_.height;
               this.§_-Cv§.addChild(_loc3_);
               _loc3_ = new §_-19§(this.§_-UR§);
               _loc3_.width = §_-MB§.§_-1q§;
               _loc3_.height = _loc2_;
               _loc3_.y = _loc1_.§_-cB§.bottom - 1;
               this.§_-Cv§.addChild(_loc3_);
               _loc3_ = new §_-19§(this.§_-UR§);
               _loc3_.width = 1;
               _loc3_.height = §_-MB§.§_-SP§;
               _loc3_.y = _loc1_.§_-cB§.bottom - §_-tW§.§_-SP§ - _loc2_;
               _loc3_.x = 0;
               this.§_-sM§ = _loc3_;
               this.§_-Cv§.addChild(_loc3_);
               _loc3_ = new §_-19§(this.§_-UR§);
               _loc3_.width = 1;
               _loc3_.height = §_-MB§.§_-SP§;
               _loc3_.y = _loc1_.§_-cB§.bottom - §_-tW§.§_-SP§ - _loc2_;
               _loc3_.x = §_-MB§.§_-1q§;
               this.§_-j0§ = _loc3_;
               this.§_-Cv§.addChild(_loc3_);
            }
         }
         this.§_-RB§ = true;
      }
      
      public function clone() : §_-oc§
      {
         var _loc2_:§_-ga§ = null;
         var _loc1_:§_-oc§ = new §_-oc§(null,null);
         for each(_loc2_ in this.§_-x9§)
         {
            _loc1_.§_-x9§.push(_loc2_.clone());
         }
         _loc1_.§_-c0§ = this.§_-c0§;
         _loc1_.§_-yT§ = this.§_-yT§;
         _loc1_.§_-sa§ = this.§_-sa§;
         _loc1_.§_-cr§ = this.§_-cr§;
         _loc1_.§_-BX§ = this.§_-BX§;
         _loc1_.§_-D0§ = this.§_-D0§;
         _loc1_.§_-UR§ = this.§_-UR§;
         _loc1_.§_-Uc§ = this.§_-Uc§;
         return _loc1_;
      }
      
      public function get §_-99§() : String
      {
         return this.§_-Uc§;
      }
      
      public function set §_-99§(param1:String) : void
      {
         this.§_-Uc§ = param1;
      }
   }
}
