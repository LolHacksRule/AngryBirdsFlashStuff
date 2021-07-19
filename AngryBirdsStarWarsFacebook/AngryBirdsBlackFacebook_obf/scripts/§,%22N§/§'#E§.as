package §,"N§
{
   import §%R§.§@"F§;
   import §1!i§.§7#&§;
   import §1#M§.§'!]§;
   import §2"a§.§9#L§;
   import §?m§.§+"2§;
   import §?m§.§8!B§;
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   
   [SecureSWF(codeWrap="max",rename="true",statementLevel="true",controlFlow="100")]
   public class §'#E§ extends §@"F§
   {
       
      
      protected var §+!b§:§+"2§;
      
      protected var §9v§:Loader;
      
      protected var §<!0§:Vector.<XML>;
      
      public function §'#E§(param1:§+"2§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§<!0§ = new Vector.<XML>();
            while(true)
            {
               super();
               while(_loc3_ || _loc2_)
               {
                  this.§+!b§ = param1;
                  if(_loc2_ && this)
                  {
                     continue;
                  }
                  return;
                  addr50:
               }
            }
         }
         §§goto(addr50);
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            super.dispose();
            do
            {
               this.§+!b§ = null;
            }
            while(_loc2_ && _loc2_);
            
         }
      }
      
      override protected function clear() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.clear();
            loop0:
            for(; this.§9v§; while(_loc2_ || _loc2_)
            {
            })
            {
               while(true)
               {
                  this.§9v§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§0"y§);
                  continue loop0;
               }
            }
            §§goto(addr20);
         }
         while(true)
         {
            this.§9v§ = null;
            if(_loc2_)
            {
               if(_loc1_)
               {
                  §§goto(addr47);
               }
               addr20:
               return;
            }
            §§goto(addr55);
         }
      }
      
      override protected function initializeFile(param1:String) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc6_:* = null;
         var _loc2_:Array = param1.match(/^levels\/(.*)\.json$/i);
         if(!(_loc8_ && _loc2_))
         {
            if(_loc2_)
            {
               if(_loc7_)
               {
                  §§push(_loc2_[1].toLowerCase().substr("level".length));
                  if(!_loc8_)
                  {
                     _loc6_ = §§pop();
                     if(_loc7_)
                     {
                        addr51:
                        this.§ var§(_loc6_,param1);
                        addr55:
                        §§push(param1);
                     }
                     §§goto(addr55);
                  }
                  var _loc3_:Array = §§pop().match(/^particle_emitters\/(.*)\.pex$/i);
                  if(!_loc8_)
                  {
                     if(_loc3_)
                     {
                        if(_loc7_)
                        {
                           this.§="W§(_loc3_[1]);
                        }
                     }
                  }
                  var _loc4_:Array;
                  if(_loc4_ = param1.match(/cutscenes.lua$/i))
                  {
                     if(!(_loc8_ && param1))
                     {
                        this.§0"U§(param1);
                     }
                  }
                  var _loc5_:Array;
                  if(_loc5_ = param1.match(/cutscene.swf$/i))
                  {
                     if(_loc7_)
                     {
                        this.§"^§(param1);
                        if(!(_loc8_ && param1))
                        {
                           addr180:
                           §§push(param1);
                           loop6:
                           while(true)
                           {
                              if(§§pop().toLowerCase() == "assetmap.xml")
                              {
                                 addr184:
                                 while(true)
                                 {
                                    this.§]#F§(param1);
                                    addr187:
                                    while(true)
                                    {
                                    }
                                 }
                                 addr184:
                              }
                              while(true)
                              {
                                 §§push(param1);
                                 if(_loc7_)
                                 {
                                    break;
                                 }
                                 continue loop6;
                              }
                              if(§§pop().toLowerCase() == "episodes.json")
                              {
                                 loop3:
                                 while(true)
                                 {
                                    this.§^";§(param1);
                                    loop4:
                                    while(!(_loc8_ && param1))
                                    {
                                       if(_loc7_)
                                       {
                                          while(true)
                                          {
                                             super.initializeFile(param1);
                                             if(!(_loc8_ && _loc3_))
                                             {
                                                continue loop3;
                                             }
                                             continue loop4;
                                          }
                                          return;
                                          addr149:
                                          addr131:
                                       }
                                       §§goto(addr184);
                                    }
                                    §§goto(addr187);
                                 }
                              }
                              §§goto(addr131);
                           }
                        }
                        §§goto(addr149);
                     }
                     §§goto(addr184);
                  }
                  §§goto(addr180);
               }
               §§goto(addr51);
            }
         }
         §§goto(addr51);
      }
      
      protected function § var§(param1:String, param2:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §§push(this.§+!b§);
            if(_loc4_)
            {
               §§push(param1);
               if(_loc4_)
               {
                  if(§§pop().getLevelForId(§§pop()))
                  {
                  }
                  §§goto(addr59);
               }
               §§pop().addLevel(§§pop(),§8!B§.§]c§(§^k§(param2)));
               §§goto(addr59);
            }
            §§goto(addr52);
         }
         addr59:
         if(!_loc3_)
         {
            addr52:
            §§push(this.§+!b§);
            §§push(param1);
         }
      }
      
      protected function §^";§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§+!b§.§9!M§(JSON.parse(§^k§(param1)));
         }
      }
      
      private function §]#F§(param1:String) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || _loc3_)
         {
            var _loc3_:*;
            var _loc4_:* = (_loc3_ = §§findproperty(§5c§)).§5c§ + 1;
            if(_loc5_ || this)
            {
               _loc3_.§5c§ = _loc4_;
            }
         }
         var _loc2_:XML = new XML(§^k§(param1));
         if(!_loc6_)
         {
            this.§<!0§.push(_loc2_);
            loop0:
            while(this.§<!0§.length == 1)
            {
               loop1:
               while(_loc5_ || param1)
               {
                  this.§9v§ = new Loader();
                  while(true)
                  {
                     this.§9v§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§0"y§);
                     while(!_loc6_)
                     {
                        if(!_loc6_)
                        {
                           this.§9v§.loadBytes(§2h§(_loc2_.Library.@swf),new LoaderContext(false,ApplicationDomain.currentDomain));
                           if(_loc5_ || this)
                           {
                              break loop0;
                           }
                           continue;
                           continue;
                        }
                        continue loop1;
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr128);
      }
      
      private function §0"y§(param1:Event) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.§9v§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§0"y§);
         }
         var _loc2_:XML = this.§<!0§.shift();
         if(!(_loc3_ && this))
         {
            if(this.§<!0§.length > 0)
            {
               while(true)
               {
                  this.§9v§ = new Loader();
                  while(true)
                  {
                     this.§9v§.contentLoaderInfo.addEventListener(Event.INIT,this.§0"y§);
                     while(!(_loc3_ && _loc3_))
                     {
                        this.§9v§.loadBytes(§2h§(this.§<!0§[0].Library.@swf),new LoaderContext(false,ApplicationDomain.currentDomain));
                        while(true)
                        {
                           §§goto(addr44);
                        }
                     }
                  }
               }
            }
            addr44:
            §§goto(addr68);
         }
         addr68:
         while(true)
         {
            §5"V§();
            if(!(_loc3_ && param1))
            {
               if(!_loc3_)
               {
                  if(_loc4_)
                  {
                     break;
                  }
                  continue loop0;
               }
               continue loop2;
            }
            continue loop3;
         }
      }
      
      private function §0"U§(param1:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:Object = §7#&§.§06§(§^k§(param1));
         if(!_loc4_)
         {
            §9#L§.§0"U§(_loc2_);
         }
      }
      
      private function §"^§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            §9#L§.§7!g§(§5"O§,§2h§(param1,§5"O§));
         }
      }
      
      protected function §="W§(param1:String) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(§§newactivation());
         if(_loc6_ || _loc3_)
         {
            §§pop().§§slot[1] = param1;
            if(!(_loc5_ && _loc3_))
            {
               addr39:
               var onComplete:Function = function(param1:Bitmap):void
               {
                  §'!]§.§6"1§(id,XML(§^k§("particle_emitters/" + id + ".pex")),param1.bitmapData);
                  §5"V§();
               };
               if(!(_loc5_ && _loc2_))
               {
                  var _loc3_:*;
                  var _loc4_:* = (_loc3_ = §§findproperty(§5c§)).§5c§ + 1;
                  if(!(_loc5_ && _loc3_))
                  {
                     _loc3_.§5c§ = _loc4_;
                  }
                  if(_loc6_ || _loc2_)
                  {
                     §§push(§§findproperty(§<F§));
                     §§push("particle_emitters/" + id);
                     if(!_loc5_)
                     {
                        §§push(§§pop() + ".png");
                     }
                     §§pop().§<F§(§§pop(),onComplete);
                  }
               }
            }
            return;
         }
         §§goto(addr39);
      }
   }
}
