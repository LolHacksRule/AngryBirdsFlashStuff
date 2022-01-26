package §_-wG§
{
   import §_-1P§.§_-3p§;
   import §_-1P§.§_-lC§;
   import §_-2V§.§_-Qb§;
   import §_-2V§.§_-iY§;
   import §_-RG§.§_-HT§;
   import §_-am§.§_-IP§;
   import §_-am§.§_-XJ§;
   import §_-pF§.DisplayObject;
   import §_-pF§.Sprite;
   import §_-pF§.§_-b3§;
   import §_-rp§.§_-Hz§;
   import §_-v3§.§_-G3§;
   
   public class §_-Qf§
   {
      
      public static const §_-Zt§:Boolean = true;
       
      
      private var §_-S-§:§_-lC§;
      
      private var §_-Li§:§_-3p§;
      
      private var §_-F7§:§_-Qb§;
      
      private var §_-9E§:Vector.<§_-c0§>;
      
      private var §_-iH§:Sprite;
      
      private var §_-Vd§:Sprite;
      
      private var §_-YG§:Sprite;
      
      private var §_-1u§:Number;
      
      private var §_-gm§:Number;
      
      private var §_-by§:Number;
      
      private var §_-MR§:Boolean = true;
      
      private var §_-A8§:Boolean = true;
      
      private var §_-1b§:§_-IP§;
      
      public function §_-Qf§(param1:String, param2:Number, param3:§_-lC§, param4:§_-3p§)
      {
         this.§_-9E§ = new Vector.<§_-c0§>();
         super();
         this.§_-S-§ = param3;
         this.§_-Li§ = param4;
         this.§_-gm§ = 0;
         this.§_-by§ = 0;
         this.§_-1u§ = param2;
         this.§_-iH§ = new Sprite();
         this.§_-Vd§ = new Sprite();
         this.§_-YG§ = new Sprite();
         this.§_-n6§(param1);
      }
      
      public function get §_-De§() : Boolean
      {
         return this.§_-MR§;
      }
      
      public function get §_-EJ§() : Sprite
      {
         return this.§_-YG§;
      }
      
      public function get §_-H§() : Sprite
      {
         return this.§_-iH§;
      }
      
      public function get §_-h8§() : Sprite
      {
         return this.§_-Vd§;
      }
      
      public function dispose() : void
      {
         this.§_-PR§();
         if(this.§_-iH§)
         {
            this.§_-iH§.dispose();
            this.§_-iH§ = null;
         }
         if(this.§_-Vd§)
         {
            this.§_-Vd§.dispose();
            this.§_-Vd§ = null;
         }
         if(this.§_-YG§)
         {
            this.§_-YG§.dispose();
            this.§_-YG§ = null;
         }
      }
      
      public function §_-jm§() : Boolean
      {
         return this.§_-A8§;
      }
      
      public function §_-cZ§(param1:Boolean) : void
      {
         if(this.§_-A8§ == param1)
         {
            return;
         }
         this.§_-A8§ = param1;
         if(!param1)
         {
            this.§_-PR§();
         }
         else
         {
            this.§_-n6§(this.§_-F7§.mName);
         }
      }
      
      public function §_-Fr§() : String
      {
         return this.§_-F7§.§_-Cv§;
      }
      
      private function §_-PR§() : void
      {
         while(this.§_-Vd§.numChildren > 0)
         {
            this.§_-Vd§.removeChildAt(0,true);
         }
         while(this.§_-iH§.numChildren > 0)
         {
            this.§_-iH§.removeChildAt(0,true);
         }
         while(this.§_-9E§.length > 0)
         {
            this.§_-9E§.pop().dispose();
         }
      }
      
      private function §_-n6§(param1:String) : void
      {
         var _loc3_:Sprite = null;
         var _loc4_:§_-c0§ = null;
         this.§_-F7§ = §_-iY§.§_-s3§(param1);
         if(this.§_-F7§ == null)
         {
            §_-HT§.log("UNKNOWN LEVEL THEME! " + param1);
            param1 = "BACKGROUND_BLUE_GRASS";
            this.§_-F7§ = §_-iY§.§_-s3§("BACKGROUND_BLUE_GRASS");
         }
         this.§_-iH§.y = this.§_-1u§;
         this.§_-Vd§.y = this.§_-1u§;
         this.§_-YG§.y = this.§_-1u§;
         this.§_-vv§();
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-F7§.§_-9E§.length)
         {
            _loc3_ = new Sprite();
            _loc4_ = new §_-c0§(this.§_-F7§.§_-9E§[_loc2_],_loc3_,this.§_-Li§);
            this.§_-9E§.push(_loc4_);
            if(_loc4_.§_-I5§)
            {
               this.§_-Vd§.addChild(_loc3_);
            }
            else
            {
               this.§_-iH§.addChild(_loc3_);
            }
            _loc2_++;
         }
      }
      
      private function §_-vv§() : void
      {
         if(§_-G3§.§_-9S§)
         {
            §_-G3§.§_-9S§.color = this.§_-F7§.§_-iq§;
         }
         var _loc1_:§_-b3§ = new §_-b3§(4096,4096,uint(this.§_-F7§.§_-2l§));
         _loc1_.y = 0;
         this.§_-YG§.addChild(_loc1_);
      }
      
      public function §_-hH§(param1:String) : void
      {
         this.§_-PR§();
         §_-HT§.log("Switch background! NEW BACKGROUND NAME = " + param1);
         this.§_-n6§(param1);
      }
      
      public function §_-Bj§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:§_-c0§ = null;
         if(param1 == this.§_-MR§)
         {
            return;
         }
         this.§_-MR§ = param1;
         for each(_loc3_ in this.§_-9E§)
         {
            _loc3_.§_-Bj§(param1);
         }
      }
      
      public function §_-ry§() : void
      {
         this.§_-1b§ = §_-XJ§.§_-aW§(this.§_-F7§.§ in§,§_-XJ§.§_-w1§,999);
      }
      
      public function §_-Uo§() : void
      {
         if(this.§_-1b§)
         {
            if(this.§_-1b§.§_-rr§)
            {
               this.§_-1b§.§_-rr§.stop();
               this.§_-1b§.§_-dX§();
            }
         }
      }
      
      public function §_-dP§(param1:Number) : void
      {
         var _loc2_:DisplayObject = null;
         if(param1 < this.§_-iH§.numChildren)
         {
            _loc2_ = this.§_-iH§.getChildAt(param1);
         }
         else if(param1 - this.§_-iH§.numChildren < this.§_-Vd§.numChildren)
         {
            _loc2_ = this.§_-Vd§.getChildAt(param1 - this.§_-iH§.numChildren);
         }
         if(_loc2_)
         {
            _loc2_.visible = !_loc2_.visible;
         }
      }
      
      public function §_-ty§(param1:Number, param2:Number) : void
      {
         var _loc3_:int = 0;
         this.§_-gm§ = param1;
         this.§_-by§ = param2;
         if(this.§_-9E§ != null)
         {
            _loc3_ = 0;
            while(_loc3_ < this.§_-9E§.length)
            {
               this.§_-9E§[_loc3_].setSideScroll(this.§_-gm§,this.§_-by§);
               _loc3_++;
            }
         }
         if(this.§_-YG§ != null)
         {
            this.§_-YG§.scaleX = this.§_-YG§.scaleY = 1 / §_-Hz§.§_-sV§;
            this.§_-YG§.x = -§_-Hz§.§_-F5§ * (1 / §_-Hz§.§_-sV§);
            this.§_-YG§.y = this.§_-1u§ - this.§_-by§;
         }
      }
      
      public function §_-hB§() : String
      {
         return this.§_-F7§.mName;
      }
   }
}
