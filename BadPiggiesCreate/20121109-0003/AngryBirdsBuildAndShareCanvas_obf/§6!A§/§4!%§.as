package §6!A§
{
   import §05§.§?s§;
   import §@y§.§>!D§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.net.SharedObject;
   import flash.utils.Dictionary;
   
   public class §4!%§ extends EventDispatcher
   {
      
      public static const §!$§:String = "snapping";
      
      public static const §]!o§:String = "tooltips";
      
      public static const §]?§:String = "zoombar";
      
      private static var §@d§:§4!%§;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §!$§ = "snapping";
            do
            {
               §]!o§ = "tooltips";
               do
               {
                  §]?§ = "zoombar";
               }
               while(_loc2_ && §4!%§);
               
            }
            while(_loc2_);
            
         }
      }
      
      private var §5!b§:Dictionary;
      
      private var §;!,§:SharedObject;
      
      public function §4!%§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§5!b§ = new Dictionary();
            loop0:
            while(true)
            {
               super();
               loop1:
               while(true)
               {
                  §?s§.registerMethod("setOptions",this.§<m§);
                  while(_loc1_)
                  {
                     this.§5!b§[§!$§] = true;
                     loop5:
                     while(_loc1_ || _loc2_)
                     {
                        this.§"!H§(false);
                        if(_loc2_)
                        {
                           continue;
                        }
                        addr29:
                        if(!(_loc2_ && this))
                        {
                           if(!_loc1_)
                           {
                              while(true)
                              {
                                 this.§5!b§[§]!o§] = true;
                              }
                           }
                           else
                           {
                              addr45:
                              addr83:
                           }
                           continue loop1;
                           return;
                        }
                        while(true)
                        {
                           this.§5!b§[§]?§] = false;
                           continue loop5;
                           §§goto(addr29);
                        }
                     }
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr83);
      }
      
      public static function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            if(§@d§ == null)
            {
               if(!_loc1_)
               {
                  addr49:
                  §@d§ = new §4!%§();
               }
            }
            return;
         }
         §§goto(addr49);
      }
      
      public static function §`-§() : §4!%§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §§push(§@d§);
            if(!(_loc1_ && §4!%§))
            {
               if(§§pop() == null)
               {
                  if(_loc2_)
                  {
                     init();
                     addr58:
                     §§push(§@d§);
                  }
               }
               §§goto(addr58);
            }
            return §§pop();
         }
         §§goto(addr58);
      }
      
      private function §"!H§(param1:Boolean = true) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(§§newactivation());
         if(!_loc6_)
         {
            §§pop().§§slot[2] = null;
            if(!_loc6_)
            {
               addr29:
               var save:Boolean = param1;
            }
            try
            {
               if(!this.§;!,§)
               {
                  if(!(_loc6_ && _loc2_))
                  {
                     this.§;!,§ = SharedObject.getLocal(§[!^§.§1"#§());
                     if(_loc5_ || this)
                     {
                        addr54:
                        var _loc3_:int = 0;
                        if(!_loc6_)
                        {
                           var _loc4_:* = this.§5!b§;
                           if(_loc5_ || this)
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
                                       §§push(this.§;!,§.data[key] == undefined);
                                       while(true)
                                       {
                                          if(!§§pop())
                                          {
                                             while(true)
                                             {
                                                §§pop();
                                             }
                                             addr154:
                                          }
                                          else
                                          {
                                             while(!§§pop())
                                             {
                                                this.§5!b§[key] = this.§;!,§.data[key];
                                                if(_loc5_ || _loc2_)
                                                {
                                                   if(!_loc5_)
                                                   {
                                                      break;
                                                   }
                                                   if(!_loc6_)
                                                   {
                                                      if(false)
                                                      {
                                                         continue loop1;
                                                      }
                                                      continue loop0;
                                                   }
                                                   addr155:
                                                   while(_loc5_ || param1)
                                                   {
                                                      while(true)
                                                      {
                                                         continue loop1;
                                                      }
                                                   }
                                                   continue loop2;
                                                }
                                                continue loop0;
                                             }
                                             this.§;!,§.data[key] = this.§5!b§[key];
                                             §§goto(addr142);
                                             addr129:
                                          }
                                          §§goto(addr155);
                                          addr122:
                                          if(!(_loc5_ || _loc2_))
                                          {
                                             continue;
                                          }
                                          §§goto(addr129);
                                       }
                                    }
                                 }
                              }
                              §§goto(addr175);
                           }
                           §§goto(addr162);
                        }
                        addr175:
                        if(_loc5_ || param1)
                        {
                           addr183:
                           this.§;!,§.flush();
                           if(!_loc6_)
                           {
                              addr212:
                              §>!D§.§7!U§ = this.§5!b§[§]!o§];
                           }
                        }
                        §§goto(addr218);
                     }
                     §§goto(addr183);
                  }
                  addr218:
                  return;
               }
               §§goto(addr54);
            }
            catch(e:Error)
            {
            }
            §§goto(addr212);
         }
         §§goto(addr29);
      }
      
      public function §[";§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            if(this.§5!b§[param1] == undefined)
            {
               if(_loc3_)
               {
                  this.§5!b§[param1] = false;
                  addr79:
                  while(true)
                  {
                  }
                  addr79:
               }
               §§goto(addr79);
            }
            while(true)
            {
               this.§+!,§(param1,!this.§5!b§[param1]);
               if(!(_loc2_ && _loc2_))
               {
                  break;
               }
               §§goto(addr79);
            }
            return;
         }
         §§goto(addr79);
      }
      
      public function §+!,§(param1:String, param2:Boolean) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
            if(this.§5!b§[param1] != param2)
            {
               if(!_loc3_)
               {
                  this.§5!b§[param1] = param2;
               }
               while(true)
               {
                  dispatchEvent(new Event(Event.CHANGE));
                  loop1:
                  while(!_loc3_)
                  {
                     while(true)
                     {
                        this.§"!H§();
                        do
                        {
                           §>!D§.§7!U§ = this.§5!b§[§]!o§];
                        }
                        while(!(_loc4_ || _loc3_));
                        
                        if(!(_loc3_ && this))
                        {
                           break;
                        }
                        continue loop1;
                     }
                     return;
                  }
               }
            }
            §§goto(addr25);
         }
         §§goto(addr74);
      }
      
      public function §9y§(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            if(this.§5!b§[param1] == undefined)
            {
               if(_loc3_)
               {
                  §§goto(addr52);
               }
            }
            return this.§5!b§[param1];
         }
         addr52:
         return false;
      }
      
      public function §<m§(param1:String) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:* = null;
         var _loc2_:Object = JSON.parse(param1);
         if(!(_loc6_ && param1))
         {
            if(§[!^§.§["!§)
            {
               addr45:
               for(_loc3_ in _loc2_)
               {
                  if(_loc7_ || _loc3_)
                  {
                     this.§+!,§(_loc3_,_loc2_[_loc3_]);
                  }
               }
            }
            return;
         }
         §§goto(addr45);
      }
   }
}
