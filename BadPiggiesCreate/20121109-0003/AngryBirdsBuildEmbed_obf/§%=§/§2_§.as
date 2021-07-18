package §%=§
{
   import §4!7§.§%!m§;
   import §;!,§.§#D§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   
   public class §2_§ extends §#D§
   {
       
      
      private var §?!p§:DisplayObject;
      
      private var _parent:DisplayObjectContainer;
      
      public function §2_§(param1:§%!m§, param2:DisplayObject)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super(param1);
            if(_loc4_ || _loc3_)
            {
               this.§?!p§ = param2;
            }
         }
      }
      
      public function get target() : DisplayObject
      {
         return this.§?!p§;
      }
      
      override protected function rollback() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§?!p§ == null);
            if(!_loc1_)
            {
               §§push(!§§pop());
               if(_loc2_)
               {
                  addr28:
                  if(§§pop())
                  {
                     if(!(_loc1_ && _loc1_))
                     {
                        §§pop();
                        if(_loc2_ || _loc1_)
                        {
                           §§push(this._parent == null);
                           if(!(_loc1_ && _loc2_))
                           {
                              §§goto(addr77);
                           }
                           addr77:
                           §§goto(addr76);
                        }
                        §§goto(addr80);
                     }
                     addr76:
                     if(!§§pop())
                     {
                        if(!_loc1_)
                        {
                           addr80:
                           this._parent.addChild(this.§?!p§);
                           if(!_loc1_)
                           {
                              addr87:
                              this._parent = null;
                           }
                        }
                        §§goto(addr87);
                     }
                     return;
                  }
               }
               §§goto(addr77);
            }
            §§goto(addr28);
         }
         §§goto(addr87);
      }
      
      override protected function action() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§?!p§ == null);
            if(!(_loc1_ && _loc2_))
            {
               §§push(!§§pop());
               if(_loc2_ || this)
               {
                  if(§§pop())
                  {
                     if(_loc2_)
                     {
                        §§pop();
                        if(_loc2_)
                        {
                           §§push(this.§?!p§.parent == null);
                           if(!_loc1_)
                           {
                              §§goto(addr73);
                           }
                           addr73:
                           §§goto(addr72);
                        }
                        §§goto(addr76);
                     }
                     addr72:
                     if(!§§pop())
                     {
                        if(_loc2_)
                        {
                           addr76:
                           this._parent = this.§?!p§.parent;
                           if(!(_loc1_ && _loc2_))
                           {
                              addr88:
                              this._parent.removeChild(this.§?!p§);
                           }
                        }
                        §§goto(addr88);
                     }
                     return;
                  }
               }
            }
            §§goto(addr73);
         }
         §§goto(addr88);
      }
   }
}
