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
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §'!I§ = false;
            do
            {
               §0!P§ = new Dictionary();
            }
            while(!(_loc1_ || §+p§));
            
         }
      }
      
      private var §,!a§:Loader;
      
      private var §;@§:§ !<§;
      
      public function §+p§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
         do
         {
            this.init();
         }
         while(_loc2_ && _loc2_);
         
      }
      
      private function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            addEventListener(MouseEvent.CLICK,this.§!]§);
         }
      }
      
      private function §+o§(param1:Class) : § !<§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            if(!§0!P§[param1])
            {
               if(_loc3_ || this)
               {
                  §0!P§[param1] = [];
               }
            }
         }
         var _loc2_:Array = §0!P§[param1];
         if(!_loc4_)
         {
            if(_loc2_.length == 0)
            {
               if(!(_loc4_ && this))
               {
                  §§goto(addr71);
               }
            }
            return _loc2_.pop();
         }
         addr71:
         return new param1();
      }
      
      private function §"!b§(param1:§ !<§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:Class = Object(this.§;@§).constructor;
         if(!(_loc4_ && this))
         {
            if(!§0!P§[_loc2_])
            {
               while(true)
               {
                  §0!P§[_loc2_] = [];
                  while(true)
                  {
                  }
               }
               addr75:
            }
            do
            {
               §0!P§[_loc2_].push(param1);
               if(_loc4_ && this)
               {
                  continue;
               }
            }
            while(_loc4_);
            
            return;
         }
         §§goto(addr75);
      }
      
      private function §?!X§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:Class = null;
         var _loc3_:* = Object(this.§6§).constructor;
         if(_loc4_ || _loc2_)
         {
            if(§9?§ === _loc3_)
            {
               if(_loc4_ || _loc2_)
               {
                  addr62:
                  §§push(0);
                  if(_loc4_)
                  {
                     addr111:
                     switch(§§pop())
                     {
                        case 0:
                           _loc1_ = §?[§;
                           if(!_loc5_)
                           {
                              break;
                           }
                           var _loc2_:Class = !!this.§;@§ ? Object(this.§;@§).constructor : null;
                           addr135:
                           if(_loc4_ || this)
                           {
                              if(_loc1_ != _loc2_)
                              {
                                 if(!(_loc5_ && _loc3_))
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
                                             addr223:
                                             while(true)
                                             {
                                             }
                                          }
                                          addr215:
                                       }
                                       while(true)
                                       {
                                          this.§;@§ = addChild(this.§+o§(_loc1_)) as § !<§;
                                          loop2:
                                          while(!(_loc5_ && _loc2_))
                                          {
                                             do
                                             {
                                                §§push(this.§;@§);
                                                if(_loc5_)
                                                {
                                                   continue loop0;
                                                }
                                                §§pop().data = this.§6§;
                                                if(!_loc4_)
                                                {
                                                   continue loop2;
                                                }
                                             }
                                             while(!_loc4_);
                                             
                                             return;
                                          }
                                          §§goto(addr223);
                                       }
                                    }
                                 }
                                 §§goto(addr215);
                              }
                              §§goto(addr161);
                           }
                           §§goto(addr223);
                        case 1:
                           _loc1_ = §#j§;
                           break;
                        case 2:
                           _loc1_ = §"!9§;
                     }
                     if(!_loc1_)
                     {
                        if(_loc4_ || this)
                        {
                           §<m§.log("WARNING! Unknown score item found!");
                           if(_loc4_ || this)
                           {
                              return;
                           }
                        }
                        else
                        {
                           §§goto(addr135);
                        }
                        §§goto(addr138);
                     }
                     §§goto(addr135);
                  }
               }
               else
               {
                  addr76:
                  §§push(1);
                  if(_loc4_ || _loc3_)
                  {
                  }
               }
               §§goto(addr111);
            }
            else
            {
               if(§%Q§ === _loc3_)
               {
                  if(_loc4_ || _loc3_)
                  {
                     §§goto(addr76);
                  }
               }
               else if(§4!k§ !== _loc3_)
               {
                  §§goto(addr111);
                  §§push(3);
               }
               §§goto(addr111);
               if(_loc4_ || _loc3_)
               {
                  §§goto(addr106);
               }
            }
            §§goto(addr111);
         }
         §§goto(addr62);
      }
      
      private function §!]§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§6§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               if(!_loc2_)
               {
                  if(!§§pop())
                  {
                     while(true)
                     {
                        if(§§pop())
                        {
                           if(_loc3_)
                           {
                              if(_loc2_ && param1)
                              {
                                 continue loop0;
                              }
                              §%>§.scrollerSprite.dispatchEvent(new §[! §(§[! §.§4!&§,data as §4!R§));
                           }
                           break;
                        }
                        §§push(§§pop() is §%Q§);
                        addr44:
                        break;
                        if(_loc3_ || _loc2_)
                        {
                           continue;
                        }
                        addr92:
                        while(true)
                        {
                           §§pop();
                           continue loop0;
                        }
                        addr92:
                     }
                     return;
                  }
               }
               §§goto(addr92);
            }
         }
         §§goto(addr74);
      }
      
      override public function get width() : Number
      {
         return 61;
      }
      
      override public function set data(param1:Object) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
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
         if(_loc1_ || this)
         {
            if(data == null)
            {
               if(_loc1_)
               {
                  addr28:
               }
            }
            else
            {
               this.§?!X§();
            }
            return;
         }
         §§goto(addr28);
      }
      
      public function get §6§() : §4!R§
      {
         return data as §4!R§;
      }
   }
}
