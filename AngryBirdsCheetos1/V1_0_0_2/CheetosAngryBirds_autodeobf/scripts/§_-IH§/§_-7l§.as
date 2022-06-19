package §_-IH§
{
   import §_-7T§.§_-yJ§;
   import §_-GY§.DisplayObject;
   import §_-GY§.Sprite;
   import §_-GY§.§_-Bf§;
   import §_-MP§.§_-BI§;
   import §_-Ob§.§_-4y§;
   import §_-Ob§.§_-NB§;
   import §_-Ob§.§_-jM§;
   import §_-VH§.§_-2K§;
   import §_-VH§.§_-X6§;
   import §_-Ye§.§_-cP§;
   import §_-aA§.§_-I0§;
   import §_-my§.§_-V0§;
   
   public class §_-7l§
   {
      
      public static const §_-TP§:Boolean = true;
       
      
      private var §_-B1§:§_-V0§;
      
      private var §_-4O§:§_-NB§;
      
      private var §_-8F§:Vector.<§_-LP§>;
      
      private var §_-Jc§:Sprite;
      
      private var §_-PX§:Sprite;
      
      private var §_-c§:Sprite;
      
      private var §_-JD§:Number;
      
      private var §_-Pr§:Number;
      
      private var §_-bD§:Number;
      
      private var §_-UY§:Boolean = true;
      
      private var §_-TA§:Boolean = true;
      
      private var §class§:§_-2K§;
      
      private var §_-MK§:Number;
      
      public function §_-7l§(param1:String, param2:Number, param3:§_-V0§, param4:Number)
      {
         this.§_-8F§ = new Vector.<§_-LP§>();
         super();
         this.§_-B1§ = param3;
         this.§_-Pr§ = 0;
         this.§_-bD§ = 0;
         this.§_-JD§ = param2;
         this.§_-Jc§ = new Sprite();
         this.§_-PX§ = new Sprite();
         this.§_-c§ = new Sprite();
         this.§_-MK§ = param4;
         this.§_-I§(param1,param4);
      }
      
      public function get §_-E7§() : Boolean
      {
         return this.§_-UY§;
      }
      
      public function get §_-er§() : Sprite
      {
         return this.§_-c§;
      }
      
      public function get §_-WP§() : Sprite
      {
         return this.§_-Jc§;
      }
      
      public function get §_-Jm§() : Sprite
      {
         return this.§_-PX§;
      }
      
      protected function get §_-3q§() : §_-V0§
      {
         return this.§_-B1§;
      }
      
      public function dispose() : void
      {
         this.§try §();
         if(this.§_-Jc§)
         {
            this.§_-Jc§.dispose();
            this.§_-Jc§ = null;
         }
         if(this.§_-PX§)
         {
            this.§_-PX§.dispose();
            this.§_-PX§ = null;
         }
         if(this.§_-c§)
         {
            this.§_-c§.dispose();
            this.§_-c§ = null;
         }
      }
      
      public function §_-nw§() : Boolean
      {
         return this.§_-TA§;
      }
      
      public function §_-2c§(param1:Boolean) : void
      {
         if(this.§_-TA§ == param1)
         {
            return;
         }
         this.§_-TA§ = param1;
         if(!param1)
         {
            this.§try §();
         }
         else
         {
            this.§_-I§(this.§_-4O§.mName,this.§_-MK§);
         }
      }
      
      public function §_-3P§() : String
      {
         return this.§_-4O§.§_-uS§;
      }
      
      private function §try §() : void
      {
         while(this.§_-PX§.numChildren > 0)
         {
            this.§_-PX§.removeChildAt(0,true);
         }
         while(this.§_-Jc§.numChildren > 0)
         {
            this.§_-Jc§.removeChildAt(0,true);
         }
         while(this.§_-8F§.length > 0)
         {
            this.§_-8F§.pop().dispose();
         }
      }
      
      private function §_-I§(param1:String, param2:Number) : void
      {
         var _loc4_:§_-jM§ = null;
         var _loc5_:Sprite = null;
         var _loc6_:§_-LP§ = null;
         this.§_-4O§ = §_-4y§.§_-5g§(param1);
         if(this.§_-4O§ == null)
         {
            §_-I0§.log("UNKNOWN LEVEL THEME! " + param1);
            param1 = §_-BI§.§_-Hg§;
            this.§_-4O§ = §_-4y§.§_-5g§(param1);
         }
         this.§_-Jc§.y = this.§_-JD§;
         this.§_-PX§.y = this.§_-JD§;
         this.§_-c§.y = this.§_-JD§;
         this.§_-tJ§();
         var _loc3_:int = 0;
         while(_loc3_ < this.§_-4O§.§_-8F§.length)
         {
            _loc4_ = this.§_-4O§.§_-8F§[_loc3_];
            if(!§_-cP§.§_-PM§ || !_loc4_.§_-VX§)
            {
               _loc5_ = new Sprite();
               _loc6_ = new §_-LP§(_loc4_,_loc5_,this.§_-B1§,param2);
               this.§_-8F§.push(_loc6_);
               if(_loc6_.§_-fW§)
               {
                  this.§_-PX§.addChild(_loc5_);
               }
               else
               {
                  this.§_-Jc§.addChild(_loc5_);
               }
            }
            else if(_loc4_.§_-J§)
            {
               this.§_-AY§(parseInt(_loc4_.§_-J§,16));
            }
            _loc3_++;
         }
      }
      
      private function §_-tJ§() : void
      {
         var _loc1_:§_-Bf§ = null;
         if(this.§_-4O§.§_-0t§)
         {
            this.§_-AY§(this.§_-4O§.§_-0t§);
         }
         if(this.§_-4O§.§_-an§)
         {
            _loc1_ = this.§_-gK§(uint(this.§_-4O§.§_-an§));
            _loc1_.y = 0;
            this.§_-c§.addChild(_loc1_);
         }
      }
      
      protected function §_-gK§(param1:uint) : §_-Bf§
      {
         return new §_-Bf§(4096,4096,param1);
      }
      
      private function §_-AY§(param1:int) : void
      {
         if(§_-cP§.§_-004§)
         {
            §_-cP§.§_-004§.color = param1;
         }
      }
      
      public function §_-ls§(param1:String) : void
      {
         this.§try §();
         §_-I0§.log("Switch background! NEW BACKGROUND NAME = " + param1);
         this.§_-I§(param1,this.§_-MK§);
      }
      
      public function §_-uY§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:§_-LP§ = null;
         if(param1 == this.§_-UY§)
         {
            return;
         }
         this.§_-UY§ = param1;
         for each(_loc3_ in this.§_-8F§)
         {
            _loc3_.§_-uY§(param1);
         }
      }
      
      public function §_-MI§() : void
      {
         if(§_-X6§.§_-c9§("CHANNEL_AMBIENT") == null || !§_-X6§.§_-c9§("CHANNEL_AMBIENT").§_-96§())
         {
            §_-X6§.playSound(this.§_-4O§.§_-bx§,"CHANNEL_AMBIENT",999);
         }
      }
      
      public function §_-GQ§() : void
      {
         §_-X6§.§_-vx§("CHANNEL_AMBIENT");
      }
      
      public function §_-Bn§(param1:Number) : void
      {
         var _loc2_:DisplayObject = null;
         if(param1 < this.§_-Jc§.numChildren)
         {
            _loc2_ = this.§_-Jc§.getChildAt(param1);
         }
         else if(param1 - this.§_-Jc§.numChildren < this.§_-PX§.numChildren)
         {
            _loc2_ = this.§_-PX§.getChildAt(param1 - this.§_-Jc§.numChildren);
         }
         if(_loc2_)
         {
            _loc2_.visible = !_loc2_.visible;
         }
      }
      
      public function §_-n0§(param1:Number, param2:Number) : void
      {
         var _loc3_:int = 0;
         this.§_-Pr§ = param1;
         this.§_-bD§ = param2;
         if(this.§_-8F§ != null)
         {
            _loc3_ = 0;
            while(_loc3_ < this.§_-8F§.length)
            {
               this.§_-8F§[_loc3_].setSideScroll(this.§_-Pr§,this.§_-bD§);
               _loc3_++;
            }
         }
         if(this.§_-c§ != null)
         {
            this.§_-c§.scaleX = this.§_-c§.scaleY = 1 / §_-yJ§.§_-rO§;
            this.§_-c§.x = -§_-yJ§.§_-gB§ * (1 / §_-yJ§.§_-rO§);
            this.§_-c§.y = this.§_-JD§ - this.§_-bD§;
         }
      }
      
      public function §_-2x§() : String
      {
         return this.§_-4O§.mName;
      }
      
      public function update(param1:Number) : void
      {
      }
   }
}
