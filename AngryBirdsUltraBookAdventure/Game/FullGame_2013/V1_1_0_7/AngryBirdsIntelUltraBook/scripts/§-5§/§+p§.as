package §-5§
{
   import §1!B§.§<m§;
   import §4H§.§%Q§;
   import §4H§.§4!R§;
   import §4H§.§4!k§;
   import §4H§.§9?§;
   import §@! §.§[! §;
   import flash.display.Loader;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   
   public class §+p§ extends §8!g§
   {
      
      public static var §!!I§:String;
      
      public static var §'!I§:Boolean = false;
      
      public static var §0!P§:Dictionary;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §'!I§ = false;
         }
         do
         {
            §0!P§ = new Dictionary();
         }
         while(!(_loc2_ || _loc2_));
         
      }
      
      private var §,!a§:Loader;
      
      private var §;@§:§ !<§;
      
      public function §+p§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
         do
         {
            this.init();
         }
         while(_loc2_);
         
      }
      
      private function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            addEventListener(MouseEvent.CLICK,this.§!]§);
         }
      }
      
      private function §+o§(param1:Class) : § !<§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            if(!§0!P§[param1])
            {
               if(!(_loc3_ && this))
               {
                  §0!P§[param1] = [];
               }
            }
         }
         var _loc2_:Array = §0!P§[param1];
         if(_loc4_)
         {
            if(_loc2_.length == 0)
            {
               if(!(_loc3_ && _loc2_))
               {
                  §§goto(addr72);
               }
            }
            return _loc2_.pop();
         }
         addr72:
         return new param1();
      }
      
      private function §"!b§(param1:§ !<§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Class = Object(this.§;@§).constructor;
         if(_loc4_ || _loc2_)
         {
            if(!§0!P§[_loc2_])
            {
               while(true)
               {
                  §0!P§[_loc2_] = [];
                  addr85:
                  while(true)
                  {
                  }
                  addr69:
                  if(!(_loc4_ || _loc2_))
                  {
                     continue;
                  }
                  return;
                  addr76:
               }
            }
            while(true)
            {
               §0!P§[_loc2_].push(param1);
               if(!(_loc4_ || param1))
               {
                  continue;
               }
               §§goto(addr69);
            }
         }
         §§goto(addr76);
      }
      
      private function §?!X§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:Class = null;
         var _loc3_:* = Object(this.§6§).constructor;
         if(_loc5_)
         {
            if(§9?§ === _loc3_)
            {
               if(!(_loc4_ && _loc2_))
               {
                  §§push(0);
                  if(!_loc5_)
                  {
                     addr80:
                  }
               }
               else
               {
                  addr84:
                  §§push(2);
                  if(!_loc4_)
                  {
                     addr87:
                  }
               }
               addr92:
               switch(§§pop())
               {
                  case 0:
                     _loc1_ = §?[§;
                     if(!(_loc4_ && _loc3_))
                     {
                        break;
                     }
                     addr138:
                     var _loc2_:Class = Object(this.§;@§).constructor;
                     addr129:
                     if(!(_loc4_ && _loc1_))
                     {
                        if(_loc1_ != _loc2_)
                        {
                           if(!(_loc4_ && _loc1_))
                           {
                              §§push(this.§;@§);
                              loop0:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    while(true)
                                    {
                                       this.§"!b§(removeChild(this.§;@§) as § !<§);
                                       addr224:
                                       while(true)
                                       {
                                       }
                                    }
                                    addr216:
                                 }
                                 while(true)
                                 {
                                    this.§;@§ = addChild(this.§+o§(_loc1_)) as § !<§;
                                    addr183:
                                    while(!_loc4_)
                                    {
                                       if(_loc5_ || _loc2_)
                                       {
                                          while(true)
                                          {
                                             continue loop0;
                                          }
                                          addr202:
                                       }
                                       else
                                       {
                                          §§goto(addr216);
                                       }
                                    }
                                 }
                              }
                           }
                           §§goto(addr224);
                        }
                        §§goto(addr152);
                     }
                     §§goto(addr202);
                  case 1:
                     _loc1_ = §#j§;
                     break;
                  case 2:
                     _loc1_ = §"!9§;
               }
               if(!_loc1_)
               {
                  if(!(_loc4_ && _loc2_))
                  {
                     §<m§.log("WARNING! Unknown score item found!");
                     if(!_loc5_)
                     {
                        addr126:
                        if(this.§;@§)
                        {
                           §§goto(addr129);
                        }
                        else
                        {
                           §§push(null);
                        }
                        §§goto(addr138);
                     }
                  }
                  return;
               }
               §§goto(addr126);
            }
            else
            {
               if(§%Q§ === _loc3_)
               {
                  if(_loc5_)
                  {
                     addr72:
                     §§push(1);
                     if(_loc5_ || _loc1_)
                     {
                        §§goto(addr80);
                     }
                     else
                     {
                        §§goto(addr87);
                     }
                  }
                  else
                  {
                     §§goto(addr84);
                  }
               }
               else if(§4!k§ === _loc3_)
               {
                  §§goto(addr84);
               }
               else
               {
                  §§push(3);
               }
               §§goto(addr92);
            }
         }
         §§goto(addr72);
      }
      
      private function §!]§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            §§push(this.§6§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               if(_loc3_)
               {
                  if(!§§pop())
                  {
                     while(§§pop())
                     {
                        if(_loc3_ || this)
                        {
                           if(_loc3_)
                           {
                              §%>§.scrollerSprite.dispatchEvent(new §[! §(§[! §.§4!&§,data as §4!R§));
                              addr79:
                              break;
                           }
                           continue loop0;
                        }
                        §§goto(addr79);
                     }
                     return;
                     addr48:
                  }
               }
               addr87:
               while(true)
               {
                  §§pop();
                  continue loop0;
               }
            }
         }
         §§goto(addr79);
      }
      
      override public function get width() : Number
      {
         return 61;
      }
      
      override public function set data(param1:Object) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super.data = param1;
            do
            {
               this.update();
            }
            while(_loc2_ && this);
            
         }
      }
      
      private function update() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            if(data == null)
            {
               if(_loc2_ || _loc2_)
               {
                  addr44:
               }
            }
            else
            {
               this.§?!X§();
            }
            return;
         }
         §§goto(addr44);
      }
      
      public function get §6§() : §4!R§
      {
         return data as §4!R§;
      }
   }
}
