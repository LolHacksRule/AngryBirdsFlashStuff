package §_-8r§
{
   import §_-5p§.§_-Kf§;
   import §_-Ls§.DisplayObject;
   import §_-Ls§.Sprite;
   import §_-Ls§.§_-nY§;
   import §_-T8§.§_-GI§;
   import §_-TC§.§_-uk§;
   import §_-U0§.§_-tF§;
   import §_-cb§.§_-0B§;
   import §_-cb§.§_-E1§;
   import §_-gL§.§_-UR§;
   import §_-gL§.§_-ui§;
   import §_-gL§.§_-w6§;
   import §_-vB§.§_-Kk§;
   
   public class §_-oK§
   {
      
      public static const §_-M2§:Boolean = true;
       
      
      private var §_-S7§:§_-Kf§;
      
      private var §_-DE§:§_-w6§;
      
      private var §_-EE§:Vector.<§_-C1§>;
      
      private var §_-Jc§:Sprite;
      
      private var §_-dE§:Sprite;
      
      private var §_-0-4§:Sprite;
      
      private var §_-W1§:Number;
      
      private var §_-LJ§:Number;
      
      private var §_-45§:Number;
      
      private var §_-t4§:Boolean = true;
      
      private var §_-js§:Boolean = true;
      
      private var §_-tJ§:§_-E1§;
      
      private var §_-1E§:Number;
      
      public function §_-oK§(param1:String, param2:Number, param3:§_-Kf§, param4:Number)
      {
         this.§_-EE§ = new Vector.<§_-C1§>();
         super();
         this.§_-S7§ = param3;
         this.§_-LJ§ = 0;
         this.§_-45§ = 0;
         this.§_-W1§ = param2;
         this.§_-Jc§ = new Sprite();
         this.§_-dE§ = new Sprite();
         this.§_-0-4§ = new Sprite();
         this.§_-1E§ = param4;
         this.§_-xZ§(param1,param4);
      }
      
      public function get §_-7R§() : Boolean
      {
         return this.§_-t4§;
      }
      
      public function get §_-1D§() : Sprite
      {
         return this.§_-0-4§;
      }
      
      public function get §_-cU§() : Sprite
      {
         return this.§_-Jc§;
      }
      
      public function get §_-XX§() : Sprite
      {
         return this.§_-dE§;
      }
      
      protected function get §_-aJ§() : §_-Kf§
      {
         return this.§_-S7§;
      }
      
      public function dispose() : void
      {
         this.§_-n9§();
         if(this.§_-Jc§)
         {
            this.§_-Jc§.dispose();
            this.§_-Jc§ = null;
         }
         if(this.§_-dE§)
         {
            this.§_-dE§.dispose();
            this.§_-dE§ = null;
         }
         if(this.§_-0-4§)
         {
            this.§_-0-4§.dispose();
            this.§_-0-4§ = null;
         }
      }
      
      public function §_-5r§() : Boolean
      {
         return this.§_-js§;
      }
      
      public function §_-1m§(param1:Boolean) : void
      {
         if(this.§_-js§ == param1)
         {
            return;
         }
         this.§_-js§ = param1;
         if(!param1)
         {
            this.§_-n9§();
         }
         else
         {
            this.§_-xZ§(this.§_-DE§.mName,this.§_-1E§);
         }
      }
      
      public function §_-cc§() : String
      {
         return this.§_-DE§.§_-6q§;
      }
      
      private function §_-n9§() : void
      {
         while(this.§_-dE§.numChildren > 0)
         {
            this.§_-dE§.removeChildAt(0,true);
         }
         while(this.§_-Jc§.numChildren > 0)
         {
            this.§_-Jc§.removeChildAt(0,true);
         }
         while(this.§_-EE§.length > 0)
         {
            this.§_-EE§.pop().dispose();
         }
      }
      
      private function §_-xZ§(param1:String, param2:Number) : void
      {
         var _loc4_:§_-ui§ = null;
         var _loc5_:Sprite = null;
         var _loc6_:§_-C1§ = null;
         this.§_-DE§ = §_-UR§.§_-ON§(param1);
         if(this.§_-DE§ == null)
         {
            §_-tF§.log("UNKNOWN LEVEL THEME! " + param1);
            param1 = §_-GI§.§_-7c§;
            this.§_-DE§ = §_-UR§.§_-ON§(param1);
         }
         this.§_-Jc§.y = this.§_-W1§;
         this.§_-dE§.y = this.§_-W1§;
         this.§_-0-4§.y = this.§_-W1§;
         this.§_-Yf§();
         var _loc3_:int = 0;
         while(_loc3_ < this.§_-DE§.§_-EE§.length)
         {
            _loc4_ = this.§_-DE§.§_-EE§[_loc3_];
            if(!§_-Kk§.§_-GU§ || !_loc4_.§_-vd§)
            {
               _loc5_ = new Sprite();
               _loc6_ = new §_-C1§(_loc4_,_loc5_,this.§_-S7§,param2);
               this.§_-EE§.push(_loc6_);
               if(_loc6_.§_-Ps§)
               {
                  this.§_-dE§.addChild(_loc5_);
               }
               else
               {
                  this.§_-Jc§.addChild(_loc5_);
               }
            }
            else if(_loc4_.final)
            {
               this.§_-VN§(parseInt(_loc4_.final,16));
            }
            _loc3_++;
         }
      }
      
      private function §_-Yf§() : void
      {
         var _loc1_:§_-nY§ = null;
         if(this.§_-DE§.§_-7e§)
         {
            this.§_-VN§(this.§_-DE§.§_-7e§);
         }
         if(this.§_-DE§.§_-0-t§)
         {
            _loc1_ = this.§_-tv§(uint(this.§_-DE§.§_-0-t§));
            _loc1_.y = 0;
            this.§_-0-4§.addChild(_loc1_);
         }
      }
      
      protected function §_-tv§(param1:uint) : §_-nY§
      {
         return new §_-nY§(4096,4096,param1);
      }
      
      private function §_-VN§(param1:int) : void
      {
         if(§_-Kk§.§_-NR§)
         {
            §_-Kk§.§_-NR§.color = param1;
         }
      }
      
      public function §_-gt§(param1:String) : void
      {
         this.§_-n9§();
         §_-tF§.log("Switch background! NEW BACKGROUND NAME = " + param1);
         this.§_-xZ§(param1,this.§_-1E§);
      }
      
      public function §_-ww§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:§_-C1§ = null;
         if(param1 == this.§_-t4§)
         {
            return;
         }
         this.§_-t4§ = param1;
         for each(_loc3_ in this.§_-EE§)
         {
            _loc3_.§_-ww§(param1);
         }
      }
      
      public function §_-QR§() : void
      {
         if(§_-0B§.§_-dO§("CHANNEL_AMBIENT") == null || !§_-0B§.§_-dO§("CHANNEL_AMBIENT").§_-5k§())
         {
            §_-0B§.playSound(this.§_-DE§.§_-zm§,"CHANNEL_AMBIENT",999);
         }
      }
      
      public function §_-kA§() : void
      {
         §_-0B§.§_-f8§("CHANNEL_AMBIENT");
      }
      
      public function §_-gR§(param1:Number) : void
      {
         var _loc2_:DisplayObject = null;
         if(param1 < this.§_-Jc§.numChildren)
         {
            _loc2_ = this.§_-Jc§.getChildAt(param1);
         }
         else if(param1 - this.§_-Jc§.numChildren < this.§_-dE§.numChildren)
         {
            _loc2_ = this.§_-dE§.getChildAt(param1 - this.§_-Jc§.numChildren);
         }
         if(_loc2_)
         {
            _loc2_.visible = !_loc2_.visible;
         }
      }
      
      public function § for§(param1:Number, param2:Number) : void
      {
         var _loc3_:int = 0;
         this.§_-LJ§ = param1;
         this.§_-45§ = param2;
         if(this.§_-EE§ != null)
         {
            _loc3_ = 0;
            while(_loc3_ < this.§_-EE§.length)
            {
               this.§_-EE§[_loc3_].setSideScroll(this.§_-LJ§,this.§_-45§);
               _loc3_++;
            }
         }
         if(this.§_-0-4§ != null)
         {
            this.§_-0-4§.scaleX = this.§_-0-4§.scaleY = 1 / §_-uk§.§_-gJ§;
            this.§_-0-4§.x = -§_-uk§.§_-j4§ * (1 / §_-uk§.§_-gJ§);
            this.§_-0-4§.y = this.§_-W1§ - this.§_-45§;
         }
      }
      
      public function §_-7f§() : String
      {
         return this.§_-DE§.mName;
      }
      
      public function update(param1:Number) : void
      {
      }
   }
}
