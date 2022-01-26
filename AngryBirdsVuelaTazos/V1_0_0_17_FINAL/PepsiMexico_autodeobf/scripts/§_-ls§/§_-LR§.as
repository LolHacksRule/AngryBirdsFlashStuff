package §_-ls§
{
   import §_-2m§.§_-lr§;
   import §_-2m§.§_-mI§;
   import §_-LP§.DisplayObject;
   import §_-LP§.Sprite;
   import §_-LP§.§_-rC§;
   import §_-OJ§.§_-LW§;
   import §_-Ra§.§_-2X§;
   import §_-Ra§.§_-M7§;
   import §_-e3§.§_-54§;
   import §_-gY§.§_-Vu§;
   import §_-rQ§.§_-Ou§;
   import §_-rQ§.§_-iG§;
   
   public class §_-LR§
   {
      
      public static const §_-iQ§:Boolean = true;
       
      
      private var §_-Mi§:§_-M7§;
      
      private var §_-gS§:§_-2X§;
      
      private var §_-Fp§:§_-mI§;
      
      private var §_-NK§:Vector.<§_-ON§>;
      
      private var §_-AR§:Sprite;
      
      private var §_-6b§:Sprite;
      
      private var §_-Lq§:Sprite;
      
      private var §_-ND§:Number;
      
      private var §_-KO§:Number;
      
      private var §_-My§:Number;
      
      private var §_-MX§:Boolean = true;
      
      private var §_-FU§:Boolean = true;
      
      private var §_-jV§:§_-iG§;
      
      public function §_-LR§(param1:String, param2:Number, param3:§_-M7§, param4:§_-2X§)
      {
         this.§_-NK§ = new Vector.<§_-ON§>();
         super();
         this.§_-Mi§ = param3;
         this.§_-gS§ = param4;
         this.§_-KO§ = 0;
         this.§_-My§ = 0;
         this.§_-ND§ = param2;
         this.§_-AR§ = new Sprite();
         this.§_-6b§ = new Sprite();
         this.§_-Lq§ = new Sprite();
         this.§_-qM§(param1);
      }
      
      public function get §_-Eh§() : Boolean
      {
         return this.§_-MX§;
      }
      
      public function get §_-zm§() : Sprite
      {
         return this.§_-Lq§;
      }
      
      public function get §_-1l§() : Sprite
      {
         return this.§_-AR§;
      }
      
      public function get §_-so§() : Sprite
      {
         return this.§_-6b§;
      }
      
      public function dispose() : void
      {
         this.§_-1a§();
         if(this.§_-AR§)
         {
            this.§_-AR§.dispose();
            this.§_-AR§ = null;
         }
         if(this.§_-6b§)
         {
            this.§_-6b§.dispose();
            this.§_-6b§ = null;
         }
         if(this.§_-Lq§)
         {
            this.§_-Lq§.dispose();
            this.§_-Lq§ = null;
         }
      }
      
      public function §_-U3§() : Boolean
      {
         return this.§_-FU§;
      }
      
      public function §_-Gf§(param1:Boolean) : void
      {
         if(this.§_-FU§ == param1)
         {
            return;
         }
         this.§_-FU§ = param1;
         if(!param1)
         {
            this.§_-1a§();
         }
         else
         {
            this.§_-qM§(this.§_-Fp§.mName);
         }
      }
      
      public function §_-zi§() : String
      {
         return this.§_-Fp§.§_-dK§;
      }
      
      private function §_-1a§() : void
      {
         while(this.§_-6b§.numChildren > 0)
         {
            this.§_-6b§.removeChildAt(0,true);
         }
         while(this.§_-AR§.numChildren > 0)
         {
            this.§_-AR§.removeChildAt(0,true);
         }
         while(this.§_-NK§.length > 0)
         {
            this.§_-NK§.pop().dispose();
         }
      }
      
      private function §_-qM§(param1:String) : void
      {
         var _loc3_:Sprite = null;
         var _loc4_:§_-ON§ = null;
         this.§_-Fp§ = §_-lr§.§_-1U§(param1);
         if(this.§_-Fp§ == null)
         {
            §_-54§.log("UNKNOWN LEVEL THEME! " + param1);
            param1 = "BACKGROUND_BLUE_GRASS";
            this.§_-Fp§ = §_-lr§.§_-1U§("BACKGROUND_BLUE_GRASS");
         }
         this.§_-AR§.y = this.§_-ND§;
         this.§_-6b§.y = this.§_-ND§;
         this.§_-Lq§.y = this.§_-ND§;
         this.§_-IM§();
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-Fp§.§_-NK§.length)
         {
            _loc3_ = new Sprite();
            _loc4_ = new §_-ON§(this.§_-Fp§.§_-NK§[_loc2_],_loc3_,this.§_-gS§);
            this.§_-NK§.push(_loc4_);
            if(_loc4_.§_-MV§)
            {
               this.§_-6b§.addChild(_loc3_);
            }
            else
            {
               this.§_-AR§.addChild(_loc3_);
            }
            _loc2_++;
         }
      }
      
      private function §_-IM§() : void
      {
         if(§_-Vu§.§_-dq§)
         {
            §_-Vu§.§_-dq§.color = this.§_-Fp§.§_-0T§;
         }
         var _loc1_:§_-rC§ = new §_-rC§(4096,4096,uint(this.§_-Fp§.§_-kp§));
         _loc1_.y = 0;
         this.§_-Lq§.addChild(_loc1_);
      }
      
      public function §_-MH§(param1:String) : void
      {
         this.§_-1a§();
         §_-54§.log("Switch background! NEW BACKGROUND NAME = " + param1);
         this.§_-qM§(param1);
      }
      
      public function §_-o3§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:§_-ON§ = null;
         if(param1 == this.§_-MX§)
         {
            return;
         }
         this.§_-MX§ = param1;
         for each(_loc3_ in this.§_-NK§)
         {
            _loc3_.§_-o3§(param1);
         }
      }
      
      public function §_-o2§() : void
      {
         this.§_-jV§ = §_-Ou§.playSound(this.§_-Fp§.§_-lf§,§_-Ou§.§_-m6§,999);
      }
      
      public function §_-yE§() : void
      {
         if(this.§_-jV§)
         {
            if(this.§_-jV§.§_-D8§)
            {
               this.§_-jV§.§_-D8§.stop();
               this.§_-jV§.§_-py§();
            }
         }
      }
      
      public function §_-k8§(param1:Number) : void
      {
         var _loc2_:DisplayObject = null;
         if(param1 < this.§_-AR§.numChildren)
         {
            _loc2_ = this.§_-AR§.getChildAt(param1);
         }
         else if(param1 - this.§_-AR§.numChildren < this.§_-6b§.numChildren)
         {
            _loc2_ = this.§_-6b§.getChildAt(param1 - this.§_-AR§.numChildren);
         }
         if(_loc2_)
         {
            _loc2_.visible = !_loc2_.visible;
         }
      }
      
      public function §_-lt§(param1:Number, param2:Number) : void
      {
         var _loc3_:int = 0;
         this.§_-KO§ = param1;
         this.§_-My§ = param2;
         if(this.§_-NK§ != null)
         {
            _loc3_ = 0;
            while(_loc3_ < this.§_-NK§.length)
            {
               this.§_-NK§[_loc3_].setSideScroll(this.§_-KO§,this.§_-My§);
               _loc3_++;
            }
         }
         if(this.§_-Lq§ != null)
         {
            this.§_-Lq§.scaleX = this.§_-Lq§.scaleY = 1 / §_-LW§.§ use§;
            this.§_-Lq§.x = -§_-LW§.§_-wF§ * (1 / §_-LW§.§ use§);
            this.§_-Lq§.y = this.§_-ND§ - this.§_-My§;
         }
      }
      
      public function §_-WY§() : String
      {
         return this.§_-Fp§.mName;
      }
   }
}
