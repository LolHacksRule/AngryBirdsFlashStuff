package §6N§
{
   import §!V§.§%!#§;
   import §!V§.§^>§;
   import §!V§.§`!`§;
   import §+6§.§ <§;
   import §+6§.§'2§;
   import §+6§.§1!]§;
   import §+6§.§7i§;
   import §+6§.§^!`§;
   import §3!Z§.§ !b§;
   import §31§.§2[§;
   import §31§.§^!K§;
   import §94§.§,d§;
   import §9t§.§6!_§;
   import §`![§.§!!K§;
   import §`![§.§@;§;
   import §`b§.§ !9§;
   import §`b§.§=#§;
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.utils.ByteArray;
   
   public class §1!9§ extends EventDispatcher implements §2[§
   {
       
      
      protected var §>>§:int;
      
      protected var §<!,§:Object;
      
      protected var §&!f§:int = 0;
      
      protected var §+K§:§'2§;
      
      protected var §5+§:Vector.<XML>;
      
      protected var §]W§:Loader;
      
      private var §'G§:String;
      
      public function §1!9§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§<!,§ = {};
         }
         while(true)
         {
            this.§5+§ = new Vector.<XML>();
            while(_loc1_ || _loc2_)
            {
               super();
               while(!_loc2_)
               {
                  this.§+K§ = new §'2§();
                  if(!(_loc2_ && _loc2_))
                  {
                     return;
                  }
               }
            }
         }
      }
      
      public function §+B§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§'G§ = param1;
         }
      }
      
      public function get §]A§() : §7i§
      {
         return this.§+K§;
      }
      
      public function get §&4§() : Boolean
      {
         return this.§&!f§ == 0;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.§+K§.dispose();
         }
      }
      
      public function getFileAsString(param1:String) : String
      {
         return (this.§<!,§[param1] as §=#§).§;!§(false);
      }
      
      public function §4!O§(param1:String) : ByteArray
      {
         return (this.§<!,§[param1] as §=#§).content;
      }
      
      public function § !4§(param1:String, param2:Function) : void
      {
         return §^>§.§1!L§(this.§4!O§(param1),param2);
      }
      
      public function §^R§(param1:ByteArray, param2:Boolean = true) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc6_:§=#§ = null;
         if(!(_loc9_ && _loc3_))
         {
            if(param2)
            {
               if(!_loc9_)
               {
                  addr30:
                  this.§7!d§(param1);
               }
            }
            var _loc3_:§ !9§ = new § !9§();
            if(_loc8_ || this)
            {
               _loc3_.loadBytes(param1);
            }
            var _loc4_:Object = {};
            var _loc5_:* = int(_loc3_.§ ?§() - 1);
            while(_loc5_ >= 0)
            {
               if((_loc6_ = _loc3_.§9!8§(_loc5_)).§@b§.substr(-1) == "/")
               {
                  if(_loc9_)
                  {
                  }
               }
               else
               {
                  if(this.§<!,§[_loc6_.§@b§])
                  {
                     if(_loc9_)
                     {
                        continue;
                     }
                  }
                  this.§<!,§[_loc6_.§@b§] = _loc4_[_loc6_.§@b§] = _loc6_;
                  if(!(_loc8_ || _loc3_))
                  {
                     continue;
                  }
               }
               §§push(_loc5_);
               if(!(_loc9_ && param2))
               {
                  §§push(§§pop() - 1);
               }
               _loc5_ = §§pop();
            }
            if(_loc8_)
            {
               this.§;;§(_loc4_);
            }
            return;
         }
         §§goto(addr30);
      }
      
      protected function §;;§(param1:Object) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§push(null);
            loop1:
            while(true)
            {
               §§pop().§§slot[2] = §§pop();
               loop2:
               while(true)
               {
                  §§push(§§newactivation());
                  loop3:
                  while(true)
                  {
                     §§push(null);
                     loop4:
                     while(true)
                     {
                        §§pop().§§slot[3] = §§pop();
                        loop5:
                        while(true)
                        {
                           §§push(§§newactivation());
                           loop6:
                           while(true)
                           {
                              §§push(null);
                              loop7:
                              while(_loc7_ || this)
                              {
                                 §§pop().§§slot[4] = §§pop();
                                 loop8:
                                 while(true)
                                 {
                                    §§push(§§newactivation());
                                    loop9:
                                    while(true)
                                    {
                                       §§push(null);
                                       addr162:
                                       while(!_loc6_)
                                       {
                                          §§pop().§§slot[5] = §§pop();
                                          loop11:
                                          while(true)
                                          {
                                             §§push(§§newactivation());
                                             continue loop3;
                                             addr127:
                                             while(true)
                                             {
                                                if(!(_loc6_ && _loc2_))
                                                {
                                                   continue loop8;
                                                }
                                                continue loop11;
                                             }
                                             continue loop2;
                                          }
                                       }
                                       addr91:
                                       continue loop4;
                                       loop18:
                                       while(true)
                                       {
                                          if(_loc6_ && _loc2_)
                                          {
                                             continue loop9;
                                          }
                                          if(_loc6_)
                                          {
                                             break;
                                          }
                                          §§push(null);
                                          while(true)
                                          {
                                             if(_loc7_)
                                             {
                                                addr103:
                                                if(!(_loc6_ && _loc2_))
                                                {
                                                   if(_loc6_ && _loc2_)
                                                   {
                                                      break;
                                                   }
                                                   §§pop().§§slot[8] = §§pop();
                                                   while(!_loc6_)
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(§§newactivation());
                                                         continue loop18;
                                                         addr63:
                                                         if(!_loc7_)
                                                         {
                                                            break;
                                                         }
                                                         if(false)
                                                         {
                                                            continue;
                                                         }
                                                         var _loc3_:int = 0;
                                                         var _loc4_:* = packageFiles;
                                                         addr673:
                                                         if(§§hasnext(_loc4_,_loc3_))
                                                         {
                                                            §§push(§§newactivation());
                                                            if(_loc7_ || param1)
                                                            {
                                                               §§push(§§nextname(_loc3_,_loc4_));
                                                               if(!_loc6_)
                                                               {
                                                                  §§pop().§§slot[2] = §§pop();
                                                                  if(!_loc6_)
                                                                  {
                                                                     §§push(§§newactivation());
                                                                     if(_loc7_)
                                                                     {
                                                                        §§push(§§pop().§§slot[2]);
                                                                        if(_loc7_)
                                                                        {
                                                                           if(§§pop().search(/^sprite_sheets\/(.*)\.json$/i) != -1)
                                                                           {
                                                                              if(_loc7_)
                                                                              {
                                                                                 try
                                                                                 {
                                                                                    §§push(§§newactivation());
                                                                                    if(_loc7_)
                                                                                    {
                                                                                       §§pop().§§slot[9] = JSON.parse((packageFiles[fileName] as §=#§).§;!§(false));
                                                                                       if(_loc7_ || this)
                                                                                       {
                                                                                          this.§?!H§(jsonObject);
                                                                                          if(!(_loc6_ && param1))
                                                                                          {
                                                                                             addr665:
                                                                                             var levelNameResults:Array = fileName.match(/^levels\/Level(.*)\.json$/i);
                                                                                             addr646:
                                                                                             addr647:
                                                                                             if(levelNameResults)
                                                                                             {
                                                                                                addr648:
                                                                                                §@;§.§8h§(levelNameResults[1].toLowerCase(),§!!K§.§]G§(this.getFileAsString(fileName)));
                                                                                                addr661:
                                                                                             }
                                                                                             addr636:
                                                                                             var particleNameResults:Array = fileName.match(/^particle_emitters\/(.*)\.pex$/i);
                                                                                             addr634:
                                                                                             addr664:
                                                                                             addr663:
                                                                                             addr635:
                                                                                             addr643:
                                                                                             addr672:
                                                                                             §§push(particleNameResults);
                                                                                             if(_loc7_)
                                                                                             {
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   addr618:
                                                                                                   this.§@!A§(particleNameResults[1]);
                                                                                                   if(_loc7_ || _loc3_)
                                                                                                   {
                                                                                                      addr604:
                                                                                                      var compositeSpriteSheetNameResults:Array = fileName.match(/composites\/data\/(.*)\.xml$/i);
                                                                                                      addr611:
                                                                                                      addr603:
                                                                                                      addr602:
                                                                                                      if(compositeSpriteSheetNameResults)
                                                                                                      {
                                                                                                         addr593:
                                                                                                         this.§80§(fileName);
                                                                                                         addr597:
                                                                                                         if(_loc7_)
                                                                                                         {
                                                                                                            addr535:
                                                                                                            §§push(§§newactivation());
                                                                                                            if(!(_loc6_ && _loc2_))
                                                                                                            {
                                                                                                               if(!(_loc6_ && _loc3_))
                                                                                                               {
                                                                                                                  addr550:
                                                                                                                  §§push(§§newactivation());
                                                                                                                  if(_loc7_ || _loc3_)
                                                                                                                  {
                                                                                                                     addr558:
                                                                                                                     §§push(§§pop().§§slot[2]);
                                                                                                                     if(!(_loc6_ && _loc2_))
                                                                                                                     {
                                                                                                                        if(!(_loc6_ && param1))
                                                                                                                        {
                                                                                                                           §§pop().§§slot[6] = §§pop().match(/composites\/main\/(.*)\.xml$/i);
                                                                                                                           addr579:
                                                                                                                           if(!_loc6_)
                                                                                                                           {
                                                                                                                              if(!(_loc6_ && _loc2_))
                                                                                                                              {
                                                                                                                                 addr522:
                                                                                                                                 §§push(§§newactivation());
                                                                                                                                 if(!_loc6_)
                                                                                                                                 {
                                                                                                                                    addr525:
                                                                                                                                    if(§§pop().§§slot[6])
                                                                                                                                    {
                                                                                                                                       addr526:
                                                                                                                                       if(_loc7_)
                                                                                                                                       {
                                                                                                                                          addr528:
                                                                                                                                          this.§%l§(fileName);
                                                                                                                                          addr532:
                                                                                                                                          §§push(§§newactivation());
                                                                                                                                          if(!(_loc6_ && this))
                                                                                                                                          {
                                                                                                                                             if(_loc7_ || param1)
                                                                                                                                             {
                                                                                                                                                addr505:
                                                                                                                                                §§push(fileName);
                                                                                                                                                if(!(_loc6_ && _loc3_))
                                                                                                                                                {
                                                                                                                                                   addr512:
                                                                                                                                                   §§pop().§§slot[7] = §§pop().match(/cutscenes.lua$/i);
                                                                                                                                                   addr456:
                                                                                                                                                   addr519:
                                                                                                                                                   §§push(cutSceneNameResults);
                                                                                                                                                   if(_loc7_)
                                                                                                                                                   {
                                                                                                                                                      if(_loc7_ || this)
                                                                                                                                                      {
                                                                                                                                                         if(§§pop())
                                                                                                                                                         {
                                                                                                                                                            if(_loc7_)
                                                                                                                                                            {
                                                                                                                                                               if(_loc7_ || this)
                                                                                                                                                               {
                                                                                                                                                                  this.§;g§(fileName);
                                                                                                                                                                  addr479:
                                                                                                                                                                  if(!(_loc6_ && _loc2_))
                                                                                                                                                                  {
                                                                                                                                                                     addr407:
                                                                                                                                                                     §§push(§§newactivation());
                                                                                                                                                                     if(_loc7_ || _loc3_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§newactivation());
                                                                                                                                                                        if(_loc7_)
                                                                                                                                                                        {
                                                                                                                                                                           if(!_loc6_)
                                                                                                                                                                           {
                                                                                                                                                                              if(!(_loc6_ && this))
                                                                                                                                                                              {
                                                                                                                                                                                 if(!(_loc6_ && _loc3_))
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop().§§slot[2]);
                                                                                                                                                                                    if(!_loc6_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!(_loc6_ && this))
                                                                                                                                                                                       {
                                                                                                                                                                                          §§pop().§§slot[8] = §§pop().match(/cutscene.swf$/i);
                                                                                                                                                                                          addr450:
                                                                                                                                                                                          if(!_loc6_)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr372:
                                                                                                                                                                                             §§push(§§newactivation());
                                                                                                                                                                                             if(!_loc6_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc7_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr378:
                                                                                                                                                                                                   §§push(§§pop().§§slot[8]);
                                                                                                                                                                                                   if(!(_loc6_ && this))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!_loc6_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(§§pop())
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr389:
                                                                                                                                                                                                            if(!(_loc6_ && _loc2_))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc7_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  this.§-!C§(fileName,this.§'G§);
                                                                                                                                                                                                                  addr404:
                                                                                                                                                                                                                  §§push(§§newactivation());
                                                                                                                                                                                                                  if(_loc7_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc7_ || _loc2_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc7_ || param1)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(_loc7_ || this)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr317:
                                                                                                                                                                                                                              if(§§pop().§§slot[2].toLowerCase() == "assetmap.xml")
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(_loc7_ || _loc3_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(!_loc6_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(!_loc6_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(!(_loc6_ && this))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(!_loc6_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(_loc7_ || param1)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr357:
                                                                                                                                                                                                                                                   this.§3s§(fileName);
                                                                                                                                                                                                                                                   addr361:
                                                                                                                                                                                                                                                   if(_loc7_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(_loc7_ || this)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(false)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§goto(addr372);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr673);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr611);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr532);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr661);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr479);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr450);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr389);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr404);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr361);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr673);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr634);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr532);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr407);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr372);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr618);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr597);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr404);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr634);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr456);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr522);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr456);
                                                                                                                                                                                             addr452:
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr519);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr558);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr505);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr664);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr603);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr550);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr505);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr535);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr526);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr579);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr479);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr407);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr611);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr525);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr636);
                                                                                                                                          }
                                                                                                                                          §§goto(addr602);
                                                                                                                                       }
                                                                                                                                       §§goto(addr593);
                                                                                                                                    }
                                                                                                                                    §§goto(addr532);
                                                                                                                                 }
                                                                                                                                 §§goto(addr663);
                                                                                                                              }
                                                                                                                              §§goto(addr648);
                                                                                                                           }
                                                                                                                           §§goto(addr618);
                                                                                                                        }
                                                                                                                        §§goto(addr665);
                                                                                                                     }
                                                                                                                     §§goto(addr604);
                                                                                                                  }
                                                                                                                  §§goto(addr635);
                                                                                                               }
                                                                                                               §§goto(addr646);
                                                                                                            }
                                                                                                            §§goto(addr604);
                                                                                                         }
                                                                                                         §§goto(addr643);
                                                                                                      }
                                                                                                      §§goto(addr535);
                                                                                                      addr600:
                                                                                                   }
                                                                                                   §§goto(addr672);
                                                                                                }
                                                                                                §§goto(addr600);
                                                                                             }
                                                                                             §§goto(addr647);
                                                                                             addr662:
                                                                                          }
                                                                                          §§goto(addr357);
                                                                                       }
                                                                                       §§goto(addr648);
                                                                                    }
                                                                                 }
                                                                                 catch(e:Error)
                                                                                 {
                                                                                    throw new Error("Can\'t convert file \'" + fileName + "\' to object; invalid JSON.",§%!#§.§@!^§);
                                                                                 }
                                                                                 §§goto(addr550);
                                                                              }
                                                                              §§goto(addr452);
                                                                           }
                                                                           §§goto(addr662);
                                                                        }
                                                                        §§goto(addr317);
                                                                     }
                                                                     §§goto(addr378);
                                                                  }
                                                                  §§goto(addr528);
                                                               }
                                                               §§goto(addr512);
                                                            }
                                                            §§goto(addr505);
                                                         }
                                                         if(!_loc6_)
                                                         {
                                                            if(this.§&!f§ == 0)
                                                            {
                                                               if(_loc7_)
                                                               {
                                                                  addr695:
                                                                  dispatchEvent(new Event(Event.COMPLETE));
                                                               }
                                                            }
                                                            return;
                                                         }
                                                         §§goto(addr695);
                                                      }
                                                      if(_loc6_ && _loc2_)
                                                      {
                                                         continue;
                                                      }
                                                      §§goto(addr63);
                                                   }
                                                   §§goto(addr127);
                                                }
                                                else
                                                {
                                                   while(true)
                                                   {
                                                      §§pop().§§slot[6] = §§pop();
                                                      §§goto(addr103);
                                                   }
                                                   addr154:
                                                }
                                                while(_loc7_)
                                                {
                                                   §§push(§§newactivation());
                                                   while(true)
                                                   {
                                                      §§push(null);
                                                      addr31:
                                                      if(_loc6_ && param1)
                                                      {
                                                         continue;
                                                      }
                                                      if(!(_loc7_ || param1))
                                                      {
                                                         continue loop3;
                                                      }
                                                      if(_loc6_)
                                                      {
                                                         continue loop0;
                                                      }
                                                      addr47:
                                                      §§pop().§§slot[1] = param1;
                                                      if(_loc6_ && _loc3_)
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(§§newactivation());
                                                            if(!(_loc7_ || this))
                                                            {
                                                               continue loop18;
                                                            }
                                                            §§goto(addr31);
                                                            §§goto(addr47);
                                                         }
                                                         continue loop0;
                                                         addr88:
                                                      }
                                                      §§goto(addr56);
                                                   }
                                                }
                                                continue loop5;
                                             }
                                             while(true)
                                             {
                                                §§pop().§§slot[7] = §§pop();
                                                §§goto(addr127);
                                             }
                                             addr76:
                                             §§push(null);
                                             if(_loc6_ && _loc3_)
                                             {
                                                continue;
                                             }
                                             if(_loc6_)
                                             {
                                                continue loop7;
                                             }
                                             §§pop().§§slot[9] = §§pop();
                                             §§goto(addr88);
                                          }
                                          §§goto(addr162);
                                       }
                                       continue loop6;
                                    }
                                 }
                              }
                              continue loop1;
                           }
                        }
                     }
                  }
               }
            }
         }
      }
      
      private function §3s§(param1:String) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:LoaderContext = null;
         if(!_loc7_)
         {
            var _loc4_:*;
            §§push((_loc4_ = this).§&!f§);
            if(!(_loc7_ && _loc3_))
            {
               §§push(§§pop() + 1);
            }
            var _loc5_:* = §§pop();
            if(_loc6_ || this)
            {
               _loc4_.§&!f§ = _loc5_;
            }
         }
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         if(_loc6_ || _loc3_)
         {
            this.§5+§.push(_loc2_);
            loop0:
            while(true)
            {
               loop1:
               while(this.§5+§.length == 1)
               {
                  if(!(_loc7_ && _loc2_))
                  {
                     continue loop0;
                  }
                  addr113:
                  addr87:
                  do
                  {
                     this.§]W§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§&!'§);
                  }
                  while(_loc7_ && _loc3_);
                  
                  while(true)
                  {
                     if(true)
                     {
                        _loc3_ = new LoaderContext();
                        if(_loc6_ || param1)
                        {
                           _loc3_.allowCodeImport = true;
                           if(_loc7_)
                           {
                           }
                           break loop1;
                        }
                     }
                     continue loop1;
                     this.§]W§.loadBytes(this.§4!O§(_loc2_.Library.@swf),new LoaderContext(false,ApplicationDomain.currentDomain));
                     break loop1;
                  }
               }
               return;
            }
         }
         §§goto(addr87);
      }
      
      private function §&!'§(param1:Event) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            this.§]W§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§&!'§);
         }
         var _loc2_:XML = this.§5+§.shift();
         if(_loc4_)
         {
            §^!K§.§%!H§(this.§]W§,_loc2_.Library[0]);
            loop0:
            while(true)
            {
               if(this.§5+§.length > 0)
               {
                  if(_loc4_)
                  {
                     this.§]W§ = new Loader();
                  }
                  loop1:
                  while(true)
                  {
                     this.§]W§.contentLoaderInfo.addEventListener(Event.INIT,this.§&!'§);
                     loop2:
                     while(true)
                     {
                        this.§]W§.loadBytes(this.§4!O§(this.§5+§[0].Library.@swf),new LoaderContext(false,ApplicationDomain.currentDomain));
                        loop3:
                        while(true)
                        {
                           if(_loc4_ || this)
                           {
                              if(!_loc3_)
                              {
                                 while(true)
                                 {
                                    this.§'g§();
                                    if(!_loc3_)
                                    {
                                       if(_loc4_)
                                       {
                                          break;
                                       }
                                       continue loop1;
                                    }
                                    continue loop3;
                                 }
                                 return;
                                 addr44:
                                 addr51:
                              }
                              break;
                           }
                           continue loop2;
                        }
                        continue loop0;
                     }
                  }
               }
               §§goto(addr44);
            }
         }
         §§goto(addr51);
      }
      
      private function §;g§(param1:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:Object = §`!`§.§4!U§(this.getFileAsString(param1));
         if(_loc3_)
         {
            § !b§.§?!P§(_loc2_);
         }
      }
      
      private function §-!C§(param1:String, param2:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param2)
         {
            § !b§.§,![§(param2,this.§4!O§(param1));
         }
      }
      
      protected function §%l§(param1:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         if(_loc3_ || _loc3_)
         {
            §6!_§.§=!O§(_loc2_);
         }
      }
      
      protected function §80§(param1:String) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(§§newactivation());
         if(!(_loc5_ && _loc2_))
         {
            §§push(param1);
            if(_loc6_)
            {
               §§pop().§§slot[1] = §§pop();
               if(!_loc5_)
               {
                  §§push(§§newactivation());
                  if(!(_loc5_ && param1))
                  {
                     §§pop().§§slot[2] = function(param1:Bitmap):void
                     {
                        var _loc6_:XML = null;
                        var _loc7_:String = null;
                        var _loc8_:Array = null;
                        var _loc9_:String = null;
                        var _loc10_:Array = null;
                        var _loc11_:String = null;
                        var _loc12_:int = 0;
                        var _loc13_:* = null;
                        var _loc14_:String = null;
                        var _loc2_:XML = new XML(getFileAsString(filePath));
                        var _loc3_:Array = [];
                        var _loc4_:Vector.<XML> = new Vector.<XML>();
                        var _loc5_:XMLList = _loc2_.child("sprite");
                        for each(_loc6_ in _loc5_)
                        {
                           if(_loc7_ = _loc6_.@file)
                           {
                              _loc8_ = _loc7_.split("\\");
                              _loc9_ = _loc8_[_loc8_.length - 1];
                              _loc10_ = filePath.split("/");
                              _loc11_ = "";
                              _loc12_ = 0;
                              while(_loc12_ < _loc10_.length - 2)
                              {
                                 _loc11_ += _loc10_[_loc12_] + "/";
                                 _loc12_++;
                              }
                              _loc13_ = _loc11_ + "source/" + _loc9_ + ".xml";
                              if(§<!,§[_loc13_] == null)
                              {
                                 _loc9_ = _loc8_[_loc8_.length - 2] + "/" + _loc8_[_loc8_.length - 1];
                                 _loc13_ = _loc11_ + "source/" + _loc9_ + ".xml";
                              }
                              if(_loc3_.indexOf(_loc9_) < 0)
                              {
                                 _loc3_.push(_loc9_);
                                 _loc14_ = getFileAsString(_loc13_);
                                 _loc4_.push(new XML(_loc14_));
                              }
                           }
                        }
                        §+K§.§!!P§(new §1!]§(_loc2_,_loc4_,param1.bitmapData));
                        §'g§();
                     };
                     if(_loc6_)
                     {
                        var _loc3_:*;
                        §§push((_loc3_ = this).§&!f§);
                        if(!(_loc5_ && _loc2_))
                        {
                           §§push(§§pop() + 1);
                        }
                        var _loc4_:* = §§pop();
                        if(!_loc5_)
                        {
                           _loc3_.§&!f§ = _loc4_;
                        }
                        if(_loc6_)
                        {
                           var imagePath:String = filePath.substr(0,filePath.length - 3) + "png";
                           addr96:
                        }
                        do
                        {
                           this.§ !4§(imagePath,onComplete);
                        }
                        while(_loc5_);
                        
                     }
                  }
                  §§goto(addr96);
               }
               return;
            }
         }
         §§goto(addr96);
      }
      
      protected function §'g§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            var _loc1_:*;
            §§push((_loc1_ = this).§&!f§);
            if(_loc4_)
            {
               §§push(§§pop() - 1);
            }
            var _loc2_:* = §§pop();
            if(_loc4_ || _loc2_)
            {
               _loc1_.§&!f§ = _loc2_;
            }
            if(!_loc3_)
            {
               addr51:
               if(this.§&!f§ == 0)
               {
                  if(_loc4_ || _loc2_)
                  {
                     dispatchEvent(new Event(Event.COMPLETE));
                  }
               }
            }
            return;
         }
         §§goto(addr51);
      }
      
      protected function §@!A§(param1:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(§§newactivation());
         while(true)
         {
            §§pop().§§slot[1] = param1;
            while(true)
            {
               §§push(§§newactivation());
               if(_loc3_ && _loc3_)
               {
                  break;
               }
               §§pop().§§slot[2] = function(param1:Bitmap):void
               {
                  §,d§.§]Y§(id,XML(getFileAsString("particle_emitters/" + id + ".pex")),param1.bitmapData);
               };
               do
               {
                  §§push(this);
                  §§push("particle_emitters/" + id);
                  if(!_loc3_)
                  {
                     §§push(§§pop() + ".png");
                  }
                  §§pop().§ !4§(§§pop(),onComplete);
               }
               while(!(_loc4_ || param1));
               
               if(!(_loc3_ && _loc2_))
               {
                  return;
               }
            }
         }
      }
      
      protected function §?!H§(param1:Object) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§pop().§§slot[3] = null;
            if(_loc6_ || param1)
            {
               loop1:
               while(true)
               {
                  §§push(§§newactivation());
                  if(_loc6_)
                  {
                     §§pop().§§slot[1] = param1;
                     if(_loc6_ || _loc3_)
                     {
                        §§push(§§newactivation());
                        if(_loc6_ || _loc3_)
                        {
                           continue loop0;
                        }
                        loop6:
                        while(true)
                        {
                           §§push(Boolean(§§pop().§§slot[1].charCount));
                           if(_loc6_)
                           {
                              loop7:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    if(!_loc5_)
                                    {
                                       while(true)
                                       {
                                          §§push(§§newactivation());
                                          addr185:
                                          while(!(_loc5_ && _loc2_))
                                          {
                                             §§pop().§§slot[3] = § <§;
                                             break loop7;
                                          }
                                          break loop1;
                                       }
                                       addr184:
                                    }
                                    break;
                                 }
                                 throw new Error("Invalid sprite sheet data.");
                              }
                              if(!(_loc5_ && _loc3_))
                              {
                                 break loop0;
                              }
                              addr99:
                              addr238:
                              return;
                              addr180:
                           }
                           addr219:
                           addr256:
                           while(true)
                           {
                              §§pop();
                              if(_loc5_ && param1)
                              {
                                 addr255:
                                 §§push(§§newactivation());
                                 break;
                              }
                              §§push(§§newactivation());
                              if(!(_loc5_ && this))
                              {
                                 if(!_loc6_)
                                 {
                                    break;
                                 }
                                 continue loop6;
                              }
                              §§goto(addr185);
                           }
                           §§pop().§§slot[3] = §^!`§;
                        }
                     }
                     this.§ !4§("sprite_sheets/" + dataObject.image,onComplete);
                     §§goto(addr238);
                  }
                  break;
               }
               while(true)
               {
                  §§push(Boolean(§§pop().§§slot[1].name));
                  if(!(_loc5_ && _loc2_))
                  {
                     if(§§pop())
                     {
                        §§goto(addr219);
                     }
                     §§goto(addr180);
                  }
                  §§goto(addr219);
                  §§goto(addr185);
               }
               §§goto(addr192);
               addr45:
               addr207:
            }
            break;
         }
         §§push(this);
         §§push("sprite_sheets/" + dataObject.name);
         if(!(_loc5_ && param1))
         {
            §§push(§§pop() + ".png");
         }
         §§pop().§ !4§(§§pop(),onComplete);
         §§goto(addr99);
      }
      
      protected function §7!d§(param1:ByteArray) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:* = 0;
         if(_loc5_ || param1)
         {
            §§push(this);
            §§push(56895);
            if(!(_loc4_ && _loc3_))
            {
               §§push(25147);
               if(!(_loc4_ && param1))
               {
                  §§push(§§pop() >> 1);
               }
               §§push(§§pop() & §§pop());
            }
            §§pop().§>>§ = §§pop();
         }
         do
         {
            _loc2_ = int(Math.min(param1.length,65536) - 1);
         }
         while(!(_loc5_ || param1));
         
         loop1:
         while(true)
         {
            §§push(_loc2_);
            if(_loc5_)
            {
               §§push(0);
               if(_loc5_ || _loc2_)
               {
                  if(_loc5_)
                  {
                     if(§§pop() >= §§pop())
                     {
                        param1[_loc2_] -= int(this.§5D§() * 255);
                        if(!(_loc4_ && _loc3_))
                        {
                           §§push(_loc2_);
                           loop2:
                           while(true)
                           {
                              §§push(2);
                              addr130:
                              while(true)
                              {
                                 §§push(§§pop() - §§pop());
                                 loop8:
                                 while(true)
                                 {
                                    §§push(int(§§pop()));
                                    if(!(_loc4_ && param1))
                                    {
                                       _loc2_ = §§pop();
                                       continue loop1;
                                    }
                                    loop6:
                                    while(true)
                                    {
                                       §§push(0);
                                       addr218:
                                       while(true)
                                       {
                                          if(§§pop() >= §§pop())
                                          {
                                             param1[_loc2_] -= int(this.§5D§() * 255);
                                             while(true)
                                             {
                                                §§push(_loc2_);
                                                if(_loc5_ || param1)
                                                {
                                                   §§push(§§pop() - int(this.§5D§() * 255));
                                                   if(!(_loc4_ && _loc2_))
                                                   {
                                                      if(!_loc5_)
                                                      {
                                                         break;
                                                      }
                                                      §§push(int(§§pop()));
                                                      if(_loc5_ || _loc3_)
                                                      {
                                                         if(!_loc5_)
                                                         {
                                                            continue loop2;
                                                         }
                                                         _loc2_ = §§pop();
                                                         if(!_loc4_)
                                                         {
                                                            if(_loc4_)
                                                            {
                                                               continue;
                                                            }
                                                            if(!_loc4_)
                                                            {
                                                               if(false)
                                                               {
                                                                  while(true)
                                                                  {
                                                                  }
                                                                  addr71:
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(_loc2_);
                                                                  if(_loc4_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  continue loop6;
                                                               }
                                                               addr227:
                                                               var _loc3_:* = §§pop();
                                                               if(_loc5_)
                                                               {
                                                                  addr328:
                                                                  _loc2_ = int(param1.length - 1);
                                                                  addr329:
                                                                  addr327:
                                                                  §§push(_loc2_);
                                                                  if(_loc5_ || param1)
                                                                  {
                                                                     if(_loc5_ || _loc3_)
                                                                     {
                                                                        if(!(_loc4_ && _loc2_))
                                                                        {
                                                                           §§push(_loc3_);
                                                                           if(!(_loc4_ && this))
                                                                           {
                                                                              if(§§pop() < §§pop())
                                                                              {
                                                                                 if(_loc5_ || _loc3_)
                                                                                 {
                                                                                    if(_loc5_)
                                                                                    {
                                                                                       if(!_loc5_)
                                                                                       {
                                                                                          §§goto(addr329);
                                                                                       }
                                                                                       addr278:
                                                                                       param1.inflate();
                                                                                       return;
                                                                                       addr280:
                                                                                    }
                                                                                    addr289:
                                                                                    if(_loc5_ || param1)
                                                                                    {
                                                                                       §§goto(addr329);
                                                                                    }
                                                                                    §§push(_loc2_ - 2);
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       addr288:
                                                                                       _loc2_ = int(§§pop());
                                                                                       §§goto(addr289);
                                                                                    }
                                                                                    §§goto(addr327);
                                                                                    addr323:
                                                                                 }
                                                                                 §§goto(addr280);
                                                                              }
                                                                              param1[_loc2_] -= int(this.§5D§() * 255);
                                                                              §§goto(addr323);
                                                                           }
                                                                           §§goto(addr289);
                                                                        }
                                                                        §§goto(addr328);
                                                                     }
                                                                     §§goto(addr289);
                                                                  }
                                                                  §§goto(addr288);
                                                               }
                                                               §§goto(addr278);
                                                            }
                                                            else
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(param1.length - 1);
                                                                  if(!_loc4_)
                                                                  {
                                                                     §§push(int(§§pop()));
                                                                     if(_loc5_)
                                                                     {
                                                                        _loc2_ = §§pop();
                                                                        if(_loc4_ && _loc3_)
                                                                        {
                                                                           addr219:
                                                                           §§push(Math.max(param1.length,65536) - 65536);
                                                                           break;
                                                                        }
                                                                        if(_loc4_ && param1)
                                                                        {
                                                                           continue loop1;
                                                                        }
                                                                        §§goto(addr71);
                                                                     }
                                                                     §§goto(addr227);
                                                                  }
                                                                  break;
                                                               }
                                                               addr103:
                                                            }
                                                            §§goto(addr227);
                                                         }
                                                         §§goto(addr219);
                                                      }
                                                   }
                                                   §§goto(addr227);
                                                   §§push(int(§§pop()));
                                                }
                                                §§goto(addr227);
                                             }
                                             continue loop8;
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr219);
                     }
                     §§goto(addr103);
                  }
                  §§goto(addr130);
               }
               §§goto(addr218);
            }
            §§goto(addr227);
         }
      }
      
      protected function §5D§() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §§push(this);
            §§push(this.§>>§);
            if(_loc2_)
            {
               §§push(this.§>>§);
               if(_loc2_ || this)
               {
                  §§push(§§pop() << 21);
               }
               §§push(§§pop() ^ §§pop());
            }
            §§pop().§>>§ = §§pop();
         }
         loop0:
         while(true)
         {
            §§push(this);
            §§push(this.§>>§);
            if(!(_loc1_ && this))
            {
               §§push(§§pop() ^ this.§>>§ >>> 35);
            }
            §§pop().§>>§ = §§pop();
            while(true)
            {
               §§push(this);
               §§push(this.§>>§);
               if(!_loc1_)
               {
                  §§push(this.§>>§);
                  if(!(_loc1_ && _loc1_))
                  {
                     §§push(§§pop() << 4);
                  }
                  §§push(§§pop() ^ §§pop());
               }
               §§pop().§>>§ = §§pop();
               loop2:
               while(_loc2_ || _loc2_)
               {
                  §§push(this.§>>§);
                  loop3:
                  while(true)
                  {
                     §§push(0);
                     while(true)
                     {
                        if(§§pop() < §§pop())
                        {
                           if(_loc2_)
                           {
                              continue loop0;
                           }
                           addr59:
                           if(_loc1_)
                           {
                              continue loop2;
                           }
                        }
                        §§push(this.§>>§);
                        if(!_loc1_)
                        {
                           §§push(2147483647);
                           if(_loc2_)
                           {
                              return §§pop() / §§pop();
                           }
                           continue;
                        }
                        continue loop3;
                     }
                     continue loop0;
                  }
               }
            }
         }
      }
   }
}
