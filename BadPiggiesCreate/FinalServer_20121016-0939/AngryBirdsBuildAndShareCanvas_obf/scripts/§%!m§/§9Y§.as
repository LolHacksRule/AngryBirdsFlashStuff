package §%!m§
{
   import §1!k§.§4!J§;
   import §=b§.§%"2§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   
   public class §9Y§ extends §4!J§
   {
       
      
      private var §"!c§:DisplayObject;
      
      private var §^"4§:DisplayObjectContainer;
      
      public function §9Y§(param1:§%"2§, param2:DisplayObject)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            super(param1);
         }
         do
         {
            this.§"!c§ = param2;
         }
         while(_loc4_);
         
      }
      
      public function get target() : DisplayObject
      {
         return this.§"!c§;
      }
      
      override protected function rollback() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§"!c§ == null);
            if(_loc2_)
            {
               §§push(!§§pop());
            }
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §§pop();
                     addr95:
                     do
                     {
                        §§push(this.§^"4§ == null);
                        if(!_loc1_)
                        {
                           §§push(!§§pop());
                        }
                        if(!(_loc2_ || _loc2_))
                        {
                           continue loop1;
                        }
                     }
                     while(_loc2_);
                     
                     continue loop0;
                  }
               }
               while(§§pop())
               {
                  do
                  {
                     if(_loc2_)
                     {
                        continue;
                     }
                     §§goto(addr95);
                  }
                  while(this.§^"4§.addChild(this.§"!c§), do
                  {
                     this.§^"4§ = null;
                  }
                  while(!_loc2_);
                  , !(_loc2_ || _loc1_));
                  
                  break;
               }
               return;
            }
         }
         §§goto(addr37);
      }
      
      override protected function action() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§"!c§ == null);
            if(!_loc2_)
            {
               §§push(!§§pop());
               loop0:
               while(true)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        addr107:
                        while(true)
                        {
                           §§push(this.§"!c§.parent == null);
                           if(!_loc2_)
                           {
                              §§push(!§§pop());
                           }
                           if(!(_loc1_ || _loc2_))
                           {
                              break;
                           }
                           if(!_loc2_)
                           {
                              break;
                           }
                           continue loop0;
                        }
                     }
                     addr106:
                  }
                  while(§§pop())
                  {
                     loop4:
                     while(true)
                     {
                        this.§^"4§ = this.§"!c§.parent;
                        while(true)
                        {
                           if(!(_loc2_ && _loc2_))
                           {
                              this.§^"4§.removeChild(this.§"!c§);
                              if(!(_loc2_ && this))
                              {
                                 continue loop4;
                              }
                              continue;
                           }
                           §§goto(addr107);
                        }
                     }
                  }
                  return;
               }
            }
            §§goto(addr106);
         }
         §§goto(addr74);
      }
   }
}
