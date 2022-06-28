package §_-vJ§
{
   import §_-0BH§.§_-FK§;
   import §_-0Ea§.§_-AY§;
   import §_-4g§.§_-9c§;
   import §_-4g§.§_-pX§;
   import §_-8d§.§_-0FF§;
   import §_-9T§.§_-0D7§;
   import §_-9T§.§_-QO§;
   import §_-9T§.§_-xG§;
   import §_-Ga§.§_-bm§;
   import §_-JK§.§_-S2§;
   import §_-uY§.DisplayObject;
   import §_-uY§.Sprite;
   import §_-uY§.§_-2p§;
   
   public class §_-OI§
   {
      
      public static const §_-Vj§:Boolean = true;
       
      
      private var §_-00g§:§_-0FF§;
      
      private var §_-0Cr§:§_-0D7§;
      
      private var §_-Ac§:Vector.<§_-h5§>;
      
      private var §_-0DY§:Sprite;
      
      private var §_-3N§:Sprite;
      
      private var §_-08I§:Sprite;
      
      private var §_-3A§:Number;
      
      private var §_-3r§:Number;
      
      private var §_-Pa§:Number;
      
      private var §_-0Ch§:Boolean = true;
      
      private var §_-0E4§:Boolean = true;
      
      private var §_-ZB§:§_-9c§;
      
      private var §_-I0§:Number;
      
      public function §_-OI§(param1:String, param2:Number, param3:§_-0FF§, param4:Number)
      {
         this.§_-Ac§ = new Vector.<§_-h5§>();
         super();
         this.§_-00g§ = param3;
         this.§_-3r§ = 0;
         this.§_-Pa§ = 0;
         this.§_-3A§ = param2;
         this.§_-0DY§ = new Sprite();
         this.§_-3N§ = new Sprite();
         this.§_-08I§ = new Sprite();
         this.§_-I0§ = param4;
         this.§_-Wq§(param1,param4);
      }
      
      public function get §_-0BE§() : Boolean
      {
         return this.§_-0Ch§;
      }
      
      public function get §_-xH§() : Sprite
      {
         return this.§_-08I§;
      }
      
      public function get §_-pH§() : Sprite
      {
         return this.§_-0DY§;
      }
      
      public function get §_-BL§() : Sprite
      {
         return this.§_-3N§;
      }
      
      protected function get textureManager() : §_-0FF§
      {
         return this.§_-00g§;
      }
      
      public function dispose() : void
      {
         this.§_-0-Z§();
         if(this.§_-0DY§)
         {
            this.§_-0DY§.dispose();
            this.§_-0DY§ = null;
         }
         if(this.§_-3N§)
         {
            this.§_-3N§.dispose();
            this.§_-3N§ = null;
         }
         if(this.§_-08I§)
         {
            this.§_-08I§.dispose();
            this.§_-08I§ = null;
         }
      }
      
      public function §_-cq§() : Boolean
      {
         return this.§_-0E4§;
      }
      
      public function §_-Vf§(param1:Boolean) : void
      {
         if(this.§_-0E4§ == param1)
         {
            return;
         }
         this.§_-0E4§ = param1;
         if(!param1)
         {
            this.§_-0-Z§();
         }
         else
         {
            this.§_-Wq§(this.§_-0Cr§.mName,this.§_-I0§);
         }
      }
      
      public function §_-st§() : String
      {
         return this.§_-0Cr§.§_-M8§;
      }
      
      private function §_-0-Z§() : void
      {
         while(this.§_-3N§.numChildren > 0)
         {
            this.§_-3N§.removeChildAt(0,true);
         }
         while(this.§_-0DY§.numChildren > 0)
         {
            this.§_-0DY§.removeChildAt(0,true);
         }
         while(this.§_-Ac§.length > 0)
         {
            this.§_-Ac§.pop().dispose();
         }
      }
      
      private function §_-Wq§(param1:String, param2:Number) : void
      {
         var _loc4_:§_-QO§ = null;
         var _loc5_:Sprite = null;
         var _loc6_:§_-h5§ = null;
         this.§_-0Cr§ = §_-xG§.§_-lv§(param1);
         if(this.§_-0Cr§ == null)
         {
            §_-FK§.log("UNKNOWN LEVEL THEME! " + param1);
            param1 = §_-bm§.§_-0A0§;
            this.§_-0Cr§ = §_-xG§.§_-lv§(param1);
         }
         this.§_-0DY§.y = this.§_-3A§;
         this.§_-3N§.y = this.§_-3A§;
         this.§_-08I§.y = this.§_-3A§;
         this.§_-u8§();
         var _loc3_:int = 0;
         while(_loc3_ < this.§_-0Cr§.§_-Ac§.length)
         {
            _loc4_ = this.§_-0Cr§.§_-Ac§[_loc3_];
            if(!§_-AY§.§_-H3§ || !_loc4_.§_-Tp§)
            {
               _loc5_ = new Sprite();
               _loc6_ = new §_-h5§(_loc4_,_loc5_,this.§_-00g§,param2);
               this.§_-Ac§.push(_loc6_);
               if(_loc6_.§_-D0§)
               {
                  this.§_-3N§.addChild(_loc5_);
               }
               else
               {
                  this.§_-0DY§.addChild(_loc5_);
               }
            }
            else if(_loc4_.§_-052§)
            {
               this.§_-m7§(parseInt(_loc4_.§_-052§,16));
            }
            _loc3_++;
         }
      }
      
      private function §_-u8§() : void
      {
         var _loc1_:§_-2p§ = null;
         if(this.§_-0Cr§.§_-Zy§)
         {
            this.§_-m7§(this.§_-0Cr§.§_-Zy§);
         }
         if(this.§_-0Cr§.§_-0-9§)
         {
            _loc1_ = this.createGroundQuad(uint(this.§_-0Cr§.§_-0-9§));
            _loc1_.y = 0;
            this.§_-08I§.addChild(_loc1_);
         }
      }
      
      protected function createGroundQuad(param1:uint) : §_-2p§
      {
         return new §_-2p§(4096,4096,param1);
      }
      
      private function §_-m7§(param1:int) : void
      {
         if(§_-AY§.§_-un§)
         {
            §_-AY§.§_-un§.color = param1;
         }
      }
      
      public function §_-h2§(param1:String) : void
      {
         this.§_-0-Z§();
         §_-FK§.log("Switch background! NEW BACKGROUND NAME = " + param1);
         this.§_-Wq§(param1,this.§_-I0§);
      }
      
      public function §_-bN§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:§_-h5§ = null;
         if(param1 == this.§_-0Ch§)
         {
            return;
         }
         this.§_-0Ch§ = param1;
         for each(_loc3_ in this.§_-Ac§)
         {
            _loc3_.§_-bN§(param1);
         }
      }
      
      public function §_-7k§() : void
      {
         if(§_-pX§.§_-BM§("CHANNEL_AMBIENT") == null || !§_-pX§.§_-BM§("CHANNEL_AMBIENT").§_-3t§())
         {
            §_-pX§.playSound(this.§_-0Cr§.§_-2z§,"CHANNEL_AMBIENT",999);
         }
      }
      
      public function §_-Ye§() : void
      {
         §_-pX§.§_-0B7§("CHANNEL_AMBIENT");
      }
      
      public function §_-UX§(param1:Number) : void
      {
         var _loc2_:DisplayObject = null;
         if(param1 < this.§_-0DY§.numChildren)
         {
            _loc2_ = this.§_-0DY§.getChildAt(param1);
         }
         else if(param1 - this.§_-0DY§.numChildren < this.§_-3N§.numChildren)
         {
            _loc2_ = this.§_-3N§.getChildAt(param1 - this.§_-0DY§.numChildren);
         }
         if(_loc2_)
         {
            _loc2_.visible = !_loc2_.visible;
         }
      }
      
      public function §_-12§(param1:Number, param2:Number) : void
      {
         var _loc3_:int = 0;
         this.§_-3r§ = param1;
         this.§_-Pa§ = param2;
         if(this.§_-Ac§ != null)
         {
            _loc3_ = 0;
            while(_loc3_ < this.§_-Ac§.length)
            {
               this.§_-Ac§[_loc3_].setSideScroll(this.§_-3r§,this.§_-Pa§);
               _loc3_++;
            }
         }
         if(this.§_-08I§ != null)
         {
            this.§_-08I§.scaleX = this.§_-08I§.scaleY = 1 / §_-S2§.§_-4-§;
            this.§_-08I§.x = -§_-S2§.§_-qy§ * (1 / §_-S2§.§_-4-§);
            this.§_-08I§.y = this.§_-3A§ - this.§_-Pa§;
         }
      }
      
      public function §_-hZ§() : String
      {
         return this.§_-0Cr§.mName;
      }
      
      public function update(param1:Number) : void
      {
      }
   }
}
