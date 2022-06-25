package starling.events
{
   import §'!9§.§?!U§;
   import §'!9§.Sprite;
   import §^!+§.Texture;
   import flash.display3D.Context3D;
   import flash.geom.Point;
   
   class §#a§ extends Sprite
   {
      
      private static var §!!Q§:Class;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §!!Q§ = TouchMarker_TouchMarkerBmp;
         }
      }
      
      private var §&!l§:Point;
      
      private var §[!5§:Texture;
      
      function §#a§(param1:Context3D)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§?!U§ = null;
         if(_loc5_ || this)
         {
            super();
         }
         loop0:
         while(true)
         {
            addr45:
            addr61:
            addr167:
            while(true)
            {
               this.§&!l§ = new Point();
               continue loop0;
            }
            var _loc2_:int = 0;
            loop3:
            while(_loc2_ < 2)
            {
               _loc3_ = new §?!U§(this.§[!5§);
               if(_loc5_ || _loc3_)
               {
                  §§push(_loc3_);
                  §§push(this.§[!5§.width);
                  if(!(_loc4_ && this))
                  {
                     §§push(§§pop() / 2);
                  }
                  §§pop().pivotX = §§pop();
               }
               while(true)
               {
                  §§push(_loc3_);
                  §§push(this.§[!5§.height);
                  if(!(_loc4_ && param1))
                  {
                     §§push(§§pop() / 2);
                  }
                  §§pop().pivotY = §§pop();
                  loop5:
                  while(true)
                  {
                     _loc3_.§@!U§ = false;
                     loop6:
                     while(true)
                     {
                        addr107:
                        while(true)
                        {
                           addChild(_loc3_);
                           addr111:
                           while(_loc5_)
                           {
                              continue loop5;
                           }
                           continue loop6;
                        }
                        continue loop3;
                     }
                  }
                  if(_loc4_ && this)
                  {
                     continue;
                  }
                  if(true)
                  {
                     continue loop3;
                  }
                  §§goto(addr107);
               }
            }
            return;
         }
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.§[!5§.dispose();
         }
         do
         {
            super.dispose();
         }
         while(!_loc2_);
         
      }
      
      public function §?>§(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && this))
         {
            if(param3)
            {
               loop0:
               while(true)
               {
                  this.§&!l§.x += param1 - this.§^!^§.x;
                  addr196:
                  while(true)
                  {
                     this.§&!l§.y += param2 - this.§^!^§.y;
                     addr181:
                     while(true)
                     {
                        addr135:
                        while(_loc5_ || this)
                        {
                           continue loop0;
                        }
                     }
                  }
               }
            }
            while(true)
            {
               §§goto(addr153);
               §§goto(addr181);
            }
         }
         §§goto(addr96);
      }
      
      public function §'e§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.§&!l§.x = param1;
         }
         while(true)
         {
            this.§&!l§.y = param2;
            while(_loc4_ || _loc3_)
            {
               this.§?>§(this.§;P§,this.§0w§);
               if(_loc4_ || _loc3_)
               {
                  return;
               }
            }
         }
      }
      
      private function get §^!^§() : §?!U§
      {
         return getChildAt(0) as §?!U§;
      }
      
      private function get §5n§() : §?!U§
      {
         return getChildAt(1) as §?!U§;
      }
      
      public function get §;P§() : Number
      {
         return this.§^!^§.x;
      }
      
      public function get §0w§() : Number
      {
         return this.§^!^§.y;
      }
      
      public function get §;d§() : Number
      {
         return this.§5n§.x;
      }
      
      public function get §6!=§() : Number
      {
         return this.§5n§.y;
      }
   }
}
