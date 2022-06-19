package §_-0-r§
{
   import §_-4I§.§_-v8§;
   import §_-5b§.§_-Vj§;
   import §_-E5§.§_-DK§;
   import §_-E5§.§_-Wo§;
   import §_-KM§.§_-0A§;
   import §_-o§.§_-86§;
   import §_-o§.§_-Qs§;
   import §_-o§.§_-a0§;
   import §_-r6§.§_-Oy§;
   import §case §.DisplayObject;
   import §case §.Sprite;
   import §case §.§_-Gm§;
   import override.§_-Eu§;
   
   public class §_-Nu§
   {
      
      public static const §_-H1§:Boolean = true;
       
      
      private var §_-BB§:§_-v8§;
      
      private var §_-8X§:§_-Qs§;
      
      private var §_-00V§:Vector.<§_-zW§>;
      
      private var §_-ig§:Sprite;
      
      private var §_-eh§:Sprite;
      
      private var §_-xx§:Sprite;
      
      private var §_-2A§:Number;
      
      private var §_-Ed§:Number;
      
      private var §_-ip§:Number;
      
      private var §_-Sz§:Boolean = true;
      
      private var §_-t5§:Boolean = true;
      
      private var §_-vS§:§_-DK§;
      
      private var §_-lK§:Number;
      
      public function §_-Nu§(param1:String, param2:Number, param3:§_-v8§, param4:Number)
      {
         this.§_-00V§ = new Vector.<§_-zW§>();
         super();
         this.§_-BB§ = param3;
         this.§_-Ed§ = 0;
         this.§_-ip§ = 0;
         this.§_-2A§ = param2;
         this.§_-ig§ = new Sprite();
         this.§_-eh§ = new Sprite();
         this.§_-xx§ = new Sprite();
         this.§_-lK§ = param4;
         this.§_-qm§(param1,param4);
      }
      
      public function get §_-lx§() : Boolean
      {
         return this.§_-Sz§;
      }
      
      public function get §_-SG§() : Sprite
      {
         return this.§_-xx§;
      }
      
      public function get §_-5Y§() : Sprite
      {
         return this.§_-ig§;
      }
      
      public function get §for§() : Sprite
      {
         return this.§_-eh§;
      }
      
      protected function get §_-91§() : §_-v8§
      {
         return this.§_-BB§;
      }
      
      public function dispose() : void
      {
         this.§_-tt§();
         if(this.§_-ig§)
         {
            this.§_-ig§.dispose();
            this.§_-ig§ = null;
         }
         if(this.§_-eh§)
         {
            this.§_-eh§.dispose();
            this.§_-eh§ = null;
         }
         if(this.§_-xx§)
         {
            this.§_-xx§.dispose();
            this.§_-xx§ = null;
         }
      }
      
      public function §_-XM§() : Boolean
      {
         return this.§_-t5§;
      }
      
      public function §_-JY§(param1:Boolean) : void
      {
         if(this.§_-t5§ == param1)
         {
            return;
         }
         this.§_-t5§ = param1;
         if(!param1)
         {
            this.§_-tt§();
         }
         else
         {
            this.§_-qm§(this.§_-8X§.mName,this.§_-lK§);
         }
      }
      
      public function §_-JM§() : String
      {
         return this.§_-8X§.§_-DN§;
      }
      
      private function §_-tt§() : void
      {
         while(this.§_-eh§.numChildren > 0)
         {
            this.§_-eh§.removeChildAt(0,true);
         }
         while(this.§_-ig§.numChildren > 0)
         {
            this.§_-ig§.removeChildAt(0,true);
         }
         while(this.§_-00V§.length > 0)
         {
            this.§_-00V§.pop().dispose();
         }
      }
      
      private function §_-qm§(param1:String, param2:Number) : void
      {
         var _loc4_:§_-86§ = null;
         var _loc5_:Sprite = null;
         var _loc6_:§_-zW§ = null;
         this.§_-8X§ = §_-a0§.§_-00p§(param1);
         if(this.§_-8X§ == null)
         {
            §_-Oy§.log("UNKNOWN LEVEL THEME! " + param1);
            param1 = §_-Vj§.§_-n2§;
            this.§_-8X§ = §_-a0§.§_-00p§(param1);
         }
         this.§_-ig§.y = this.§_-2A§;
         this.§_-eh§.y = this.§_-2A§;
         this.§_-xx§.y = this.§_-2A§;
         this.§_-MY§();
         var _loc3_:int = 0;
         while(_loc3_ < this.§_-8X§.§_-00V§.length)
         {
            _loc4_ = this.§_-8X§.§_-00V§[_loc3_];
            if(!§_-0A§.§_-lj§ || !_loc4_.§_-9Q§)
            {
               _loc5_ = new Sprite();
               _loc6_ = new §_-zW§(_loc4_,_loc5_,this.§_-BB§,param2);
               this.§_-00V§.push(_loc6_);
               if(_loc6_.§_-zC§)
               {
                  this.§_-eh§.addChild(_loc5_);
               }
               else
               {
                  this.§_-ig§.addChild(_loc5_);
               }
            }
            else if(_loc4_.§_-MH§)
            {
               this.§_-d0§(parseInt(_loc4_.§_-MH§,16));
            }
            _loc3_++;
         }
      }
      
      private function §_-MY§() : void
      {
         var _loc1_:§_-Gm§ = null;
         if(this.§_-8X§.§_-64§)
         {
            this.§_-d0§(this.§_-8X§.§_-64§);
         }
         if(this.§_-8X§.§_-1P§)
         {
            _loc1_ = this.§_-1U§(uint(this.§_-8X§.§_-1P§));
            _loc1_.y = 0;
            this.§_-xx§.addChild(_loc1_);
         }
      }
      
      protected function §_-1U§(param1:uint) : §_-Gm§
      {
         return new §_-Gm§(4096,4096,param1);
      }
      
      private function §_-d0§(param1:int) : void
      {
         if(§_-0A§.§_-bz§)
         {
            §_-0A§.§_-bz§.color = param1;
         }
      }
      
      public function §_-2E§(param1:String) : void
      {
         this.§_-tt§();
         §_-Oy§.log("Switch background! NEW BACKGROUND NAME = " + param1);
         this.§_-qm§(param1,this.§_-lK§);
      }
      
      public function §_-ci§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:§_-zW§ = null;
         if(param1 == this.§_-Sz§)
         {
            return;
         }
         this.§_-Sz§ = param1;
         for each(_loc3_ in this.§_-00V§)
         {
            _loc3_.§_-ci§(param1);
         }
      }
      
      public function §_-7z§() : void
      {
         if(§_-Wo§.§_-XO§("CHANNEL_AMBIENT") == null || !§_-Wo§.§_-XO§("CHANNEL_AMBIENT").§_-Ll§())
         {
            §_-Wo§.playSound(this.§_-8X§.§_-Pn§,"CHANNEL_AMBIENT",999);
         }
      }
      
      public function §_-9e§() : void
      {
         §_-Wo§.§_-qF§("CHANNEL_AMBIENT");
      }
      
      public function §_-Ym§(param1:Number) : void
      {
         var _loc2_:DisplayObject = null;
         if(param1 < this.§_-ig§.numChildren)
         {
            _loc2_ = this.§_-ig§.getChildAt(param1);
         }
         else if(param1 - this.§_-ig§.numChildren < this.§_-eh§.numChildren)
         {
            _loc2_ = this.§_-eh§.getChildAt(param1 - this.§_-ig§.numChildren);
         }
         if(_loc2_)
         {
            _loc2_.visible = !_loc2_.visible;
         }
      }
      
      public function §_-FQ§(param1:Number, param2:Number) : void
      {
         var _loc3_:int = 0;
         this.§_-Ed§ = param1;
         this.§_-ip§ = param2;
         if(this.§_-00V§ != null)
         {
            _loc3_ = 0;
            while(_loc3_ < this.§_-00V§.length)
            {
               this.§_-00V§[_loc3_].setSideScroll(this.§_-Ed§,this.§_-ip§);
               _loc3_++;
            }
         }
         if(this.§_-xx§ != null)
         {
            this.§_-xx§.scaleX = this.§_-xx§.scaleY = 1 / §_-Eu§.§_-Ae§;
            this.§_-xx§.x = -§_-Eu§.§_-hh§ * (1 / §_-Eu§.§_-Ae§);
            this.§_-xx§.y = this.§_-2A§ - this.§_-ip§;
         }
      }
      
      public function §_-tA§() : String
      {
         return this.§_-8X§.mName;
      }
      
      public function update(param1:Number) : void
      {
      }
   }
}
