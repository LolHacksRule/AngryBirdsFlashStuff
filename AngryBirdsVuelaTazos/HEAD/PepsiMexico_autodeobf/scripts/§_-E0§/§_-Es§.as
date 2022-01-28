package §_-E0§
{
   import §_-3b§.§_-Og§;
   import §_-4K§.§_-Av§;
   import §_-4K§.§_-Ga§;
   import §_-7x§.§_-yE§;
   import §_-Ku§.§_-Ha§;
   import §_-SE§.DisplayObject;
   import §_-SE§.Sprite;
   import §_-SE§.§_-uX§;
   import §_-gM§.§_-yj§;
   import §_-h3§.§_-07§;
   import §_-h3§.§_-EL§;
   import §_-h3§.§_-a§;
   import §_-ym§.§_-7s§;
   
   public class §_-Es§
   {
      
      public static const §_-rj§:Boolean = true;
       
      
      private var §_-wI§:§_-Og§;
      
      private var §_-Qi§:§_-07§;
      
      private var §_-6T§:Vector.<§_-mm§>;
      
      private var §_-a6§:Sprite;
      
      private var §_-Vp§:Sprite;
      
      private var §_-1H§:Sprite;
      
      private var §_-0G§:Number;
      
      private var §_-Ms§:Number;
      
      private var §_-mQ§:Number;
      
      private var §_-xX§:Boolean = true;
      
      private var §_-4§:Boolean = true;
      
      private var §_-Hr§:§_-Ga§;
      
      private var §_-tY§:Number;
      
      public function §_-Es§(param1:String, param2:Number, param3:§_-Og§, param4:Number)
      {
         this.§_-6T§ = new Vector.<§_-mm§>();
         super();
         this.§_-wI§ = param3;
         this.§_-Ms§ = 0;
         this.§_-mQ§ = 0;
         this.§_-0G§ = param2;
         this.§_-a6§ = new Sprite();
         this.§_-Vp§ = new Sprite();
         this.§_-1H§ = new Sprite();
         this.§_-tY§ = param4;
         this.§_-2D§(param1,param4);
      }
      
      public function get §_-jg§() : Boolean
      {
         return this.§_-xX§;
      }
      
      public function get §_-u8§() : Sprite
      {
         return this.§_-1H§;
      }
      
      public function get §_-89§() : Sprite
      {
         return this.§_-a6§;
      }
      
      public function get §_-rs§() : Sprite
      {
         return this.§_-Vp§;
      }
      
      public function dispose() : void
      {
         this.§_-Du§();
         if(this.§_-a6§)
         {
            this.§_-a6§.dispose();
            this.§_-a6§ = null;
         }
         if(this.§_-Vp§)
         {
            this.§_-Vp§.dispose();
            this.§_-Vp§ = null;
         }
         if(this.§_-1H§)
         {
            this.§_-1H§.dispose();
            this.§_-1H§ = null;
         }
      }
      
      public function §_-pk§() : Boolean
      {
         return this.§_-4§;
      }
      
      public function §_-2L§(param1:Boolean) : void
      {
         if(this.§_-4§ == param1)
         {
            return;
         }
         this.§_-4§ = param1;
         if(!param1)
         {
            this.§_-Du§();
         }
         else
         {
            this.§_-2D§(this.§_-Qi§.mName,this.§_-tY§);
         }
      }
      
      public function §_-WK§() : String
      {
         return this.§_-Qi§.§_-Dz§;
      }
      
      private function §_-Du§() : void
      {
         while(this.§_-Vp§.numChildren > 0)
         {
            this.§_-Vp§.removeChildAt(0,true);
         }
         while(this.§_-a6§.numChildren > 0)
         {
            this.§_-a6§.removeChildAt(0,true);
         }
         while(this.§_-6T§.length > 0)
         {
            this.§_-6T§.pop().dispose();
         }
      }
      
      private function §_-2D§(param1:String, param2:Number) : void
      {
         var _loc4_:§_-a§ = null;
         var _loc5_:Sprite = null;
         var _loc6_:§_-mm§ = null;
         this.§_-Qi§ = §_-EL§.§_-fN§(param1);
         if(this.§_-Qi§ == null)
         {
            §_-yj§.log("UNKNOWN LEVEL THEME! " + param1);
            param1 = §_-yE§.§_-D3§;
            this.§_-Qi§ = §_-EL§.§_-fN§(param1);
         }
         this.§_-a6§.y = this.§_-0G§;
         this.§_-Vp§.y = this.§_-0G§;
         this.§_-1H§.y = this.§_-0G§;
         this.§_-5i§();
         var _loc3_:int = 0;
         while(_loc3_ < this.§_-Qi§.§_-6T§.length)
         {
            _loc4_ = this.§_-Qi§.§_-6T§[_loc3_];
            if(!§_-Ha§.§_-0E§ || !_loc4_.§_-5K§)
            {
               _loc5_ = new Sprite();
               _loc6_ = new §_-mm§(_loc4_,_loc5_,this.§_-wI§,param2);
               this.§_-6T§.push(_loc6_);
               if(_loc6_.§_-C4§)
               {
                  this.§_-Vp§.addChild(_loc5_);
               }
               else
               {
                  this.§_-a6§.addChild(_loc5_);
               }
            }
            else if(_loc4_.§_-8L§)
            {
               this.§_-eg§(parseInt(_loc4_.§_-8L§,16));
            }
            _loc3_++;
         }
      }
      
      private function §_-5i§() : void
      {
         this.§_-eg§(this.§_-Qi§.§_-2m§);
         var _loc1_:§_-uX§ = new §_-uX§(4096,4096,uint(this.§_-Qi§.§_-VR§));
         _loc1_.y = 0;
         this.§_-1H§.addChild(_loc1_);
      }
      
      private function §_-eg§(param1:int) : void
      {
         if(§_-Ha§.§_-Aq§)
         {
            §_-Ha§.§_-Aq§.color = param1;
         }
      }
      
      public function §_-7K§(param1:String) : void
      {
         this.§_-Du§();
         §_-yj§.log("Switch background! NEW BACKGROUND NAME = " + param1);
         this.§_-2D§(param1,this.§_-tY§);
      }
      
      public function §_-ki§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:§_-mm§ = null;
         if(param1 == this.§_-xX§)
         {
            return;
         }
         this.§_-xX§ = param1;
         for each(_loc3_ in this.§_-6T§)
         {
            _loc3_.§_-ki§(param1);
         }
      }
      
      public function §_-i6§() : void
      {
         if(§_-Av§.§_-Qj§("CHANNEL_AMBIENT") == null || !§_-Av§.§_-Qj§("CHANNEL_AMBIENT").§_-jk§())
         {
            §_-Av§.§_-so§(this.§_-Qi§.§_-IK§,"CHANNEL_AMBIENT",999);
         }
      }
      
      public function §_-wW§() : void
      {
         §_-Av§.§_-nk§("CHANNEL_AMBIENT");
      }
      
      public function §_-V-§(param1:Number) : void
      {
         var _loc2_:DisplayObject = null;
         if(param1 < this.§_-a6§.numChildren)
         {
            _loc2_ = this.§_-a6§.getChildAt(param1);
         }
         else if(param1 - this.§_-a6§.numChildren < this.§_-Vp§.numChildren)
         {
            _loc2_ = this.§_-Vp§.getChildAt(param1 - this.§_-a6§.numChildren);
         }
         if(_loc2_)
         {
            _loc2_.visible = !_loc2_.visible;
         }
      }
      
      public function §_-3I§(param1:Number, param2:Number) : void
      {
         var _loc3_:int = 0;
         this.§_-Ms§ = param1;
         this.§_-mQ§ = param2;
         if(this.§_-6T§ != null)
         {
            _loc3_ = 0;
            while(_loc3_ < this.§_-6T§.length)
            {
               this.§_-6T§[_loc3_].setSideScroll(this.§_-Ms§,this.§_-mQ§);
               _loc3_++;
            }
         }
         if(this.§_-1H§ != null)
         {
            this.§_-1H§.scaleX = this.§_-1H§.scaleY = 1 / §_-7s§.§_-ng§;
            this.§_-1H§.x = -§_-7s§.§_-4P§ * (1 / §_-7s§.§_-ng§);
            this.§_-1H§.y = this.§_-0G§ - this.§_-mQ§;
         }
      }
      
      public function §_-0b§() : String
      {
         return this.§_-Qi§.mName;
      }
      
      public function update(param1:Number) : void
      {
      }
   }
}
