package §_-2a§
{
   import §_-0y§.§_-N4§;
   import §_-0y§.§_-je§;
   import §_-5Y§.§_-vn§;
   import §_-6n§.§_-5z§;
   import §_-6n§.§_-fg§;
   import §_-Eo§.§_-R4§;
   import §_-PC§.§_-N0§;
   import §_-PC§.§_-lx§;
   import §_-b5§.DisplayObject;
   import §_-b5§.Sprite;
   import §_-b5§.§_-HK§;
   import §_-fI§.§_-BI§;
   
   public class §_-Lq§
   {
      
      public static const §_-Qx§:Boolean = true;
       
      
      private var §_-Gl§:§_-N0§;
      
      private var §_-W1§:§_-lx§;
      
      private var §_-KY§:§_-je§;
      
      private var §_-M5§:Vector.<§_-Xo§>;
      
      private var §_-yP§:Sprite;
      
      private var §_-Yr§:Sprite;
      
      private var §_-nP§:Sprite;
      
      private var §_-k3§:Number;
      
      private var §_-sq§:Number;
      
      private var §_-WI§:Number;
      
      private var §_-3R§:Boolean = true;
      
      private var §_-dQ§:Boolean = true;
      
      private var §_-aZ§:§_-fg§;
      
      public function §_-Lq§(param1:String, param2:Number, param3:§_-N0§, param4:§_-lx§)
      {
         this.§_-M5§ = new Vector.<§_-Xo§>();
         super();
         this.§_-Gl§ = param3;
         this.§_-W1§ = param4;
         this.§_-sq§ = 0;
         this.§_-WI§ = 0;
         this.§_-k3§ = param2;
         this.§_-yP§ = new Sprite();
         this.§_-Yr§ = new Sprite();
         this.§_-nP§ = new Sprite();
         this.§_-J8§(param1);
      }
      
      public function get §_-ng§() : Boolean
      {
         return this.§_-3R§;
      }
      
      public function get §_-wA§() : Sprite
      {
         return this.§_-nP§;
      }
      
      public function get §_-Ii§() : Sprite
      {
         return this.§_-yP§;
      }
      
      public function get §_-qb§() : Sprite
      {
         return this.§_-Yr§;
      }
      
      public function dispose() : void
      {
         this.§_-Em§();
         if(this.§_-yP§)
         {
            this.§_-yP§.dispose();
            this.§_-yP§ = null;
         }
         if(this.§_-Yr§)
         {
            this.§_-Yr§.dispose();
            this.§_-Yr§ = null;
         }
         if(this.§_-nP§)
         {
            this.§_-nP§.dispose();
            this.§_-nP§ = null;
         }
      }
      
      public function §_-jL§() : Boolean
      {
         return this.§_-dQ§;
      }
      
      public function §_-AB§(param1:Boolean) : void
      {
         if(this.§_-dQ§ == param1)
         {
            return;
         }
         this.§_-dQ§ = param1;
         if(!param1)
         {
            this.§_-Em§();
         }
         else
         {
            this.§_-J8§(this.§_-KY§.mName);
         }
      }
      
      public function §_-P4§() : String
      {
         return this.§_-KY§.§_-ip§;
      }
      
      private function §_-Em§() : void
      {
         while(this.§_-Yr§.numChildren > 0)
         {
            this.§_-Yr§.removeChildAt(0,true);
         }
         while(this.§_-yP§.numChildren > 0)
         {
            this.§_-yP§.removeChildAt(0,true);
         }
         while(this.§_-M5§.length > 0)
         {
            this.§_-M5§.pop().dispose();
         }
      }
      
      private function §_-J8§(param1:String) : void
      {
         var _loc3_:Sprite = null;
         var _loc4_:§_-Xo§ = null;
         this.§_-KY§ = §_-N4§.§_-R§(param1);
         if(this.§_-KY§ == null)
         {
            §_-R4§.log("UNKNOWN LEVEL THEME! " + param1);
            param1 = "BACKGROUND_BLUE_GRASS";
            this.§_-KY§ = §_-N4§.§_-R§("BACKGROUND_BLUE_GRASS");
         }
         this.§_-yP§.y = this.§_-k3§;
         this.§_-Yr§.y = this.§_-k3§;
         this.§_-nP§.y = this.§_-k3§;
         this.§_-wu§();
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-KY§.§_-M5§.length)
         {
            _loc3_ = new Sprite();
            _loc4_ = new §_-Xo§(this.§_-KY§.§_-M5§[_loc2_],_loc3_,this.§_-W1§);
            this.§_-M5§.push(_loc4_);
            if(_loc4_.§_-x-§)
            {
               this.§_-Yr§.addChild(_loc3_);
            }
            else
            {
               this.§_-yP§.addChild(_loc3_);
            }
            _loc2_++;
         }
      }
      
      private function §_-wu§() : void
      {
         if(§_-BI§.§_-44§)
         {
            §_-BI§.§_-44§.color = this.§_-KY§.§_-r6§;
         }
         var _loc1_:§_-HK§ = new §_-HK§(4096,4096,uint(this.§_-KY§.§_-DJ§));
         _loc1_.y = 0;
         this.§_-nP§.addChild(_loc1_);
      }
      
      public function §_-zc§(param1:String) : void
      {
         this.§_-Em§();
         §_-R4§.log("Switch background! NEW BACKGROUND NAME = " + param1);
         this.§_-J8§(param1);
      }
      
      public function §_-YZ§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:§_-Xo§ = null;
         if(param1 == this.§_-3R§)
         {
            return;
         }
         this.§_-3R§ = param1;
         for each(_loc3_ in this.§_-M5§)
         {
            _loc3_.§_-YZ§(param1);
         }
      }
      
      public function §_-ia§() : void
      {
         this.§_-aZ§ = §_-5z§.§_-rp§(this.§_-KY§.§_-zB§,§_-5z§.§_-Jy§,999);
      }
      
      public function §_-Ws§() : void
      {
         if(this.§_-aZ§)
         {
            if(this.§_-aZ§.§_-7F§)
            {
               this.§_-aZ§.§_-7F§.stop();
               this.§_-aZ§.§_-mS§();
            }
         }
      }
      
      public function §_-r8§(param1:Number) : void
      {
         var _loc2_:DisplayObject = null;
         if(param1 < this.§_-yP§.numChildren)
         {
            _loc2_ = this.§_-yP§.getChildAt(param1);
         }
         else if(param1 - this.§_-yP§.numChildren < this.§_-Yr§.numChildren)
         {
            _loc2_ = this.§_-Yr§.getChildAt(param1 - this.§_-yP§.numChildren);
         }
         if(_loc2_)
         {
            _loc2_.visible = !_loc2_.visible;
         }
      }
      
      public function §_-rm§(param1:Number, param2:Number) : void
      {
         var _loc3_:int = 0;
         this.§_-sq§ = param1;
         this.§_-WI§ = param2;
         if(this.§_-M5§ != null)
         {
            _loc3_ = 0;
            while(_loc3_ < this.§_-M5§.length)
            {
               this.§_-M5§[_loc3_].setSideScroll(this.§_-sq§,this.§_-WI§);
               _loc3_++;
            }
         }
         if(this.§_-nP§ != null)
         {
            this.§_-nP§.scaleX = this.§_-nP§.scaleY = 1 / §_-vn§.§_-RC§;
            this.§_-nP§.x = -§_-vn§.§_-G7§ * (1 / §_-vn§.§_-RC§);
            this.§_-nP§.y = this.§_-k3§ - this.§_-WI§;
         }
      }
      
      public function §_-v2§() : String
      {
         return this.§_-KY§.mName;
      }
   }
}
