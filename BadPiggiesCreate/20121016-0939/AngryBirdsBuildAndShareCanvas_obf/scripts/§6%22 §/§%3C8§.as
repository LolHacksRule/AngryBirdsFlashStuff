package §6" §
{
   import §%_§.§4m§;
   import §'!A§.§9!!§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.net.SharedObject;
   import flash.utils.Dictionary;
   
   public class §<8§ extends EventDispatcher
   {
      
      public static const §,!4§:String = "snapping";
      
      public static const §0!g§:String = "tooltips";
      
      public static const §7"§:String = "zoombar";
      
      private static var §+;§:§<8§;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §,!4§ = "snapping";
            do
            {
               §0!g§ = "tooltips";
               do
               {
                  §7"§ = "zoombar";
               }
               while(_loc1_ && §<8§);
               
            }
            while(!(_loc2_ || _loc2_));
            
         }
      }
      
      private var §,!&§:Dictionary;
      
      private var §@!$§:SharedObject;
      
      public function §<8§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§,!&§ = new Dictionary();
            loop0:
            while(true)
            {
               super();
               loop1:
               while(true)
               {
                  §4m§.registerMethod("setOptions",this.§0!G§);
                  while(true)
                  {
                     this.§,!&§[§,!4§] = true;
                     loop3:
                     for(; !(_loc1_ && _loc2_); if(_loc2_ || this)
                     {
                        continue loop1;
                     })
                     {
                        this.§,!&§[§0!g§] = true;
                        loop4:
                        while(true)
                        {
                           this.§,!&§[§7"§] = false;
                           while(true)
                           {
                              if(!(_loc1_ && _loc2_))
                              {
                                 continue loop3;
                              }
                              continue loop4;
                              addr75:
                              this.§,"6§(false);
                              if(_loc2_)
                              {
                                 continue loop0;
                              }
                           }
                           continue loop3;
                        }
                     }
                  }
                  if(_loc1_ && _loc1_)
                  {
                     continue;
                  }
                  §§goto(addr75);
               }
            }
         }
      }
      
      public static function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(§+;§ == null)
            {
               if(!(_loc2_ && §<8§))
               {
                  §+;§ = new §<8§();
               }
            }
         }
      }
      
      public static function §5!i§() : §<8§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(§+;§);
            if(!(_loc1_ && §<8§))
            {
               if(§§pop() == null)
               {
                  if(!(_loc1_ && §<8§))
                  {
                     init();
                     addr58:
                     §§push(§+;§);
                  }
               }
               §§goto(addr58);
            }
            return §§pop();
         }
         §§goto(addr58);
      }
      
      private function §,"6§(param1:Boolean = true) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(§§newactivation());
         if(_loc6_)
         {
            §§pop().§§slot[2] = null;
            if(!(_loc5_ && this))
            {
               addr35:
               var save:Boolean = param1;
            }
            try
            {
               if(!this.§@!$§)
               {
                  if(!_loc5_)
                  {
                     this.§@!$§ = SharedObject.getLocal(§>"§.§1"3§());
                     if(!_loc5_)
                     {
                        addr50:
                        var _loc3_:int = 0;
                        if(_loc6_ || _loc3_)
                        {
                           var _loc4_:* = this.§,!&§;
                           if(_loc6_ || _loc2_)
                           {
                              loop0:
                              while(§§hasnext(_loc4_,_loc3_))
                              {
                                 §§push(§§newactivation());
                                 loop1:
                                 while(true)
                                 {
                                    §§pop().§§slot[2] = §§nextname(_loc3_,_loc4_);
                                    loop2:
                                    while(true)
                                    {
                                       §§push(this.§@!$§.data[key] == undefined);
                                       loop3:
                                       while(true)
                                       {
                                          if(!§§pop())
                                          {
                                             loop4:
                                             while(true)
                                             {
                                                §§pop();
                                                addr156:
                                                while(_loc6_ || this)
                                                {
                                                   while(true)
                                                   {
                                                      addr94:
                                                      while(true)
                                                      {
                                                         §§push(§§newactivation());
                                                         if(!_loc6_)
                                                         {
                                                            break;
                                                         }
                                                         §§push(§§pop().§§slot[1]);
                                                         if(_loc6_)
                                                         {
                                                            continue loop3;
                                                         }
                                                         addr119:
                                                         if(!_loc6_)
                                                         {
                                                            continue loop4;
                                                         }
                                                      }
                                                      continue loop1;
                                                   }
                                                }
                                                continue loop2;
                                             }
                                          }
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                if(_loc6_)
                                                {
                                                   if(!(_loc5_ && _loc3_))
                                                   {
                                                      this.§@!$§.data[key] = this.§,!&§[key];
                                                      break;
                                                   }
                                                   §§goto(addr156);
                                                }
                                                break;
                                             }
                                             this.§,!&§[key] = this.§@!$§.data[key];
                                             if(_loc5_ && _loc3_)
                                             {
                                                break;
                                             }
                                             if(true)
                                             {
                                                continue loop0;
                                             }
                                             §§goto(addr94);
                                          }
                                          continue loop0;
                                       }
                                    }
                                 }
                              }
                              addr176:
                              if(_loc6_)
                              {
                                 §§goto(addr179);
                              }
                              §§goto(addr189);
                           }
                           §§goto(addr163);
                        }
                        §§goto(addr176);
                     }
                     addr179:
                     this.§@!$§.flush();
                     if(!(_loc5_ && _loc3_))
                     {
                        addr213:
                        §9!!§.§<>§ = this.§,!&§[§0!g§];
                        addr189:
                     }
                     return;
                  }
               }
               §§goto(addr50);
            }
            catch(e:Error)
            {
            }
            §§goto(addr213);
         }
         §§goto(addr35);
      }
      
      public function §&!W§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(this.§,!&§[param1] == undefined)
            {
               if(_loc3_)
               {
                  addr64:
                  this.§,!&§[param1] = false;
               }
               while(true)
               {
                  §§goto(addr24);
               }
            }
            addr24:
            while(true)
            {
               this.§6;§(param1,!this.§,!&§[param1]);
               if(_loc3_)
               {
                  break;
               }
               continue loop0;
            }
            return;
         }
         §§goto(addr64);
      }
      
      public function §6;§(param1:String, param2:Boolean) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            if(this.§,!&§[param1] != param2)
            {
               if(_loc4_ || param1)
               {
                  this.§,!&§[param1] = param2;
               }
               loop0:
               while(true)
               {
                  dispatchEvent(new Event(Event.CHANGE));
                  loop1:
                  while(true)
                  {
                     this.§,"6§();
                     do
                     {
                        if(!_loc3_)
                        {
                           continue loop0;
                        }
                        continue loop1;
                        §9!!§.§<>§ = this.§,!&§[§0!g§];
                     }
                     while(!(_loc4_ || param1));
                     
                     addr38:
                  }
               }
            }
            return;
         }
         §§goto(addr38);
      }
      
      public function §&!h§(param1:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(this.§,!&§[param1] == undefined)
            {
               if(_loc2_)
               {
                  return false;
               }
            }
         }
         return this.§,!&§[param1];
      }
      
      public function §0!G§(param1:String) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:* = null;
         var _loc2_:Object = JSON.parse(param1);
         if(_loc6_)
         {
            if(§>"§.§,!v§)
            {
               addr29:
               for(_loc3_ in _loc2_)
               {
                  if(!(_loc7_ && this))
                  {
                     this.§6;§(_loc3_,_loc2_[_loc3_]);
                  }
               }
            }
            return;
         }
         §§goto(addr29);
      }
   }
}
