package
{
   import §!!7§.§"c§;
   import §&!T§.§<!,§;
   import §'!O§.§#!_§;
   import §'!O§.§0L§;
   import §'!O§.§<!Q§;
   import §'!O§.§<n§;
   import §'!O§.§<r§;
   import §'!O§.§=4§;
   import §'!O§.StateCutScene;
   import §'!O§.StatePlay;
   import §'!O§.§^!V§;
   import §-!"§.§=p§;
   import §-!"§.§>!W§;
   import §20§.§"!b§;
   import §2`§.HighscoreSidebar;
   import §3Y§.§4!_§;
   import §3Y§.§7!>§;
   import §9!2§.§8[§;
   import §9I§.§2!3§;
   import §9L§.§]o§;
   import §9b§.§"!S§;
   import §;!3§.§;!P§;
   import §<N§.§'M§;
   import §=! §.§,Z§;
   import §=! §.§9>§;
   import §@0§.§`>§;
   import §@R§.§!!%§;
   import §@R§.§4,§;
   import §@R§.set;
   import §^!0§.§&M§;
   import §^!5§.§,4§;
   import §^V§.§4!H§;
   import flash.display.Sprite;
   import flash.display.StageAlign;
   import flash.display.StageScaleMode;
   import flash.events.Event;
   import flash.events.FullScreenEvent;
   import flash.events.MouseEvent;
   import flash.net.SharedObject;
   import flash.system.Capabilities;
   import flash.system.Security;
   import flash.utils.ByteArray;
   import flash.utils.getTimer;
   
   public class §,L§ extends §]o§
   {
      
      public static const VERSION:String = "0.0.0.1";
      
      public static const §[!0§:String = "http://head.angrybirds-heikki.appspot.com/";
      
      public static const §1'§:int = 760;
      
      public static const §,!<§:int = 220;
      
      public static const §!!d§:int = 570;
      
      public static const §]!^§:Boolean = false;
      
      public static const §1!W§:int = 3000;
      
      public static const §1J§:String = "ABHeikkiKovalainen";
      
      public static var §2;§:String;
      
      public static const §?!S§:uint = 16777215;
      
      public static const §%I§:uint = 0;
      
      public static const §^p§:uint = 16777215;
      
      private static var §'!#§:String;
      
      private static var §#p§:Boolean = false;
      
      private static var §]!M§:Class;
      
      private static var §,$§:Class;
      
      private static var §!I§:Class;
      
      private static var § q§:Class;
      
      private static var §=!3§:Class;
      
      public static var §8!F§:§7!>§ = null;
      
      public static var § !-§:Boolean = true;
      
      public static var §+w§:§,L§ = null;
      
      public static var §+5§:Sprite = null;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            VERSION = "0.0.0.1";
            loop0:
            while(true)
            {
               §[!0§ = "http://head.angrybirds-heikki.appspot.com/";
               loop1:
               while(true)
               {
                  §1'§ = 760;
                  loop2:
                  while(true)
                  {
                     §,!<§ = 220;
                     loop3:
                     while(true)
                     {
                        §!!d§ = 570;
                        addr214:
                        while(_loc1_)
                        {
                           §]!^§ = false;
                           while(_loc1_)
                           {
                              §1!W§ = 3000;
                              while(true)
                              {
                                 §1J§ = "ABHeikkiKovalainen";
                                 addr197:
                                 while(true)
                                 {
                                    §§push(§§findproperty(§2;§));
                                    if(_loc1_)
                                    {
                                       if(§]!^§)
                                       {
                                          addr185:
                                          §§push(§[!0§);
                                          if(!_loc2_)
                                          {
                                             §§push(§§pop());
                                          }
                                       }
                                       else
                                       {
                                          §§push("../");
                                       }
                                       §§pop().§2;§ = §§pop();
                                       while(true)
                                       {
                                          §?!S§ = 16777215;
                                          continue loop3;
                                       }
                                       addr192:
                                    }
                                    §§goto(addr185);
                                 }
                              }
                           }
                           continue loop1;
                        }
                        continue loop2;
                     }
                  }
               }
               while(true)
               {
                  if(_loc1_ || _loc2_)
                  {
                     § !-§ = true;
                     continue;
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr92);
      }
      
      private var §=!E§:§8[§;
      
      private var §"!;§:§2!3§;
      
      public function §,L§(param1:HeikkiAngryBirdsCanvas)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:SharedObject = null;
         if(_loc6_)
         {
            this.§=!E§ = new §8[§();
            loop0:
            while(true)
            {
               if(Capabilities.os.indexOf("Mac") >= 0)
               {
                  loop1:
                  while(true)
                  {
                     §#p§ = true;
                     addr109:
                     while(!_loc7_)
                     {
                     }
                     continue loop0;
                     loop5:
                     while(true)
                     {
                        if(!(_loc6_ || _loc2_))
                        {
                           continue loop1;
                        }
                        while(true)
                        {
                           Security.allowDomain("http://heikki.angrybirds.com/");
                           loop7:
                           while(true)
                           {
                              §,Z§.enabled = true;
                              addr72:
                              addr97:
                              while(_loc6_)
                              {
                                 §9>§.§>%§(§,Z§.§]+§);
                                 continue loop7;
                              }
                              while(true)
                              {
                                 Security.allowDomain("http://angrybirds-heikki.appspot.com");
                                 continue loop5;
                              }
                           }
                        }
                     }
                     §§goto(addr109);
                  }
               }
               while(true)
               {
                  this.§"!;§ = new §2!3§();
                  §§goto(addr97);
               }
            }
         }
         §§goto(addr91);
      }
      
      public static function §`!b§(param1:Boolean) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§§newactivation());
         while(true)
         {
            §§pop().§§slot[2] = null;
            while(true)
            {
               §§push(§§newactivation());
               if(!(_loc4_ || §,L§))
               {
                  break;
               }
               §§pop().§§slot[1] = param1;
               while(_loc4_ || param1)
               {
                  while(true)
                  {
                     § !-§ = value;
                     do
                     {
                        §&M§.§6!=§(§ !-§);
                     }
                     while(_loc5_);
                     
                     if(!_loc4_)
                     {
                        break;
                     }
                     if(true)
                     {
                        try
                        {
                           §§push(§§newactivation());
                           if(_loc4_ || §,L§)
                           {
                              §§pop().§§slot[2] = SharedObject.getLocal(§1J§);
                              if(_loc4_ || §,L§)
                              {
                                 §§push(§§newactivation());
                                 if(_loc4_)
                                 {
                                    §§pop().§§slot[2].data.useSounds = value;
                                    if(_loc4_)
                                    {
                                       addr102:
                                       mySO.flush();
                                    }
                                 }
                                 §§goto(addr102);
                              }
                              §§goto(addr128);
                           }
                           §§goto(addr102);
                        }
                        catch(e:Error)
                        {
                        }
                        addr128:
                     }
                     continue;
                     return;
                  }
               }
            }
         }
      }
      
      public static function §`!+§() : Boolean
      {
         return § !-§;
      }
      
      public static function §`!]§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(§&M§.§2!W§("Channel_Theme"));
            loop0:
            while(true)
            {
               §§push(§§pop() == null);
               addr106:
               while(true)
               {
                  if(!§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        continue loop0;
                     }
                     addr108:
                  }
                  else
                  {
                     while(true)
                     {
                        addr69:
                        while(true)
                        {
                           if(§§pop())
                           {
                              if(!(_loc1_ && _loc1_))
                              {
                                 while(true)
                                 {
                                    §&M§.§6!#§("Sound_Helmet_Theme","Channel_Theme",100,0.65);
                                 }
                                 addr77:
                              }
                              while(true)
                              {
                                 if(!(_loc2_ || _loc2_))
                                 {
                                    continue loop0;
                                 }
                              }
                           }
                           addr20:
                           return;
                        }
                     }
                     addr68:
                  }
               }
            }
         }
         §§goto(addr77);
      }
      
      public static function §=!5§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §&M§.§7!<§("Channel_Theme");
         }
      }
      
      public static function get §[!;§() : String
      {
         return §'!#§;
      }
      
      public static function set §[!;§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §'!#§ = param1;
         }
      }
      
      public static function get §;]§() : Boolean
      {
         return §#p§;
      }
      
      override protected function initStateLoad() : §>!W§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(§§findproperty(§^!V§));
         §§push(true);
         §§push(§>!W§.§@o§);
         §§push(this.getMinLoadingScreenTime());
         if(_loc2_)
         {
            §§push(stage.loaderInfo.parameters.assetsUrl);
            if(_loc2_)
            {
               §§push(§§pop());
               if(_loc2_)
               {
                  if(!§§pop())
                  {
                     if(!_loc1_)
                     {
                        addr48:
                        §§pop();
                        addr50:
                        §§push("");
                        §§push(stage.loaderInfo.parameters.buildNumber);
                        if(!(_loc1_ && this))
                        {
                           return new §§pop().§^!V§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop() || "");
                        }
                     }
                     §§goto(addr74);
                  }
                  §§goto(addr50);
               }
               §§goto(addr74);
            }
         }
         §§goto(addr48);
      }
      
      private function §4<§(param1:ByteArray) : void
      {
      }
      
      private function §21§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §!!%§.§;@§();
         }
      }
      
      private function § use§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            §!!%§.§46§();
         }
      }
      
      private function §=!&§(param1:Event) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         §§push(stage.stageWidth / §1'§);
         if(_loc8_ || _loc2_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(stage.stageHeight / §!!d§);
         if(_loc8_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(_loc8_ || _loc2_)
         {
            §§push(_loc2_);
            if(!(_loc7_ && _loc3_))
            {
               if(§§pop() < _loc3_)
               {
                  if(!_loc7_)
                  {
                     §=Z§.scaleX = §=Z§.scaleY = _loc2_;
                     if(!(_loc7_ && _loc2_))
                     {
                        §"!S§.§[!6§(§=Z§.x,§=Z§.y,stage.stageWidth,stage.stageWidth * (§!!d§ / §1'§));
                        if(_loc7_)
                        {
                           loop2:
                           while(true)
                           {
                              §§push(Number(stage.stageHeight));
                              if(!_loc7_)
                              {
                                 addr155:
                                 if(_loc8_ || param1)
                                 {
                                    while(true)
                                    {
                                       _loc5_ = §§pop();
                                       addr163:
                                       while(true)
                                       {
                                          §"!S§.§[!6§(§=Z§.x,§=Z§.y,_loc4_,_loc5_);
                                          if(_loc8_ || _loc2_)
                                          {
                                             if(_loc8_ || _loc2_)
                                             {
                                                break;
                                             }
                                             continue loop2;
                                          }
                                       }
                                       §§goto(addr122);
                                    }
                                    addr162:
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       §§push(Number(§§pop()));
                                       break loop2;
                                       §§goto(addr155);
                                    }
                                    addr180:
                                 }
                              }
                              break;
                           }
                           while(true)
                           {
                              _loc4_ = §§pop();
                              §§goto(addr182);
                           }
                           addr182:
                        }
                        addr122:
                        return;
                     }
                     §§push(stage.stageHeight * (§1'§ / §!!d§));
                     addr120:
                     §§goto(addr180);
                  }
               }
               else
               {
                  §=Z§.scaleX = §=Z§.scaleY = _loc3_;
                  if(!(_loc7_ && param1))
                  {
                     §§goto(addr120);
                  }
               }
               §§goto(addr163);
            }
            §§goto(addr162);
         }
         §§goto(addr163);
      }
      
      protected function §`!&§(param1:FullScreenEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§=!&§(null);
         }
      }
      
      override public function setFirstGameState() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.setFirstGameState();
            while(true)
            {
               §'M§.§ s§.§ !c§();
               while(_loc2_)
               {
                  §,4§.§ ,§(§"c§.§%!K§(this.§=!E§.getFileAsString("Chapters.json")));
                  while(!_loc1_)
                  {
                     this.§^!Y§();
                     if(!(_loc1_ && _loc1_))
                     {
                        return;
                        addr44:
                     }
                  }
               }
            }
         }
         §§goto(addr44);
      }
      
      private function §^!Y§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:int = Math.round(getTimer() / 1000);
         if(_loc3_)
         {
            §9>§.§>%§(§,Z§.§]!7§,_loc1_.toString(),_loc1_);
         }
         var _loc2_:XML = this.§9]§(set.§=!^§(§ q§),set.§=!^§(§!I§));
         if(_loc3_)
         {
            §"!S§.§"A§(_loc2_,set.§=!^§(§=!3§));
            do
            {
               §"!S§.§2K§(this.§=!E§.§1!=§,§`>§.§9O§(),this.§?!H§);
            }
            while(!_loc3_);
            
         }
      }
      
      private function §?!H§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            §<r§.§>!D§ = §#!_§.§@o§;
            do
            {
               §,4§.§&O§(§,4§.§`Y§(HighscoreSidebar.§1!§));
               do
               {
                  §9^§(§<r§.§@o§);
               }
               while(!(_loc2_ || param1));
               
            }
            while(_loc3_ && this);
            
         }
      }
      
      private function §9]§(param1:XML, param2:XML) : XML
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc3_:XML = new XML(param1.Items.toXMLString());
         var _loc4_:XML = new XML(param1.Item_Materials.toXMLString());
         var _loc5_:XML = new XML(param1.Item_Shapes.toXMLString());
         var _loc6_:XML = new XML(param1.Item_Resources_Sounds.toXMLString());
         var _loc7_:XML = new XML(param1.SoundChannels.toXMLString());
         var _loc8_:XML = new XML(param1.Material_Damage_Multipliers.toXMLString());
         var _loc9_:XML = new XML(param1.Material_Velocity_Multipliers.toXMLString());
         if(_loc10_)
         {
            param2.appendChild(_loc3_);
            while(true)
            {
               param2.appendChild(_loc4_);
               loop1:
               while(_loc10_)
               {
                  param2.appendChild(_loc5_);
                  while(true)
                  {
                     param2.appendChild(_loc6_);
                     while(!_loc11_)
                     {
                        addr101:
                        if(!(_loc11_ && this))
                        {
                           param2.appendChild(_loc9_);
                           addr108:
                           if(!(_loc10_ || _loc3_))
                           {
                              while(!_loc11_)
                              {
                                 §§goto(addr101);
                                 §§goto(addr108);
                              }
                              while(true)
                              {
                                 if(_loc11_)
                                 {
                                    continue loop1;
                                 }
                                 param2.appendChild(_loc8_);
                                 §§goto(addr99);
                              }
                              addr99:
                              addr113:
                           }
                           return param2;
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            param2.appendChild(_loc7_);
            §§goto(addr113);
         }
      }
      
      override public function updateState(param1:Number) : int
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:int = 0;
         if(_loc5_)
         {
            §§push(§"!S§.§;4§);
            if(!(_loc4_ && _loc3_))
            {
               if(§§pop() != null)
               {
                  addr38:
                  if(_loc5_)
                  {
                     §§push(§"!S§.§;4§);
                  }
                  §§push(super.updateState(param1));
                  if(_loc5_)
                  {
                     §§push(int(§§pop()));
                  }
                  var _loc2_:* = §§pop();
                  if(!(_loc4_ && this))
                  {
                     if(!§=!@§().isGenericState())
                     {
                        loop4:
                        while(true)
                        {
                           §§push(_loc2_);
                           addr93:
                           while(§§pop() == §=p§.STATE_STATUS_COMPLETED)
                           {
                              do
                              {
                                 §§push(§4,§);
                                 §§push("AngryBirdSocial::run() state change is about to start. Old State = " + §=!@§().mName);
                                 if(!_loc4_)
                                 {
                                    §§push(§§pop() + " New State = ");
                                    if(!_loc4_)
                                    {
                                       §§push(§§pop() + §=!@§().mNextState);
                                    }
                                 }
                                 §§pop().log(§§pop());
                                 do
                                 {
                                    §9^§(§=!@§().mNextState);
                                 }
                                 while(_loc4_);
                                 
                              }
                              while(!_loc5_);
                              
                              if(!(_loc4_ && _loc3_))
                              {
                                 break;
                              }
                              continue loop4;
                           }
                        }
                        addr92:
                     }
                     while(true)
                     {
                        §§push(_loc2_);
                        if(_loc5_)
                        {
                           break;
                        }
                        §§goto(addr93);
                     }
                     return §§pop();
                  }
                  §§goto(addr92);
               }
               §§goto(addr38);
            }
            §§pop().update(param1);
         }
         §§goto(addr38);
      }
      
      override public function getMinLoadingScreenTime() : Number
      {
         return §1!W§;
      }
      
      override public function getVersionInfo() : String
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:* = null;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(_loc4_ || this)
         {
            if(stage != null)
            {
               loop0:
               while(true)
               {
                  §§push(stage.loaderInfo.parameters.buildNumber);
                  while(true)
                  {
                     _loc1_ = §§pop();
                     while(true)
                     {
                        §§push(_loc1_);
                        loop3:
                        while(true)
                        {
                           §§push(§§pop() == null);
                           if(_loc4_)
                           {
                              §§push(!§§pop());
                              if(_loc4_)
                              {
                                 addr203:
                                 if(§§pop())
                                 {
                                    loop4:
                                    while(true)
                                    {
                                       §§pop();
                                       addr206:
                                       while(true)
                                       {
                                          §§push(_loc1_);
                                          if(!_loc5_)
                                          {
                                             continue loop4;
                                          }
                                          continue loop3;
                                       }
                                    }
                                    addr205:
                                 }
                                 while(§§pop())
                                 {
                                    while(_loc4_)
                                    {
                                       §§push(_loc1_);
                                       continue loop3;
                                    }
                                    continue loop0;
                                    §§goto(addr167);
                                 }
                                 loop14:
                                 while(true)
                                 {
                                    §§push(VERSION);
                                    if(_loc4_)
                                    {
                                       if(_loc4_ || _loc1_)
                                       {
                                          break;
                                       }
                                       loop15:
                                       while(true)
                                       {
                                          §§push(§§pop().replace("-","."));
                                          addr84:
                                          while(true)
                                          {
                                             _loc1_ = §§pop();
                                             loop17:
                                             while(true)
                                             {
                                                _loc3_++;
                                                while(_loc3_ >= 5)
                                                {
                                                   if(_loc4_)
                                                   {
                                                      if(!(_loc4_ || _loc1_))
                                                      {
                                                         continue;
                                                      }
                                                      §§push(_loc1_);
                                                      continue;
                                                   }
                                                   if(_loc4_)
                                                   {
                                                      break loop17;
                                                   }
                                                   continue loop17;
                                                }
                                                continue loop15;
                                             }
                                             continue loop14;
                                          }
                                       }
                                    }
                                    while(_loc5_ && this)
                                    {
                                       §§goto(addr84);
                                    }
                                    return §§pop();
                                 }
                                 return §§pop().replace("{svn_version}","local dev build");
                                 addr31:
                              }
                              §§goto(addr205);
                           }
                           §§goto(addr203);
                        }
                     }
                  }
               }
            }
            §§goto(addr31);
         }
         §§goto(addr206);
      }
      
      public function get §;S§() : §2!3§
      {
         return this.§"!;§;
      }
   }
}
