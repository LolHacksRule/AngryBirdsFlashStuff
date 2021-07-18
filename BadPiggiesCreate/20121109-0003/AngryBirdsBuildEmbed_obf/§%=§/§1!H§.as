package §%=§
{
   import §4!7§.§%!m§;
   import §;!,§.§#D§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   
   public class §1!H§ extends §#D§
   {
       
      
      private var §?!p§:DisplayObject;
      
      private var _parent:DisplayObjectContainer;
      
      public function §1!H§(param1:§%!m§, param2:DisplayObject, param3:DisplayObjectContainer)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            super(param1);
            if(_loc5_ || param3)
            {
               this.§?!p§ = param2;
               if(!(_loc4_ && this))
               {
                  addr49:
                  this._parent = param3;
               }
               return;
            }
         }
         §§goto(addr49);
      }
      
      public function get target() : DisplayObject
      {
         return this.§?!p§;
      }
      
      override protected function rollback() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §§push(this.§?!p§ != null);
            §§push(this.§?!p§ != null);
            if(!(_loc1_ && this))
            {
               if(§§pop())
               {
                  if(!_loc1_)
                  {
                     §§pop();
                     if(!(_loc1_ && this))
                     {
                        addr73:
                        addr74:
                        §§push(this._parent != null);
                        if(this._parent != null)
                        {
                           if(_loc2_)
                           {
                              §§pop();
                              §§goto(addr94);
                           }
                        }
                        if(§§pop())
                        {
                           if(_loc2_ || this)
                           {
                              §§goto(addr94);
                           }
                        }
                     }
                     §§goto(addr94);
                  }
               }
               §§goto(addr73);
            }
            §§goto(addr74);
         }
         addr94:
         if(_loc2_)
         {
            §§push(this.§?!p§.parent == this._parent);
         }
         this._parent.removeChild(this.§?!p§);
      }
      
      override protected function action() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§?!p§ != null);
            §§push(this.§?!p§ != null);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  if(_loc1_)
                  {
                     §§pop();
                     if(!_loc2_)
                     {
                        §§push(this._parent != null);
                        if(!(_loc2_ && this))
                        {
                           addr54:
                           if(§§pop())
                           {
                              §§goto(addr66);
                           }
                           §§goto(addr81);
                        }
                        addr66:
                        §§pop();
                        if(!(_loc2_ && _loc2_))
                        {
                           addr81:
                           if(this.§?!p§.parent != this._parent)
                           {
                              if(_loc2_ && _loc2_)
                              {
                              }
                           }
                           §§goto(addr94);
                        }
                        this._parent.addChild(this.§?!p§);
                        §§goto(addr94);
                     }
                  }
                  §§goto(addr81);
               }
            }
            §§goto(addr54);
         }
         addr94:
      }
      
      public function get parent() : DisplayObjectContainer
      {
         return this._parent;
      }
   }
}
