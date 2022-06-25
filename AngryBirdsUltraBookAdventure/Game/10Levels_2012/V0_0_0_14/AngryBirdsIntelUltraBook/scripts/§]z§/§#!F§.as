package §]z§
{
   import §4[§.§-w§;
   import §4[§.§3!G§;
   import §4[§.§>!P§;
   import §4[§.§?O§;
   import §6z§.§[g§;
   import §>§.§[0§;
   import flash.display.Loader;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   
   public class §#!F§ extends §`V§
   {
      
      public static var §8%§:String;
      
      public static var §85§:Boolean = false;
      
      public static var §+`§:Dictionary;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §85§ = false;
            do
            {
               §+`§ = new Dictionary();
            }
            while(_loc2_ && _loc2_);
            
         }
      }
      
      private var §2C§:Loader;
      
      private var §+7§:§1!?§;
      
      public function §#!F§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            super();
         }
         do
         {
            this.init();
         }
         while(_loc1_);
         
      }
      
      private function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            addEventListener(MouseEvent.CLICK,this.§super§);
         }
      }
      
      private function §6D§(param1:Class) : §1!?§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            if(!§+`§[param1])
            {
               if(_loc3_ || _loc2_)
               {
                  addr54:
                  §+`§[param1] = [];
               }
            }
            var _loc2_:Array = §+`§[param1];
            if(!_loc4_)
            {
               if(_loc2_.length == 0)
               {
                  if(_loc3_)
                  {
                     §§goto(addr71);
                  }
               }
               return _loc2_.pop();
            }
            addr71:
            return new param1();
         }
         §§goto(addr54);
      }
      
      private function §68§(param1:§1!?§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:Class = Object(this.§+7§).constructor;
         if(_loc3_ || _loc3_)
         {
            if(!§+`§[_loc2_])
            {
               while(true)
               {
                  §+`§[_loc2_] = [];
                  addr79:
                  while(true)
                  {
                  }
               }
               addr75:
            }
            while(true)
            {
               §+`§[_loc2_].push(param1);
               if(!(_loc3_ || _loc2_))
               {
                  continue;
               }
               if(_loc3_)
               {
                  break;
               }
               §§goto(addr75);
            }
            return;
         }
         §§goto(addr79);
      }
      
      private function §^h§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:Class = null;
         var _loc3_:* = Object(this.§%"§).constructor;
         if(!(_loc5_ && _loc3_))
         {
            if(§-w§ === _loc3_)
            {
               if(_loc4_ || _loc3_)
               {
                  addr62:
                  §§push(0);
                  if(_loc5_)
                  {
                  }
               }
               else
               {
                  addr83:
                  §§push(2);
                  if(_loc4_ || _loc3_)
                  {
                     addr101:
                  }
               }
               addr106:
               switch(§§pop())
               {
                  case 0:
                     _loc1_ = §%!r§;
                     if(!_loc5_)
                     {
                        break;
                     }
                     var _loc2_:Class = !!this.§+7§ ? Object(this.§+7§).constructor : null;
                     addr125:
                     if(_loc4_)
                     {
                        if(_loc1_ != _loc2_)
                        {
                           loop0:
                           while(true)
                           {
                              §§push(this.§+7§);
                              addr192:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    if(!(_loc5_ && _loc2_))
                                    {
                                       this.§68§(removeChild(this.§+7§) as §1!?§);
                                    }
                                    while(true)
                                    {
                                    }
                                    addr208:
                                 }
                                 while(true)
                                 {
                                    this.§+7§ = addChild(this.§6D§(_loc1_)) as §1!?§;
                                    while(_loc4_)
                                    {
                                       §§pop().data = this.§%"§;
                                       if(!(_loc5_ && _loc3_))
                                       {
                                          if(!_loc5_)
                                          {
                                             return;
                                             addr163:
                                          }
                                          continue loop0;
                                       }
                                    }
                                    §§goto(addr208);
                                 }
                              }
                           }
                        }
                        while(true)
                        {
                           §§push(this.§+7§);
                           if(!_loc5_)
                           {
                              §§goto(addr151);
                           }
                           §§goto(addr192);
                        }
                     }
                     §§goto(addr163);
                  case 1:
                     _loc1_ = §-D§;
                     break;
                  case 2:
                     _loc1_ = §]!G§;
               }
               if(!_loc1_)
               {
                  if(_loc4_ || this)
                  {
                     §[g§.log("WARNING! Unknown score item found!");
                     if(_loc5_)
                     {
                        §§goto(addr128);
                     }
                  }
                  return;
               }
               §§goto(addr125);
               §§goto(addr128);
            }
            else
            {
               if(§3!G§ === _loc3_)
               {
                  if(_loc4_)
                  {
                     §§push(1);
                     if(!(_loc4_ || _loc1_))
                     {
                        §§goto(addr101);
                     }
                  }
                  else
                  {
                     §§goto(addr83);
                  }
               }
               else if(§>!P§ === _loc3_)
               {
                  §§goto(addr83);
               }
               else
               {
                  §§push(3);
               }
               §§goto(addr106);
            }
         }
         §§goto(addr62);
      }
      
      private function §super§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§%"§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               if(!(_loc2_ && _loc3_))
               {
                  if(!§§pop())
                  {
                     while(true)
                     {
                        if(§§pop())
                        {
                           if(!(_loc2_ && this))
                           {
                              if(_loc2_)
                              {
                                 continue loop0;
                              }
                              §3!Y§.scrollerSprite.dispatchEvent(new §[0§(§[0§.§3n§,data as §?O§));
                           }
                           break;
                        }
                        break;
                        addr29:
                        §§push(§§pop() is §3!G§);
                        if(_loc3_)
                        {
                           continue;
                        }
                        addr87:
                        while(true)
                        {
                           §§pop();
                           continue loop0;
                           §§goto(addr29);
                        }
                        addr87:
                     }
                     return;
                     addr43:
                  }
               }
               §§goto(addr87);
            }
            addr77:
         }
         while(true)
         {
            §§push(this.§%"§);
            if(_loc3_)
            {
               §§goto(addr29);
            }
            else
            {
               §§goto(addr77);
            }
            §§goto(addr87);
         }
      }
      
      override public function get width() : Number
      {
         return 61;
      }
      
      override public function set data(param1:Object) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            super.data = param1;
            do
            {
               this.update();
            }
            while(_loc3_);
            
         }
      }
      
      private function update() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(data == null)
            {
               if(_loc2_ || _loc1_)
               {
               }
            }
            else
            {
               this.§^h§();
            }
         }
      }
      
      public function get §%"§() : §?O§
      {
         return data as §?O§;
      }
   }
}
