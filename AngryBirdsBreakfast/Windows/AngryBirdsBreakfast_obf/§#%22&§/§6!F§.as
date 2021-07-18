package §#"&§
{
   import §"n§.§<n§;
   import §4!o§.§+!N§;
   import §8!K§.§5!0§;
   import §8!K§.§5!Y§;
   import §8]§.§7!4§;
   import §@g§.§#!r§;
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   
   [SecureSWF(codeWrap="max",rename="true",statementLevel="true",controlFlow="100")]
   public class §6!F§ extends §#!r§
   {
       
      
      protected var §&" §:§5!Y§;
      
      protected var §7!r§:Loader;
      
      protected var §>!Y§:Vector.<XML>;
      
      public function §6!F§(param1:§5!Y§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§>!Y§ = new Vector.<XML>();
            while(true)
            {
               super();
               while(_loc3_)
               {
                  this.§&" § = param1;
                  if(_loc2_)
                  {
                     continue;
                  }
                  return;
                  addr40:
               }
            }
         }
         §§goto(addr40);
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            super.dispose();
            do
            {
               this.§&" § = null;
            }
            while(_loc1_);
            
         }
      }
      
      override protected function clear() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super.clear();
         }
         loop0:
         while(this.§7!r§)
         {
            if(!_loc1_)
            {
               this.§7!r§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§`!@§);
            }
            while(_loc2_ || this)
            {
               this.§7!r§ = null;
               if(!(_loc1_ && _loc2_))
               {
                  break loop0;
               }
            }
         }
      }
      
      override protected function initializeFile(param1:String) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc6_:* = null;
         var _loc2_:Array = param1.match(/^levels\/(.*)\.json$/i);
         if(_loc7_)
         {
            if(_loc2_)
            {
               if(!_loc8_)
               {
                  §§push(_loc2_[1].toLowerCase().substr("level".length));
                  if(!(_loc8_ && param1))
                  {
                     _loc6_ = §§pop();
                     if(!_loc8_)
                     {
                        addr51:
                        this.§7w§(_loc6_,param1);
                        addr55:
                        §§push(param1);
                     }
                     §§goto(addr55);
                  }
                  var _loc3_:Array = §§pop().match(/^particle_emitters\/(.*)\.pex$/i);
                  if(_loc7_)
                  {
                     if(_loc3_)
                     {
                        if(_loc7_ || this)
                        {
                           addr74:
                           this.§%!^§(_loc3_[1]);
                        }
                     }
                     var _loc4_:Array;
                     if(_loc4_ = param1.match(/cutscenes.lua$/i))
                     {
                        if(!(_loc8_ && this))
                        {
                           this.§,!d§(param1);
                        }
                     }
                     var _loc5_:Array;
                     if(_loc5_ = param1.match(/cutscene.swf$/i))
                     {
                        if(_loc7_)
                        {
                           this.§?"$§(param1);
                           if(!_loc8_)
                           {
                              addr158:
                              §§push(param1);
                              loop6:
                              while(true)
                              {
                                 if(§§pop().toLowerCase() == "assetmap.xml")
                                 {
                                    addr162:
                                    if(_loc7_ || _loc3_)
                                    {
                                       this.§<Z§(param1);
                                       addr182:
                                       while(true)
                                       {
                                       }
                                       addr182:
                                    }
                                    §§goto(addr182);
                                 }
                                 while(true)
                                 {
                                    §§push(param1);
                                    if(_loc8_ && this)
                                    {
                                       continue loop6;
                                    }
                                    if(§§pop().toLowerCase() == "episodes.json")
                                    {
                                       while(_loc8_)
                                       {
                                          §§goto(addr182);
                                       }
                                       while(true)
                                       {
                                          this.§'!<§(param1);
                                          addr157:
                                          while(true)
                                          {
                                          }
                                       }
                                       addr152:
                                       addr154:
                                    }
                                    while(true)
                                    {
                                       super.initializeFile(param1);
                                       if(_loc7_)
                                       {
                                          if(!_loc8_)
                                          {
                                             return;
                                          }
                                          §§goto(addr152);
                                       }
                                       break;
                                    }
                                    §§goto(addr157);
                                 }
                                 §§goto(addr162);
                              }
                           }
                           §§goto(addr154);
                        }
                        §§goto(addr182);
                     }
                     §§goto(addr158);
                  }
                  §§goto(addr74);
               }
            }
            §§goto(addr55);
         }
         §§goto(addr51);
      }
      
      protected function §7w§(param1:String, param2:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §§push(this.§&" §);
            if(_loc4_)
            {
               §§push(param1);
               if(!_loc3_)
               {
                  if(!§§pop().getLevelForId(§§pop()))
                  {
                     if(_loc4_)
                     {
                        addr53:
                        this.§&" §.§^8§(param1,§5!0§.§'!&§(§;E§(param2)));
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr53);
      }
      
      protected function §'!<§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§&" §.§#!!§(JSON.parse(§;E§(param1)));
         }
      }
      
      private function §<Z§(param1:String) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            var _loc3_:*;
            var _loc4_:* = (_loc3_ = §§findproperty(§"U§)).§"U§ + 1;
            if(!(_loc5_ && this))
            {
               _loc3_.§"U§ = _loc4_;
            }
         }
         var _loc2_:XML = new XML(§;E§(param1));
         if(!_loc5_)
         {
            this.§>!Y§.push(_loc2_);
            loop0:
            while(this.§>!Y§.length == 1)
            {
               if(!_loc5_)
               {
                  this.§7!r§ = new Loader();
               }
               loop1:
               while(!_loc5_)
               {
                  this.§7!r§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§`!@§);
                  while(true)
                  {
                     this.§7!r§.loadBytes(§3!a§(_loc2_.Library.@swf),new LoaderContext(false,ApplicationDomain.currentDomain));
                     if(_loc6_ || _loc2_)
                     {
                        if(_loc6_ || this)
                        {
                           break loop0;
                        }
                        continue loop1;
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr99);
      }
      
      private function §`!@§(param1:Event) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§7!r§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§`!@§);
         }
         var _loc2_:XML = this.§>!Y§.shift();
         if(!_loc3_)
         {
            if(this.§>!Y§.length > 0)
            {
               loop3:
               while(true)
               {
                  this.§7!r§ = new Loader();
                  loop4:
                  while(true)
                  {
                     this.§7!r§.contentLoaderInfo.addEventListener(Event.INIT,this.§`!@§);
                     addr103:
                     while(true)
                     {
                        this.§7!r§.loadBytes(§3!a§(this.§>!Y§[0].Library.@swf),new LoaderContext(false,ApplicationDomain.currentDomain));
                        addr79:
                        addr93:
                        while(true)
                        {
                           if(_loc4_ || param1)
                           {
                              if(_loc4_ || param1)
                              {
                                 break;
                              }
                              continue loop3;
                           }
                           continue loop4;
                        }
                        continue loop4;
                     }
                  }
               }
               addr119:
            }
            while(true)
            {
               §6!?§();
               if(_loc4_)
               {
                  if(_loc4_ || param1)
                  {
                     break;
                  }
                  §§goto(addr103);
               }
               §§goto(addr79);
               §§goto(addr93);
            }
            return;
         }
         §§goto(addr119);
      }
      
      private function §,!d§(param1:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:Object = §<n§.§%d§(§;E§(param1));
         if(_loc3_)
         {
            §+!N§.§,!d§(_loc2_);
         }
      }
      
      private function §?"$§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §+!N§.§#L§(§1;§,§3!a§(param1,§1;§));
         }
      }
      
      protected function §%!^§(param1:String) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(§§newactivation());
         if(_loc5_ || _loc2_)
         {
            §§pop().§§slot[1] = param1;
            if(_loc5_)
            {
               addr33:
               var onComplete:Function = function(param1:Bitmap):void
               {
                  §7!4§.§%U§(id,XML(§;E§("particle_emitters/" + id + ".pex")),param1.bitmapData);
                  §6!?§();
               };
               if(!(_loc6_ && _loc2_))
               {
                  var _loc3_:*;
                  var _loc4_:* = (_loc3_ = §§findproperty(§"U§)).§"U§ + 1;
                  if(!_loc6_)
                  {
                     _loc3_.§"U§ = _loc4_;
                  }
                  if(_loc6_ && _loc3_)
                  {
                  }
                  §§goto(addr95);
               }
               §§push(§§findproperty(§+F§));
               §§push("particle_emitters/" + id);
               if(!_loc6_)
               {
                  §§push(§§pop() + ".png");
               }
               §§pop().§+F§(§§pop(),onComplete);
            }
            addr95:
            return;
         }
         §§goto(addr33);
      }
   }
}
