package §+]§
{
   import §!!8§.§-!D§;
   import §#!4§.§<f§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.net.SharedObject;
   import flash.utils.Dictionary;
   
   public class §7&§ extends EventDispatcher
   {
      
      public static const §4!K§:String = "snapping";
      
      public static const §&!S§:String = "tooltips";
      
      public static const §5^§:String = "zoombar";
      
      private static var § W§:§7&§;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §4!K§ = "snapping";
            if(!(_loc1_ && _loc2_))
            {
               §&!S§ = "tooltips";
               if(_loc1_ && §7&§)
               {
               }
               §§goto(addr57);
            }
            §5^§ = "zoombar";
         }
         addr57:
      }
      
      private var §6b§:Dictionary;
      
      private var § !Y§:SharedObject;
      
      public function §7&§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         this.§6b§ = new Dictionary();
         super();
         if(!(_loc2_ && _loc2_))
         {
            §-!D§.§<!C§("setOptions",this.§^s§);
            this.§6b§[§4!K§] = true;
         }
         this.§6b§[§&!S§] = true;
         this.§6b§[§5^§] = false;
         if(_loc1_)
         {
            this.§'R§(false);
         }
      }
      
      public static function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(§ W§ == null)
            {
               if(_loc2_ || _loc1_)
               {
                  § W§ = new §7&§();
               }
            }
         }
      }
      
      public static function §=n§() : §7&§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(§ W§);
            if(_loc2_)
            {
               if(§§pop() == null)
               {
                  if(_loc2_)
                  {
                     addr26:
                     init();
                  }
               }
               §§push(§ W§);
            }
            return §§pop();
         }
         §§goto(addr26);
      }
      
      private function §'R§(param1:Boolean = true) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(§§newactivation());
         if(!(_loc5_ && _loc3_))
         {
            §§pop().§§slot[2] = null;
            if(_loc6_)
            {
               addr35:
               var save:Boolean = param1;
            }
            try
            {
               if(!this.§ !Y§)
               {
                  if(!_loc5_)
                  {
                     this.§ !Y§ = SharedObject.getLocal(§35§.§]!<§());
                     if(_loc6_ || param1)
                     {
                        §§goto(addr55);
                     }
                  }
                  §§goto(addr173);
               }
               addr55:
               var _loc3_:int = 0;
               if(_loc6_ || param1)
               {
                  var _loc4_:* = this.§6b§;
                  if(!_loc5_)
                  {
                     loop0:
                     while(§§hasnext(_loc4_,_loc3_))
                     {
                        §§push(§§newactivation());
                        if(!_loc5_)
                        {
                           §§pop().§§slot[2] = §§nextname(_loc3_,_loc4_);
                           if(!(_loc5_ && param1))
                           {
                              while(true)
                              {
                                 §§push(this.§ !Y§.data[key] == undefined);
                                 if(!(_loc5_ && param1))
                                 {
                                    if(!§§pop())
                                    {
                                       if(!(_loc5_ && this))
                                       {
                                          §§pop();
                                          addr137:
                                          if(_loc6_)
                                          {
                                             §§push(§§newactivation());
                                             while(true)
                                             {
                                                §§push(§§pop().§§slot[1]);
                                                if(!(_loc5_ && _loc2_))
                                                {
                                                   addr133:
                                                   while(true)
                                                   {
                                                      §§push(Boolean(§§pop()));
                                                   }
                                                   addr133:
                                                }
                                             }
                                             addr125:
                                          }
                                          while(true)
                                          {
                                             this.§ !Y§.data[key] = this.§6b§[key];
                                             if(_loc5_)
                                             {
                                             }
                                             continue loop0;
                                          }
                                          addr137:
                                       }
                                       §§goto(addr133);
                                    }
                                    while(true)
                                    {
                                       if(!§§pop())
                                       {
                                          this.§6b§[key] = this.§ !Y§.data[key];
                                          continue loop0;
                                       }
                                       if(!_loc6_)
                                       {
                                          continue loop0;
                                       }
                                       §§goto(addr137);
                                    }
                                 }
                                 §§goto(addr133);
                              }
                              addr87:
                           }
                           §§goto(addr137);
                        }
                        §§goto(addr125);
                     }
                     §§goto(addr165);
                  }
                  §§goto(addr87);
               }
               §§goto(addr165);
            }
            catch(e:Error)
            {
            }
            addr165:
            if(_loc6_ || param1)
            {
               this.§ !Y§.flush();
               addr173:
               if(_loc6_ || this)
               {
               }
               §§goto(addr213);
            }
            §<f§.§0b§ = this.§6b§[§&!S§];
            addr213:
            return;
         }
         §§goto(addr35);
      }
      
      public function §"!$§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(this.§6b§[param1] == undefined)
            {
               if(_loc3_)
               {
                  addr37:
                  this.§6b§[param1] = false;
                  if(!(_loc2_ && param1))
                  {
                     addr49:
                     this.§7!R§(param1,!this.§6b§[param1]);
                  }
               }
               return;
            }
            §§goto(addr49);
         }
         §§goto(addr37);
      }
      
      public function §7!R§(param1:String, param2:Boolean) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            if(this.§6b§[param1] != param2)
            {
               if(_loc4_)
               {
                  this.§6b§[param1] = param2;
                  if(_loc4_)
                  {
                     addr54:
                     dispatchEvent(new Event(Event.CHANGE));
                     if(!_loc3_)
                     {
                        this.§'R§();
                        if(_loc3_)
                        {
                        }
                        §§goto(addr72);
                     }
                  }
               }
               §<f§.§0b§ = this.§6b§[§&!S§];
            }
            addr72:
            return;
         }
         §§goto(addr54);
      }
      
      public function §4V§(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(this.§6b§[param1] == undefined)
            {
               if(!(_loc2_ && param1))
               {
                  §§goto(addr42);
               }
            }
            return this.§6b§[param1];
         }
         addr42:
         return false;
      }
      
      public function §^s§(param1:String) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:* = null;
         var _loc2_:Object = JSON.parse(param1);
         if(!(_loc7_ && param1))
         {
            if(§35§.§7!p§)
            {
               addr54:
               for(_loc3_ in _loc2_)
               {
                  if(_loc6_)
                  {
                     this.§7!R§(_loc3_,_loc2_[_loc3_]);
                  }
               }
            }
            return;
         }
         §§goto(addr54);
      }
   }
}
