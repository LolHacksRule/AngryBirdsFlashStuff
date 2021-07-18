package § w§
{
   import §%!n§.§;!'§;
   import §`!#§.§[!s§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   
   public class §"^§ extends §[!s§
   {
       
      
      private var §[l§:DisplayObject;
      
      private var §9!#§:DisplayObjectContainer;
      
      public function §"^§(param1:§;!'§, param2:DisplayObject)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            super(param1);
         }
         do
         {
            this.§[l§ = param2;
         }
         while(_loc4_ && param1);
         
      }
      
      public function get target() : DisplayObject
      {
         return this.§[l§;
      }
      
      override protected function rollback() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §§push(this.§[l§ == null);
            while(true)
            {
               §§push(!§§pop());
               if(_loc1_ || _loc1_)
               {
                  if(!§§pop())
                  {
                     while(true)
                     {
                        if(§§pop())
                        {
                           if(_loc1_ || _loc2_)
                           {
                              if(_loc2_ && this)
                              {
                                 loop2:
                                 while(true)
                                 {
                                    §§push(this.§9!#§ == null);
                                    if(_loc2_)
                                    {
                                       break;
                                    }
                                    if(!_loc2_)
                                    {
                                       §§push(!§§pop());
                                       break;
                                    }
                                    addr108:
                                    while(true)
                                    {
                                       §§pop();
                                       continue loop2;
                                    }
                                 }
                                 continue;
                              }
                              this.§9!#§.addChild(this.§[l§);
                              do
                              {
                                 this.§9!#§ = null;
                              }
                              while(_loc2_);
                              
                              addr83:
                           }
                           §§goto(addr83);
                        }
                        return;
                     }
                     continue;
                     addr62:
                  }
               }
               §§goto(addr108);
            }
         }
         §§goto(addr83);
      }
      
      override protected function action() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§[l§ == null);
            while(true)
            {
               §§push(!§§pop());
               if(!(_loc1_ && _loc2_))
               {
                  if(!§§pop())
                  {
                     loop1:
                     while(true)
                     {
                        while(§§pop())
                        {
                           if(_loc2_ || _loc2_)
                           {
                              this.§9!#§ = this.§[l§.parent;
                           }
                           do
                           {
                              this.§9!#§.removeChild(this.§[l§);
                           }
                           while(!(_loc2_ || this));
                           
                           if(_loc2_)
                           {
                              addr39:
                              break;
                           }
                           loop4:
                           while(true)
                           {
                              §§push(this.§[l§.parent == null);
                              if(_loc1_ && _loc1_)
                              {
                                 break;
                              }
                              if(_loc2_)
                              {
                                 continue loop1;
                              }
                              addr112:
                              while(true)
                              {
                                 §§pop();
                                 continue loop4;
                              }
                           }
                        }
                        return;
                     }
                     continue;
                     addr73:
                  }
               }
               §§goto(addr112);
            }
         }
         §§goto(addr39);
      }
   }
}
