package §_-vg§
{
   import §_-Xz§.§_-Ps§;
   import §_-xo§.§_-t9§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   
   public class §_-L9§ extends §_-t9§
   {
       
      
      private var §_-9Z§:DisplayObject;
      
      private var §_-AP§:DisplayObjectContainer;
      
      public function §_-L9§(param1:§_-Ps§, param2:DisplayObject, param3:DisplayObjectContainer)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            super(param1);
            if(_loc5_)
            {
               this.§_-9Z§ = param2;
               if(!_loc4_)
               {
                  addr33:
                  this.§_-AP§ = param3;
               }
            }
            return;
         }
         §§goto(addr33);
      }
      
      public function get target() : DisplayObject
      {
         return this.§_-9Z§;
      }
      
      override protected function rollback() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§_-9Z§ != null);
            if(_loc1_ || _loc2_)
            {
               §§push(§§pop());
               if(!_loc2_)
               {
                  if(§§pop())
                  {
                     if(_loc1_)
                     {
                        §§pop();
                        if(!_loc2_)
                        {
                           addr48:
                           §§push(this.§_-AP§ != null);
                           if(this.§_-AP§ != null)
                           {
                              §§pop();
                              if(!_loc2_)
                              {
                                 §§goto(addr66);
                              }
                           }
                           §§goto(addr66);
                        }
                        §§goto(addr69);
                     }
                     addr66:
                     if(this.§_-9Z§.parent == this.§_-AP§)
                     {
                        if(!_loc2_)
                        {
                           addr69:
                           this.§_-AP§.removeChild(this.§_-9Z§);
                        }
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr48);
      }
      
      override protected function action() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§_-9Z§ == null);
            if(_loc2_)
            {
               §§push(!§§pop());
               §§push(!§§pop());
               if(_loc2_)
               {
                  if(§§pop())
                  {
                     §§pop();
                     if(!_loc1_)
                     {
                        §§push(this.§_-AP§ != null);
                        if(!_loc1_)
                        {
                           addr44:
                           addr45:
                           if(§§pop())
                           {
                              if(_loc2_)
                              {
                                 §§pop();
                                 §§goto(addr75);
                              }
                              §§goto(addr71);
                           }
                           if(§§pop())
                           {
                              if(_loc2_)
                              {
                                 §§goto(addr75);
                              }
                           }
                           §§goto(addr75);
                        }
                        §§goto(addr71);
                     }
                     addr75:
                     if(_loc2_)
                     {
                        addr51:
                        §§push(this.§_-9Z§.parent == this.§_-AP§);
                        if(_loc2_ || this)
                        {
                           addr71:
                           §§push(!§§pop());
                        }
                     }
                     this.§_-AP§.addChild(this.§_-9Z§);
                     return;
                  }
                  §§goto(addr44);
               }
               §§goto(addr45);
            }
            §§goto(addr71);
         }
         §§goto(addr51);
      }
      
      public function get parent() : DisplayObjectContainer
      {
         return this.§_-AP§;
      }
   }
}
