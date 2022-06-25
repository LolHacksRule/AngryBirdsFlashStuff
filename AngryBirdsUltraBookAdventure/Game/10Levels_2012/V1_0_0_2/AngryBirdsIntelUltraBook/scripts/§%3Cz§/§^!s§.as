package §<z§
{
   import §6!M§.§-!?§;
   import §6!M§.§4W§;
   import §6!M§.§7!m§;
   import §6!M§.§9!d§;
   import §<e§.§ &§;
   import §^_§.§!>§;
   import flash.display.Loader;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   
   public class §^!s§ extends §#h§
   {
      
      public static var §-!1§:String;
      
      public static var §^i§:Boolean = false;
      
      public static var §<!?§:Dictionary;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §^i§ = false;
            do
            {
               §<!?§ = new Dictionary();
            }
            while(_loc1_);
            
         }
      }
      
      private var §`!u§:Loader;
      
      private var §8>§:§1S§;
      
      public function §^!s§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
         do
         {
            this.init();
         }
         while(_loc1_ && this);
         
      }
      
      private function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            addEventListener(MouseEvent.CLICK,this.§]!E§);
         }
      }
      
      private function §]!Y§(param1:Class) : §1S§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            if(!§<!?§[param1])
            {
               if(_loc3_ || _loc2_)
               {
                  §<!?§[param1] = [];
               }
            }
         }
         var _loc2_:Array = §<!?§[param1];
         if(_loc3_)
         {
            if(_loc2_.length == 0)
            {
               if(_loc3_)
               {
                  return new param1();
               }
            }
         }
         return _loc2_.pop();
      }
      
      private function §"B§(param1:§1S§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:Class = Object(this.§8>§).constructor;
         if(!_loc4_)
         {
            if(!§<!?§[_loc2_])
            {
               if(!(_loc4_ && param1))
               {
                  addr75:
                  §<!?§[_loc2_] = [];
               }
               while(true)
               {
                  §§goto(addr50);
               }
            }
            addr50:
            while(true)
            {
               §<!?§[_loc2_].push(param1);
               if(!(_loc4_ && _loc2_))
               {
                  break;
               }
               continue loop0;
            }
            return;
         }
         §§goto(addr75);
      }
      
      private function §?y§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:Class = null;
         var _loc3_:* = Object(this.§+V§).constructor;
         if(!_loc5_)
         {
            if(§-!?§ === _loc3_)
            {
               if(!(_loc5_ && _loc3_))
               {
                  §§push(0);
                  if(_loc5_)
                  {
                     addr79:
                  }
               }
               else
               {
                  addr83:
                  §§push(2);
                  if(_loc5_ && this)
                  {
                  }
               }
               addr96:
               switch(§§pop())
               {
                  case 0:
                     _loc1_ = §=!1§;
                     if(!(_loc5_ && _loc3_))
                     {
                        break;
                     }
                     var _loc2_:Class = !!this.§8>§ ? Object(this.§8>§).constructor : null;
                     addr135:
                     if(!(_loc5_ && _loc3_))
                     {
                        if(_loc1_ != _loc2_)
                        {
                           if(!(_loc5_ && _loc3_))
                           {
                              §§push(this.§8>§);
                              loop0:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    while(true)
                                    {
                                       this.§"B§(removeChild(this.§8>§) as §1S§);
                                       addr228:
                                       while(true)
                                       {
                                       }
                                    }
                                    addr220:
                                 }
                                 while(true)
                                 {
                                    this.§8>§ = addChild(this.§]!Y§(_loc1_)) as §1S§;
                                    addr206:
                                    while(true)
                                    {
                                       continue loop0;
                                       addr171:
                                       §§pop().data = this.§+V§;
                                       if(_loc5_ && this)
                                       {
                                          continue;
                                       }
                                       if(_loc4_)
                                       {
                                          if(!_loc5_)
                                          {
                                             return;
                                             addr185:
                                          }
                                          §§goto(addr220);
                                       }
                                       §§goto(addr228);
                                    }
                                 }
                              }
                           }
                           §§goto(addr228);
                        }
                        §§goto(addr161);
                     }
                     §§goto(addr185);
                  case 1:
                     _loc1_ = §8!9§;
                     break;
                  case 2:
                     _loc1_ = §%!c§;
               }
               if(!_loc1_)
               {
                  if(_loc4_ || _loc3_)
                  {
                     §!>§.log("WARNING! Unknown score item found!");
                     if(_loc4_ || _loc3_)
                     {
                        return;
                     }
                  }
               }
               §§goto(addr135);
            }
            else
            {
               if(§4W§ === _loc3_)
               {
                  if(!_loc5_)
                  {
                     §§push(1);
                     if(_loc4_ || this)
                     {
                        §§goto(addr79);
                     }
                  }
                  else
                  {
                     §§goto(addr83);
                  }
               }
               else if(§7!m§ === _loc3_)
               {
                  §§goto(addr83);
               }
               else
               {
                  §§push(3);
               }
               §§goto(addr96);
            }
         }
         §§goto(addr83);
      }
      
      private function §]!E§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§+V§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               addr84:
               while(true)
               {
                  if(!§§pop())
                  {
                     while(§§pop())
                     {
                        if(_loc2_)
                        {
                           if(_loc3_ && param1)
                           {
                              continue loop0;
                           }
                           §"!^§.scrollerSprite.dispatchEvent(new § &§(§ &§.§+!j§,data as §9!d§));
                        }
                        break;
                     }
                     return;
                     addr59:
                  }
                  while(true)
                  {
                     §§pop();
                     continue loop0;
                  }
               }
            }
            addr83:
         }
         while(true)
         {
            §§push(this.§+V§);
            if(!_loc3_)
            {
               §§push(§§pop() is §4W§);
               if(!(_loc2_ || this))
               {
                  continue;
               }
               if(_loc3_)
               {
                  §§goto(addr84);
               }
               §§goto(addr59);
            }
            else
            {
               §§goto(addr83);
            }
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
         if(_loc2_ || _loc3_)
         {
            super.data = param1;
            do
            {
               this.update();
            }
            while(!_loc2_);
            
         }
      }
      
      private function update() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            if(data == null)
            {
               if(_loc2_)
               {
               }
            }
            else
            {
               this.§?y§();
            }
         }
      }
      
      public function get §+V§() : §9!d§
      {
         return data as §9!d§;
      }
   }
}
