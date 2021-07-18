package §_-vg§
{
   import §_-Xz§.§_-Ps§;
   import §_-xo§.§_-t9§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   
   public class §_-z4§ extends §_-t9§
   {
       
      
      private var §_-9Z§:DisplayObject;
      
      private var §_-AP§:DisplayObjectContainer;
      
      public function §_-z4§(param1:§_-Ps§, param2:DisplayObject)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param1)
         {
            super(param1);
            if(_loc3_ || this)
            {
               this.§_-9Z§ = param2;
            }
         }
      }
      
      public function get target() : DisplayObject
      {
         return this.§_-9Z§;
      }
      
      override protected function rollback() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §§push(this.§_-9Z§ == null);
            if(_loc1_)
            {
               §§push(!§§pop());
               if(!_loc2_)
               {
                  addr29:
                  if(§§pop())
                  {
                     if(_loc1_ || _loc1_)
                     {
                        §§pop();
                        if(_loc1_ || _loc1_)
                        {
                           §§push(this.§_-AP§ == null);
                           if(!_loc2_)
                           {
                              addr60:
                              if(!§§pop())
                              {
                                 if(_loc1_)
                                 {
                                    this.§_-AP§.addChild(this.§_-9Z§);
                                    addr63:
                                    if(_loc1_)
                                    {
                                       this.§_-AP§ = null;
                                    }
                                 }
                              }
                           }
                           §§goto(addr60);
                        }
                        return;
                     }
                  }
               }
               §§goto(addr60);
            }
            §§goto(addr29);
         }
         §§goto(addr63);
      }
      
      override protected function action() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §§push(this.§_-9Z§ == null);
            if(!_loc2_)
            {
               §§push(!§§pop());
               if(_loc1_)
               {
                  addr29:
                  if(§§pop())
                  {
                     if(!_loc2_)
                     {
                        §§pop();
                        if(!(_loc2_ && _loc1_))
                        {
                           §§push(this.§_-9Z§.parent == null);
                           if(_loc1_ || _loc2_)
                           {
                              addr61:
                              if(!§§pop())
                              {
                                 if(_loc1_)
                                 {
                                    this.§_-AP§ = this.§_-9Z§.parent;
                                    if(!_loc2_)
                                    {
                                       addr78:
                                       this.§_-AP§.removeChild(this.§_-9Z§);
                                    }
                                 }
                              }
                           }
                           §§goto(addr61);
                        }
                        return;
                     }
                  }
               }
               §§goto(addr61);
            }
            §§goto(addr29);
         }
         §§goto(addr78);
      }
   }
}
