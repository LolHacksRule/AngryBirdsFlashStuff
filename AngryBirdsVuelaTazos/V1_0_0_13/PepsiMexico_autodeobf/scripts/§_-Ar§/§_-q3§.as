package §_-Ar§
{
   import § get§.§_-of§;
   import § get§.§_-pD§;
   import §_-1Z§.§_-RB§;
   import §_-1Z§.§_-VN§;
   import §_-FQ§.§_-if§;
   import §_-JR§.§_-yh§;
   import §_-UX§.DisplayObject;
   import §_-UX§.Sprite;
   import §_-UX§.§_-go§;
   import §_-ex§.§_-mR§;
   import §_-rQ§.§_-hA§;
   import §_-rQ§.§_-nh§;
   
   public class §_-q3§
   {
      
      public static const §_-Bj§:Boolean = true;
       
      
      private var §_-rv§:§_-nh§;
      
      private var §_-fS§:§_-hA§;
      
      private var §_-pY§:§_-RB§;
      
      private var §_-XB§:Vector.<§_-xT§>;
      
      private var §_-EV§:Sprite;
      
      private var §_-zO§:Sprite;
      
      private var §_-CH§:Sprite;
      
      private var §_-OR§:Number;
      
      private var §_-uy§:Number;
      
      private var §_-Li§:Number;
      
      private var §_-07§:Boolean = true;
      
      private var §_-K1§:Boolean = true;
      
      private var §_-kJ§:§_-of§;
      
      public function §_-q3§(param1:String, param2:Number, param3:§_-nh§, param4:§_-hA§)
      {
         this.§_-XB§ = new Vector.<§_-xT§>();
         super();
         this.§_-rv§ = param3;
         this.§_-fS§ = param4;
         this.§_-uy§ = 0;
         this.§_-Li§ = 0;
         this.§_-OR§ = param2;
         this.§_-EV§ = new Sprite();
         this.§_-zO§ = new Sprite();
         this.§_-CH§ = new Sprite();
         this.§_-6x§(param1);
      }
      
      public function get §_-0t§() : Boolean
      {
         return this.§_-07§;
      }
      
      public function get §_-16§() : Sprite
      {
         return this.§_-CH§;
      }
      
      public function get §_-2§() : Sprite
      {
         return this.§_-EV§;
      }
      
      public function get §_-s9§() : Sprite
      {
         return this.§_-zO§;
      }
      
      public function dispose() : void
      {
         this.§_-lJ§();
         if(this.§_-EV§)
         {
            this.§_-EV§.dispose();
            this.§_-EV§ = null;
         }
         if(this.§_-zO§)
         {
            this.§_-zO§.dispose();
            this.§_-zO§ = null;
         }
         if(this.§_-CH§)
         {
            this.§_-CH§.dispose();
            this.§_-CH§ = null;
         }
      }
      
      public function §_-U3§() : Boolean
      {
         return this.§_-K1§;
      }
      
      public function §_-G9§(param1:Boolean) : void
      {
         if(this.§_-K1§ == param1)
         {
            return;
         }
         this.§_-K1§ = param1;
         if(!param1)
         {
            this.§_-lJ§();
         }
         else
         {
            this.§_-6x§(this.§_-pY§.mName);
         }
      }
      
      public function §_-Zp§() : String
      {
         return this.§_-pY§.§_-67§;
      }
      
      private function §_-lJ§() : void
      {
         while(this.§_-zO§.numChildren > 0)
         {
            this.§_-zO§.removeChildAt(0,true);
         }
         while(this.§_-EV§.numChildren > 0)
         {
            this.§_-EV§.removeChildAt(0,true);
         }
         while(this.§_-XB§.length > 0)
         {
            this.§_-XB§.pop().dispose();
         }
      }
      
      private function §_-6x§(param1:String) : void
      {
         var _loc3_:Sprite = null;
         var _loc4_:§_-xT§ = null;
         this.§_-pY§ = §_-VN§.§_-E0§(param1);
         if(this.§_-pY§ == null)
         {
            §_-mR§.log("UNKNOWN LEVEL THEME! " + param1);
            param1 = "BACKGROUND_BLUE_GRASS";
            this.§_-pY§ = §_-VN§.§_-E0§("BACKGROUND_BLUE_GRASS");
         }
         this.§_-EV§.y = this.§_-OR§;
         this.§_-zO§.y = this.§_-OR§;
         this.§_-CH§.y = this.§_-OR§;
         this.§_-Z3§();
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-pY§.§_-XB§.length)
         {
            _loc3_ = new Sprite();
            _loc4_ = new §_-xT§(this.§_-pY§.§_-XB§[_loc2_],_loc3_,this.§_-fS§);
            this.§_-XB§.push(_loc4_);
            if(_loc4_.§_-HW§)
            {
               this.§_-zO§.addChild(_loc3_);
            }
            else
            {
               this.§_-EV§.addChild(_loc3_);
            }
            _loc2_++;
         }
      }
      
      private function §_-Z3§() : void
      {
         if(§_-yh§.§_-1o§)
         {
            §_-yh§.§_-1o§.color = this.§_-pY§.§_-yo§;
         }
         var _loc1_:§_-go§ = new §_-go§(4096,4096,uint(this.§_-pY§.§_-ks§));
         _loc1_.y = 0;
         this.§_-CH§.addChild(_loc1_);
      }
      
      public function §_-Lo§(param1:String) : void
      {
         this.§_-lJ§();
         §_-mR§.log("Switch background! NEW BACKGROUND NAME = " + param1);
         this.§_-6x§(param1);
      }
      
      public function §_-J§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:§_-xT§ = null;
         if(param1 == this.§_-07§)
         {
            return;
         }
         this.§_-07§ = param1;
         for each(_loc3_ in this.§_-XB§)
         {
            _loc3_.§_-J§(param1);
         }
      }
      
      public function §_-KB§() : void
      {
         this.§_-kJ§ = §_-pD§.playSound(this.§_-pY§.§_-mW§,§_-pD§.§_-ht§,999);
      }
      
      public function §try §() : void
      {
         if(this.§_-kJ§)
         {
            if(this.§_-kJ§.§_-fN§)
            {
               this.§_-kJ§.§_-fN§.stop();
               this.§_-kJ§.§_-pG§();
            }
         }
      }
      
      public function §_-VM§(param1:Number) : void
      {
         var _loc2_:DisplayObject = null;
         if(param1 < this.§_-EV§.numChildren)
         {
            _loc2_ = this.§_-EV§.getChildAt(param1);
         }
         else if(param1 - this.§_-EV§.numChildren < this.§_-zO§.numChildren)
         {
            _loc2_ = this.§_-zO§.getChildAt(param1 - this.§_-EV§.numChildren);
         }
         if(_loc2_)
         {
            _loc2_.visible = !_loc2_.visible;
         }
      }
      
      public function §_-hH§(param1:Number, param2:Number) : void
      {
         var _loc3_:int = 0;
         this.§_-uy§ = param1;
         this.§_-Li§ = param2;
         if(this.§_-XB§ != null)
         {
            _loc3_ = 0;
            while(_loc3_ < this.§_-XB§.length)
            {
               this.§_-XB§[_loc3_].setSideScroll(this.§_-uy§,this.§_-Li§);
               _loc3_++;
            }
         }
         if(this.§_-CH§ != null)
         {
            this.§_-CH§.scaleX = this.§_-CH§.scaleY = 1 / §_-if§.§_-4X§;
            this.§_-CH§.x = -§_-if§.§_-1r§ * (1 / §_-if§.§_-4X§);
            this.§_-CH§.y = this.§_-OR§ - this.§_-Li§;
         }
      }
      
      public function §_-vm§() : String
      {
         return this.§_-pY§.mName;
      }
   }
}
