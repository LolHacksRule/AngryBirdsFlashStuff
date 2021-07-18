package starling.events
{
   import §7R§.Texture;
   import §default§.§=!Z§;
   import §default§.Sprite;
   import flash.display3D.Context3D;
   import flash.geom.Point;
   
   class §<E§ extends Sprite
   {
      
      private static var §?"!§:Class;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §?"!§ = TouchMarker_TouchMarkerBmp;
         }
      }
      
      private var §,!S§:Point;
      
      private var §+!m§:Texture;
      
      function §<E§(param1:Context3D)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§=!Z§ = null;
         if(_loc5_)
         {
            super();
            loop0:
            while(true)
            {
               addr35:
               while(true)
               {
                  this.§,!S§ = new Point();
                  continue loop0;
               }
            }
         }
         while(true)
         {
            this.§+!m§ = Texture.§5s§(param1,new §?"!§());
            if(!_loc4_)
            {
               if(true)
               {
                  break;
               }
               §§goto(addr35);
            }
            §§goto(addr40);
         }
         var _loc2_:int = 0;
         loop4:
         while(_loc2_ < 2)
         {
            _loc3_ = new §=!Z§(this.§+!m§);
            if(!_loc4_)
            {
               §§push(_loc3_);
               §§push(this.§+!m§.width);
               if(!(_loc4_ && this))
               {
                  §§push(§§pop() / 2);
               }
               §§pop().pivotX = §§pop();
               loop5:
               while(true)
               {
                  §§push(_loc3_);
                  §§push(this.§+!m§.height);
                  if(!(_loc4_ && _loc2_))
                  {
                     §§push(§§pop() / 2);
                  }
                  §§pop().pivotY = §§pop();
                  while(true)
                  {
                     _loc3_.§#!1§ = false;
                     while(_loc5_)
                     {
                        while(true)
                        {
                           addChild(_loc3_);
                           do
                           {
                              _loc2_++;
                           }
                           while(_loc4_ && _loc3_);
                           
                           if(!(_loc5_ || _loc3_))
                           {
                              break;
                           }
                           if(_loc5_)
                           {
                              if(false)
                              {
                                 continue;
                              }
                              continue loop4;
                           }
                           continue loop5;
                        }
                     }
                  }
               }
            }
            while(true)
            {
               §§goto(addr94);
            }
         }
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            this.§+!m§.dispose();
            do
            {
               super.dispose();
            }
            while(_loc1_);
            
         }
      }
      
      public function §8!k§(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param3)
         {
            if(param3)
            {
               while(true)
               {
                  this.§,!S§.x += param1 - this.§,§.x;
                  addr175:
                  while(true)
                  {
                     this.§,!S§.y += param2 - this.§,§.y;
                     addr150:
                     while(true)
                     {
                     }
                  }
                  addr121:
                  if(_loc5_ && param2)
                  {
                     continue;
                  }
                  §§push(this.§+q§);
                  loop6:
                  while(true)
                  {
                     §§push(2);
                     addr97:
                     while(true)
                     {
                        §§push(§§pop() * this.§,!S§.x);
                        addr101:
                        while(true)
                        {
                           §§push(param1);
                           addr102:
                           while(true)
                           {
                              §§push(§§pop() - §§pop());
                              addr103:
                              while(true)
                              {
                                 §§pop().x = §§pop();
                                 continue loop6;
                              }
                           }
                        }
                     }
                  }
               }
            }
            while(true)
            {
               §§goto(addr132);
               §§goto(addr150);
            }
         }
         §§goto(addr175);
      }
      
      public function §='§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || this)
         {
            this.§,!S§.x = param1;
         }
         do
         {
            this.§,!S§.y = param2;
            do
            {
               this.§8!k§(this.§7!$§,this.§3!6§);
            }
            while(!(_loc4_ || param1));
            
         }
         while(!_loc4_);
         
      }
      
      private function get §,§() : §=!Z§
      {
         return getChildAt(0) as §=!Z§;
      }
      
      private function get §+q§() : §=!Z§
      {
         return getChildAt(1) as §=!Z§;
      }
      
      public function get §7!$§() : Number
      {
         return this.§,§.x;
      }
      
      public function get §3!6§() : Number
      {
         return this.§,§.y;
      }
      
      public function get § ^§() : Number
      {
         return this.§+q§.x;
      }
      
      public function get §'c§() : Number
      {
         return this.§+q§.y;
      }
   }
}
