package §_-ow§
{
   import §_-0y§.§_-Y4§;
   import §_-FZ§.§_-2Q§;
   import §_-FZ§.§_-J2§;
   import §_-KS§.§_-6i§;
   import §_-KS§.§_-ia§;
   import §_-jY§.Texture;
   import §_-oZ§.§_-JH§;
   import §_-oZ§.§_-Yw§;
   import §_-ot§.§_-o6§;
   import §_-se§.DisplayObject;
   import §_-se§.Sprite;
   import §_-se§.§_-N§;
   import flash.display.BitmapData;
   
   public class §_-Mo§
   {
      
      public static const §_-J-§:Boolean = true;
       
      
      private var §_-T9§:§_-6i§;
      
      private var §_-NZ§:§_-ia§;
      
      private var §_-Cm§:§_-J2§;
      
      private var §_-j0§:Vector.<§_-m8§>;
      
      private var §_-be§:Sprite;
      
      private var §_-9z§:Sprite;
      
      private var §_-Qp§:Sprite;
      
      private var §_-54§:Texture;
      
      private var §_-xd§:Sprite;
      
      private var §_-RK§:Texture;
      
      private var §_-uQ§:Number;
      
      private var §_-7z§:Number;
      
      private var §_-3j§:Number;
      
      private var §_-1l§:Boolean = true;
      
      private var §_-Jv§:Boolean = true;
      
      private var §_-34§:§_-Yw§;
      
      public function §_-Mo§(param1:String, param2:Number, param3:§_-6i§, param4:§_-ia§)
      {
         this.§_-j0§ = new Vector.<§_-m8§>();
         super();
         this.§_-T9§ = param3;
         this.§_-NZ§ = param4;
         this.§_-7z§ = 0;
         this.§_-3j§ = 0;
         this.§_-uQ§ = param2;
         this.§_-be§ = new Sprite();
         this.§_-9z§ = new Sprite();
         this.§_-Qp§ = new Sprite();
         this.§_-xd§ = new Sprite();
         this.§_-JD§(param1);
      }
      
      public function get §_-DY§() : Boolean
      {
         return this.§_-1l§;
      }
      
      public function get §_-Y5§() : Sprite
      {
         return this.§_-Qp§;
      }
      
      public function get §_-hx§() : Sprite
      {
         return this.§_-xd§;
      }
      
      public function get §_-wc§() : Sprite
      {
         return this.§_-be§;
      }
      
      public function get §_-G0§() : Sprite
      {
         return this.§_-9z§;
      }
      
      public function dispose() : void
      {
         this.§_-CU§();
         if(this.§_-be§)
         {
            this.§_-be§.dispose();
            this.§_-be§ = null;
         }
         if(this.§_-9z§)
         {
            this.§_-9z§.dispose();
            this.§_-9z§ = null;
         }
         if(this.§_-Qp§)
         {
            this.§_-Qp§.dispose();
            this.§_-Qp§ = null;
         }
         if(this.§_-xd§)
         {
            this.§_-xd§.dispose();
            this.§_-xd§ = null;
         }
      }
      
      public function §_-Mc§() : Boolean
      {
         return this.§_-Jv§;
      }
      
      public function §_-jx§(param1:Boolean) : void
      {
         if(this.§_-Jv§ == param1)
         {
            return;
         }
         this.§_-Jv§ = param1;
         if(!param1)
         {
            this.§_-CU§();
         }
         else
         {
            this.§_-JD§(this.§_-Cm§.mName);
         }
      }
      
      public function §_-Ji§() : String
      {
         return this.§_-Cm§.§_-MY§;
      }
      
      private function §_-CU§() : void
      {
         while(this.§_-9z§.numChildren > 0)
         {
            this.§_-9z§.removeChildAt(0);
         }
         while(this.§_-be§.numChildren > 0)
         {
            this.§_-be§.removeChildAt(0);
         }
         while(this.§_-j0§.length > 0)
         {
            this.§_-j0§.pop().dispose();
         }
         if(this.§_-54§)
         {
            this.§_-NZ§.§_-Tx§(this.§_-54§);
            this.§_-54§ = null;
         }
         if(this.§_-RK§)
         {
            this.§_-NZ§.§_-Tx§(this.§_-RK§);
            this.§_-RK§ = null;
         }
      }
      
      private function §_-JD§(param1:String) : void
      {
         var _loc3_:Sprite = null;
         this.§_-Cm§ = §_-2Q§.§_-Z1§(param1);
         if(this.§_-Cm§ == null)
         {
            §_-o6§.log("UNKNOWN LEVEL THEME! " + param1);
            param1 = "BACKGROUND_BLUE_GRASS";
            this.§_-Cm§ = §_-2Q§.§_-Z1§("BACKGROUND_BLUE_GRASS");
         }
         this.§_-be§.y = this.§_-uQ§;
         this.§_-9z§.y = this.§_-uQ§;
         this.§_-Qp§.y = this.§_-uQ§;
         this.§_-xd§.y = this.§_-uQ§;
         this.§_-Kg§();
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-Cm§.§_-j0§.length)
         {
            _loc3_ = new Sprite();
            this.§_-j0§[_loc2_] = new §_-m8§(this.§_-Cm§.§_-j0§[_loc2_],_loc3_,this.§_-NZ§);
            if(this.§_-j0§[_loc2_].isForegroundLayer)
            {
               this.§_-9z§.addChild(_loc3_);
            }
            else
            {
               this.§_-be§.addChild(_loc3_);
            }
            _loc2_++;
         }
      }
      
      private function §_-Kg§() : void
      {
         var _loc1_:BitmapData = new BitmapData(16,16,false,this.§_-Cm§.§_-4M§);
         this.§_-54§ = this.§_-NZ§.§_-2V§(_loc1_);
         var _loc2_:§_-N§ = new §_-N§(this.§_-54§);
         _loc2_.scaleX = 256;
         _loc2_.scaleY = 256;
         _loc2_.y = -(_loc1_.height * _loc2_.scaleY) / 2;
         this.§_-Qp§.addChild(_loc2_);
         _loc1_ = new BitmapData(16,16,false,this.§_-Cm§.§_-xb§);
         this.§_-RK§ = this.§_-NZ§.§_-2V§(_loc1_);
         _loc2_ = new §_-N§(this.§_-RK§);
         _loc2_.scaleX = 256;
         _loc2_.scaleY = 256;
         _loc2_.y = 0;
         this.§_-xd§.addChild(_loc2_);
      }
      
      public function §_-N2§(param1:String) : void
      {
         this.§_-CU§();
         §_-o6§.log("Switch background! NEW BACKGROUND NAME = " + param1);
         this.§_-JD§(param1);
      }
      
      public function §_-oO§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:§_-m8§ = null;
         if(param1 == this.§_-1l§)
         {
            return;
         }
         this.§_-1l§ = param1;
         for each(_loc3_ in this.§_-j0§)
         {
            _loc3_.§_-oO§(param1);
         }
      }
      
      public function §_-tL§() : void
      {
         this.§_-34§ = §_-JH§.§_-A3§(this.§_-Cm§.§_-KQ§,§_-JH§.§_-cR§,999);
      }
      
      public function §_-4Q§() : void
      {
         if(this.§_-34§)
         {
            if(this.§_-34§.§_-cY§)
            {
               this.§_-34§.§_-cY§.stop();
               this.§_-34§.§_-LQ§();
            }
         }
      }
      
      public function §_-im§(param1:Number) : void
      {
         var _loc2_:DisplayObject = null;
         if(param1 < this.§_-be§.numChildren)
         {
            _loc2_ = this.§_-be§.getChildAt(param1);
         }
         else if(param1 - this.§_-be§.numChildren < this.§_-9z§.numChildren)
         {
            _loc2_ = this.§_-9z§.getChildAt(param1 - this.§_-be§.numChildren);
         }
         if(_loc2_)
         {
            _loc2_.visible = !_loc2_.visible;
         }
      }
      
      public function §_-Go§(param1:Number, param2:Number) : void
      {
         var _loc3_:int = 0;
         this.§_-7z§ = param1;
         this.§_-3j§ = param2;
         if(this.§_-j0§ != null)
         {
            _loc3_ = 0;
            while(_loc3_ < this.§_-j0§.length)
            {
               this.§_-j0§[_loc3_].setSideScroll(this.§_-7z§,this.§_-3j§);
               _loc3_++;
            }
         }
         if(this.§_-Qp§ != null && this.§_-xd§ != null)
         {
            this.§_-Qp§.scaleX = this.§_-Qp§.scaleY = 1 / §_-Y4§.§_-Q-§;
            this.§_-xd§.scaleX = this.§_-xd§.scaleY = 1 / §_-Y4§.§_-Q-§;
            this.§_-Qp§.x = this.§_-xd§.x = -§_-Y4§.§_-JB§ * (1 / §_-Y4§.§_-Q-§);
            this.§_-Qp§.y = this.§_-xd§.y = this.§_-uQ§ - this.§_-3j§;
         }
      }
      
      public function §_-c3§() : String
      {
         return this.§_-Cm§.mName;
      }
   }
}
