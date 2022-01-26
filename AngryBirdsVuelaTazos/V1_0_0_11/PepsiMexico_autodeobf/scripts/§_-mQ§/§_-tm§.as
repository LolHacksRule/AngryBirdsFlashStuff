package §_-mQ§
{
   import §_-5A§.§_-KW§;
   import §_-5A§.§_-Lu§;
   import §_-5x§.§_-8p§;
   import §_-5x§.§_-L0§;
   import §_-Bp§.§_-5N§;
   import §_-Bp§.§_-Po§;
   import §_-ZG§.§_-Ne§;
   import §_-d5§.§_-6Y§;
   import §_-ez§.§_-8g§;
   import §_-vO§.DisplayObject;
   import §_-vO§.Sprite;
   import §_-vO§.§_-O9§;
   
   public class §_-tm§
   {
      
      public static const §_-dp§:Boolean = true;
       
      
      private var §_-CP§:§_-Po§;
      
      private var §_-aH§:§_-5N§;
      
      private var §_-Sp§:§_-KW§;
      
      private var §_-sW§:Vector.<§_-n5§>;
      
      private var §_-aS§:Sprite;
      
      private var §_-em§:Sprite;
      
      private var §_-9X§:Sprite;
      
      private var §_-n-§:Number;
      
      private var §_-TY§:Number;
      
      private var §_-SX§:Number;
      
      private var §_-kY§:Boolean = true;
      
      private var §_-oD§:Boolean = true;
      
      private var §_-eK§:§_-L0§;
      
      public function §_-tm§(param1:String, param2:Number, param3:§_-Po§, param4:§_-5N§)
      {
         this.§_-sW§ = new Vector.<§_-n5§>();
         super();
         this.§_-CP§ = param3;
         this.§_-aH§ = param4;
         this.§_-TY§ = 0;
         this.§_-SX§ = 0;
         this.§_-n-§ = param2;
         this.§_-aS§ = new Sprite();
         this.§_-em§ = new Sprite();
         this.§_-9X§ = new Sprite();
         this.§_-Ij§(param1);
      }
      
      public function get §_-P5§() : Boolean
      {
         return this.§_-kY§;
      }
      
      public function get §_-6n§() : Sprite
      {
         return this.§_-9X§;
      }
      
      public function get §_-1H§() : Sprite
      {
         return this.§_-aS§;
      }
      
      public function get §_-Iw§() : Sprite
      {
         return this.§_-em§;
      }
      
      public function dispose() : void
      {
         this.§_-hB§();
         if(this.§_-aS§)
         {
            this.§_-aS§.dispose();
            this.§_-aS§ = null;
         }
         if(this.§_-em§)
         {
            this.§_-em§.dispose();
            this.§_-em§ = null;
         }
         if(this.§_-9X§)
         {
            this.§_-9X§.dispose();
            this.§_-9X§ = null;
         }
      }
      
      public function §_-IQ§() : Boolean
      {
         return this.§_-oD§;
      }
      
      public function §_-uw§(param1:Boolean) : void
      {
         if(this.§_-oD§ == param1)
         {
            return;
         }
         this.§_-oD§ = param1;
         if(!param1)
         {
            this.§_-hB§();
         }
         else
         {
            this.§_-Ij§(this.§_-Sp§.mName);
         }
      }
      
      public function §_-VP§() : String
      {
         return this.§_-Sp§.§_-I5§;
      }
      
      private function §_-hB§() : void
      {
         while(this.§_-em§.numChildren > 0)
         {
            this.§_-em§.removeChildAt(0,true);
         }
         while(this.§_-aS§.numChildren > 0)
         {
            this.§_-aS§.removeChildAt(0,true);
         }
         while(this.§_-sW§.length > 0)
         {
            this.§_-sW§.pop().dispose();
         }
      }
      
      private function §_-Ij§(param1:String) : void
      {
         var _loc3_:Sprite = null;
         var _loc4_:§_-n5§ = null;
         this.§_-Sp§ = §_-Lu§.§_-uW§(param1);
         if(this.§_-Sp§ == null)
         {
            §_-Ne§.log("UNKNOWN LEVEL THEME! " + param1);
            param1 = "BACKGROUND_BLUE_GRASS";
            this.§_-Sp§ = §_-Lu§.§_-uW§("BACKGROUND_BLUE_GRASS");
         }
         this.§_-aS§.y = this.§_-n-§;
         this.§_-em§.y = this.§_-n-§;
         this.§_-9X§.y = this.§_-n-§;
         this.§_-Fv§();
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-Sp§.§_-sW§.length)
         {
            _loc3_ = new Sprite();
            _loc4_ = new §_-n5§(this.§_-Sp§.§_-sW§[_loc2_],_loc3_,this.§_-aH§);
            this.§_-sW§.push(_loc4_);
            if(_loc4_.§_-gW§)
            {
               this.§_-em§.addChild(_loc3_);
            }
            else
            {
               this.§_-aS§.addChild(_loc3_);
            }
            _loc2_++;
         }
      }
      
      private function §_-Fv§() : void
      {
         if(§_-6Y§.§true§)
         {
            §_-6Y§.§true§.color = this.§_-Sp§.§_-W5§;
         }
         var _loc1_:§_-O9§ = new §_-O9§(4096,4096,uint(this.§_-Sp§.§_-Nv§));
         _loc1_.y = 0;
         this.§_-9X§.addChild(_loc1_);
      }
      
      public function §_-T5§(param1:String) : void
      {
         this.§_-hB§();
         §_-Ne§.log("Switch background! NEW BACKGROUND NAME = " + param1);
         this.§_-Ij§(param1);
      }
      
      public function §_-UH§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:§_-n5§ = null;
         if(param1 == this.§_-kY§)
         {
            return;
         }
         this.§_-kY§ = param1;
         for each(_loc3_ in this.§_-sW§)
         {
            _loc3_.§_-UH§(param1);
         }
      }
      
      public function §_-3x§() : void
      {
         this.§_-eK§ = §_-8p§.§_-rD§(this.§_-Sp§.§_-s-§,§_-8p§.§_-Uz§,999);
      }
      
      public function §_-o-§() : void
      {
         if(this.§_-eK§)
         {
            if(this.§_-eK§.§_-5q§)
            {
               this.§_-eK§.§_-5q§.stop();
               this.§_-eK§.§_-Ow§();
            }
         }
      }
      
      public function §_-C9§(param1:Number) : void
      {
         var _loc2_:DisplayObject = null;
         if(param1 < this.§_-aS§.numChildren)
         {
            _loc2_ = this.§_-aS§.getChildAt(param1);
         }
         else if(param1 - this.§_-aS§.numChildren < this.§_-em§.numChildren)
         {
            _loc2_ = this.§_-em§.getChildAt(param1 - this.§_-aS§.numChildren);
         }
         if(_loc2_)
         {
            _loc2_.visible = !_loc2_.visible;
         }
      }
      
      public function §do§(param1:Number, param2:Number) : void
      {
         var _loc3_:int = 0;
         this.§_-TY§ = param1;
         this.§_-SX§ = param2;
         if(this.§_-sW§ != null)
         {
            _loc3_ = 0;
            while(_loc3_ < this.§_-sW§.length)
            {
               this.§_-sW§[_loc3_].setSideScroll(this.§_-TY§,this.§_-SX§);
               _loc3_++;
            }
         }
         if(this.§_-9X§ != null)
         {
            this.§_-9X§.scaleX = this.§_-9X§.scaleY = 1 / §_-8g§.§_-YI§;
            this.§_-9X§.x = -§_-8g§.§_-1e§ * (1 / §_-8g§.§_-YI§);
            this.§_-9X§.y = this.§_-n-§ - this.§_-SX§;
         }
      }
      
      public function §_-tY§() : String
      {
         return this.§_-Sp§.mName;
      }
   }
}
