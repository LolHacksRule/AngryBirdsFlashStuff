package
{
   import § m§.§]q§;
   import §&^§.§[!7§;
   import §'!O§.§]L§;
   import §,!"§.§"!A§;
   import §,!"§.§&!7§;
   import §,!"§.§0-§;
   import §,!"§.§0H§;
   import §,!"§.§4S§;
   import §,!"§.§;!L§;
   import §,!"§.§>!+§;
   import §,!"§.§@f§;
   import §,!"§.§[!G§;
   import §,!"§.§]j§;
   import §0!E§.§-<§;
   import §0!E§.§3"§;
   import §6g§.§3+§;
   import §8!B§.§#! §;
   import §9P§.§'B§;
   import §9T§.§?9§;
   import §<M§.§?!6§;
   import §@B§.§8V§;
   import §]p§.§9!,§;
   import §^]§.§`!K§;
   import §`K§.§^!5§;
   import com.rovio.assets.LoadingScreen;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.display.Stage3D;
   import flash.display.StageQuality;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.net.SharedObject;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.Dictionary;
   import flash.utils.getTimer;
   
   public class §!D§ extends AngryBirdsFP11
   {
      
      public static const §'S§:String = "0.0.1.0 (r98915)";
      
      protected static var §?!P§:Class;
      
      protected static var § a§:Class;
      
      protected static var §!2§:Class;
      
      protected static var §-!0§:Class;
      
      public static const §+!#§:String = "http://philadelphia-eagles.appspot.com/";
      
      public static const §^!E§:Boolean = false;
      
      public static var §1P§:String;
      
      public static const §3[§:String = "ABEagle";
      
      public static const §5!%§:String;
      
      public static const §2I§:String;
      
      public static const §6+§:String;
      
      public static const §8T§:String;
      
      public static var §,<§:Dictionary;
      
      public static var §46§:§!D§;
      
      private static var §<#§:String = "";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || §!D§)
         {
            §'S§ = "0.0.1.0 (r98915)";
            loop0:
            while(true)
            {
               §?!P§ = § !J§;
               addr182:
               while(true)
               {
                  § a§ = §!!-§;
                  §!2§ = §^h§;
                  do
                  {
                     §-!0§ = §?!F§;
                  }
                  while(!(_loc1_ || _loc1_));
                  
                  §+!#§ = "http://philadelphia-eagles.appspot.com/";
                  while(true)
                  {
                     §^!E§ = false;
                     while(_loc1_ || _loc2_)
                     {
                        §§push(§§findproperty(§1P§));
                        if(_loc1_ || §!D§)
                        {
                           if(§^!E§)
                           {
                              addr121:
                              §§push(§+!#§);
                              if(_loc1_)
                              {
                                 §§push(§§pop());
                              }
                           }
                           else
                           {
                              §§push("../");
                           }
                           §§pop().§1P§ = §§pop();
                           continue loop0;
                        }
                        §§goto(addr121);
                        if(!(_loc2_ && _loc1_))
                        {
                           return;
                           addr48:
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            §5!%§ = §3[§ + "_LEVEL_EAGLE_SCORE";
            loop7:
            while(true)
            {
               §2I§ = §3[§ + "_LEVEL_STARS";
               §6+§ = §3[§ + "_LEVEL_SCORE";
               while(true)
               {
                  if(!(_loc2_ && _loc1_))
                  {
                     if(_loc1_)
                     {
                        if(!_loc2_)
                        {
                           continue;
                        }
                        §§goto(addr182);
                     }
                     break;
                  }
                  continue loop7;
               }
               §§goto(addr128);
            }
         }
         §§goto(addr48);
      }
      
      private var §+_§:String = null;
      
      private var §8$§:String = "";
      
      private var § !<§:Boolean = false;
      
      private var §8§:int = 0;
      
      private var §=!0§:Number;
      
      private var §?2§:Number;
      
      public function §!D§(param1:§'B§, param2:Number, param3:Number)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         this.§=!0§ = param2;
         while(true)
         {
            this.§?2§ = param3;
            super(param1);
            do
            {
               §46§ = this;
               param1.stage.quality = StageQuality.MEDIUM;
            }
            while(_loc5_ && this);
            
            while(true)
            {
               §?!6§.initialize(param1.stage);
               §#! §.§92§.visible = §^!E§;
               if(_loc5_)
               {
                  break;
               }
               if(false)
               {
                  continue;
               }
               var _loc4_:String;
               §§push(_loc4_ = §8V§.§^^§("window.navigator.userAgent.toString"));
               if(!(_loc5_ && param2))
               {
                  §§push("Safari");
                  if(_loc6_ || param3)
                  {
                     if(§§pop().indexOf(§§pop()) != -1)
                     {
                        §<#§ = "Safari";
                     }
                     §§push(_loc4_);
                     loop3:
                     while(true)
                     {
                        §§push("Firefox");
                        loop4:
                        while(true)
                        {
                           if(§§pop().indexOf(§§pop()) != -1)
                           {
                              if(_loc6_)
                              {
                                 §<#§ = "Firefox";
                              }
                              while(true)
                              {
                                 loop9:
                                 for(; !(_loc5_ && this); §<#§ = "Opera",if(_loc6_ || param2)
                                 {
                                    addr104:
                                 },continue,return)
                                 {
                                    loop10:
                                    while(true)
                                    {
                                       §§push(_loc4_);
                                       addr148:
                                       loop11:
                                       for(; !(_loc5_ && param2); while(true)
                                       {
                                          §§push(_loc4_);
                                          if(!(_loc6_ || param2))
                                          {
                                             continue loop11;
                                          }
                                          §§goto(addr117);
                                          §§goto(addr166);
                                       },§§goto(addr104))
                                       {
                                          §§push("MSIE");
                                          while(true)
                                          {
                                             if(_loc6_)
                                             {
                                                if(!_loc6_)
                                                {
                                                   break;
                                                }
                                                if(§§pop().indexOf(§§pop()) == -1)
                                                {
                                                   continue loop11;
                                                }
                                                §<#§ = "Internet Explorer";
                                                while(true)
                                                {
                                                   continue loop11;
                                                   addr128:
                                                   if(!(_loc5_ && param2))
                                                   {
                                                      continue loop9;
                                                   }
                                                }
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                   if(§§pop().indexOf(§§pop()) != -1)
                                                   {
                                                      §<#§ = "Chrome";
                                                      continue loop9;
                                                   }
                                                   continue loop10;
                                                }
                                                addr187:
                                             }
                                             addr117:
                                             §§push("Opera");
                                             if(!(_loc6_ || param2))
                                             {
                                                continue;
                                             }
                                             if(§§pop().indexOf(§§pop()) == -1)
                                             {
                                                §§goto(addr104);
                                             }
                                             §§goto(addr128);
                                          }
                                          continue loop4;
                                       }
                                       continue loop3;
                                    }
                                 }
                              }
                           }
                           while(true)
                           {
                              §§push(_loc4_);
                              continue loop3;
                           }
                        }
                     }
                  }
                  §§goto(addr187);
               }
               §§goto(addr186);
            }
         }
      }
      
      public static function §[5§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(§[!7§.§-K§("Channel_Theme"));
            loop0:
            while(true)
            {
               §§push(§§pop() == null);
               addr101:
               while(true)
               {
                  if(§§pop())
                  {
                     while(§§pop())
                     {
                        if(!(_loc1_ && _loc2_))
                        {
                           if(_loc1_ && _loc2_)
                           {
                              continue loop0;
                           }
                           §[!7§.playSound("title_theme","Channel_Theme",100,0.65);
                        }
                        break;
                     }
                     return;
                     addr63:
                  }
                  while(true)
                  {
                     §§pop();
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr89);
      }
      
      public static function §#!O§(param1:String, param2:*) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§pop().§§slot[3] = null;
            loop1:
            while(true)
            {
               addr38:
               while(true)
               {
                  §§push(§§newactivation());
                  loop3:
                  while(true)
                  {
                     §§pop().§§slot[1] = param1;
                     addr42:
                     while(_loc5_ || §!D§)
                     {
                        §§push(§§newactivation());
                        if(_loc5_)
                        {
                           continue loop0;
                        }
                        continue loop3;
                     }
                     continue loop1;
                  }
               }
               try
               {
                  addr55:
                  if(§<#§ != "Chrome")
                  {
                     if(!(_loc6_ && param1))
                     {
                        §§push(§§newactivation());
                        if(_loc5_ || param1)
                        {
                           §§pop().§§slot[3] = SharedObject.getLocal(§3[§);
                           if(_loc5_ || param1)
                           {
                              addr149:
                              mySO.data[key] = value;
                           }
                           §§push(§§newactivation());
                           if(_loc6_ && _loc3_)
                           {
                              §§goto(addr149);
                           }
                           §§pop().§§slot[3].flush();
                           return;
                           addr157:
                           addr156:
                           addr117:
                           addr147:
                        }
                        §§goto(addr149);
                     }
                     else
                     {
                        §3+§.flush();
                        addr125:
                        if(!_loc5_)
                        {
                           §§goto(addr125);
                        }
                        if(_loc5_ || param1)
                        {
                           if(_loc5_ || param1)
                           {
                              if(false)
                              {
                              }
                              §§goto(addr157);
                           }
                           else
                           {
                              §§goto(addr156);
                           }
                        }
                     }
                     §§goto(addr147);
                  }
                  else
                  {
                     §3+§.§9z§(key,value);
                  }
                  §§goto(addr125);
               }
               catch(e:Error)
               {
                  throw e;
               }
               §§goto(addr157);
            }
         }
      }
      
      public static function §;2§(param1:String) : *
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§§newactivation());
         if(!_loc5_)
         {
            §§pop().§§slot[2] = null;
            if(_loc4_)
            {
               addr29:
               var key:String = param1;
            }
            try
            {
               §§push(§<#§);
               if(_loc4_ || _loc2_)
               {
                  if(§§pop() != "Chrome")
                  {
                     §§push(§§newactivation());
                     if(_loc4_)
                     {
                        §§pop().§§slot[2] = SharedObject.getLocal(§3[§);
                        if(!_loc4_)
                        {
                           return;
                           addr91:
                        }
                        §§push(§§newactivation());
                     }
                     return §§pop().§§slot[2].data[key];
                  }
                  return §3+§.getValue(key);
               }
            }
            catch(e:Error)
            {
               throw e;
            }
            §§goto(addr91);
         }
         §§goto(addr29);
      }
      
      public static function §,Y§(param1:String) : void
      {
         var key:String = param1;
         try
         {
            delete SharedObject.getLocal(§3[§).data[key];
         }
         catch(e:Error)
         {
            throw e;
         }
      }
      
      public static function §'Q§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var i:int = 0;
         try
         {
            §§push(§§newactivation());
            if(_loc3_ || §!D§)
            {
               §§pop().§§slot[1] = 0;
               if(_loc3_ || §!D§)
               {
                  while(true)
                  {
                     §§push(§§newactivation());
                     addr141:
                     while(true)
                     {
                        §§push(§§pop().§§slot[1]);
                        addr142:
                        §§goto(addr144);
                     }
                  }
               }
               loop6:
               while(true)
               {
                  §§push(§§newactivation());
                  if(!_loc4_)
                  {
                     while(true)
                     {
                        §§push(§§pop().§§slot[1]);
                        if(!_loc4_)
                        {
                           §§push(§§pop() + 1);
                           if(_loc3_)
                           {
                              §§goto(addr51);
                           }
                           §§goto(addr142);
                        }
                        addr51:
                        i = §§pop();
                        if(_loc3_ || _loc1_)
                        {
                           if(!_loc3_)
                           {
                              continue loop6;
                           }
                           if(!_loc4_)
                           {
                              §§goto(addr65);
                           }
                           §§goto(addr108);
                        }
                        §§goto(addr144);
                     }
                     addr45:
                  }
                  §§goto(addr141);
               }
            }
            §§goto(addr45);
         }
         catch(e:Error)
         {
            throw e;
         }
         addr144:
         while(§§pop() < 16)
         {
            §§push(§!D§);
            §§push(§!D§.§5!%§ + "1-");
            if(!(_loc4_ && _loc3_))
            {
               §§push(§§pop() + (i + 1));
            }
            §§pop().§,Y§(§§pop());
            while(true)
            {
               §§push(§!D§);
               §§push(§!D§.§6+§ + "1-");
               if(!_loc4_)
               {
                  §§push(§§pop() + (i + 1));
               }
               §§pop().§,Y§(§§pop());
               addr108:
               while(true)
               {
                  addr79:
                  while(true)
                  {
                     §§push(§!D§);
                     §§push(§!D§.§2I§ + "1-");
                     if(_loc3_)
                     {
                        §§push(§§pop() + (i + 1));
                     }
                     §§pop().§,Y§(§§pop());
                  }
               }
               addr65:
               if(!_loc3_)
               {
                  continue;
               }
               if(true)
               {
                  continue loop0;
               }
               §§goto(addr79);
            }
         }
         addr144:
      }
      
      public static function §%2§(param1:int) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(§9!,§.§>o§.§+d§());
         if(!(_loc3_ && _loc2_))
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc4_ || _loc2_)
         {
            if(param1 + 1 <= _loc2_)
            {
               loop0:
               while(§`!K§.§6J§() == null)
               {
                  if(!(_loc3_ && _loc3_))
                  {
                     if(!(_loc4_ || §!D§))
                     {
                        while(true)
                        {
                           continue loop0;
                        }
                        continue;
                     }
                     §§push(true);
                     if(_loc4_ || _loc2_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     if(_loc4_ || _loc2_)
                     {
                        break;
                     }
                     addr105:
                     return true;
                  }
                  return §§pop();
               }
               §§push(false);
               if(_loc4_)
               {
                  return §§pop();
               }
               §§goto(addr84);
            }
            §§goto(addr105);
         }
         §§goto(addr107);
      }
      
      public static function § t§(param1:int, param2:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || §!D§)
         {
            if(§,<§ == null)
            {
               while(true)
               {
                  §,<§ = new Dictionary();
                  while(true)
                  {
                  }
               }
               addr72:
            }
            do
            {
               §,<§[param2] = param1;
               if(!(_loc4_ || §!D§))
               {
                  continue;
               }
            }
            while(_loc3_ && param1);
            
            return;
         }
         §§goto(addr72);
      }
      
      public static function §]!?§(param1:String) : int
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            §§push(§,<§ == null);
            if(!(_loc3_ && _loc3_))
            {
               if(!§§pop())
               {
                  loop2:
                  while(true)
                  {
                     §§pop();
                     addr81:
                     while(true)
                     {
                        §§push(§,<§[param1] == null);
                        if(_loc2_)
                        {
                           break;
                        }
                        continue loop2;
                     }
                  }
                  addr80:
               }
               while(§§pop())
               {
                  if(_loc3_)
                  {
                     break;
                  }
                  addr67:
                  if(_loc2_)
                  {
                     return -1;
                  }
                  §§goto(addr81);
               }
               return §,<§[param1];
            }
            §§goto(addr80);
         }
         §§goto(addr67);
      }
      
      private function §=_§() : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:Stage3D = null;
         var _loc1_:* = 0;
         try
         {
            _loc2_ = canvas.stage.stage3Ds[0];
            if(!(_loc4_ && _loc2_))
            {
               if(_loc2_)
               {
                  if(!(_loc4_ && this))
                  {
                     §§push(1);
                     if(_loc5_)
                     {
                        _loc1_ = §§pop();
                        if(!_loc4_)
                        {
                           addr84:
                           if(_loc1_ == 0)
                           {
                              if(!_loc4_)
                              {
                                 addr88:
                                 §§push(false);
                                 if(_loc5_ || _loc3_)
                                 {
                                    return §§pop();
                                 }
                              }
                              else
                              {
                                 addr97:
                                 return true;
                              }
                              return §§pop();
                           }
                           §§goto(addr97);
                           addr71:
                        }
                        §§goto(addr88);
                     }
                     §§goto(addr84);
                  }
                  §§goto(addr97);
               }
            }
            §§goto(addr71);
         }
         catch(e:Error)
         {
            var _loc3_:* = e;
         }
         §§goto(addr84);
      }
      
      public function §<!E§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            §-<§.§>v§(§-<§.§[!'§);
         }
         do
         {
            navigateToURL(new URLRequest("https://apps.facebook.com/angrybirds/?ref=" + param1),"_blank");
         }
         while(!_loc3_);
         
      }
      
      override public function getMinLoadingScreenTime() : Number
      {
         return 1;
      }
      
      override public function onEnterFrame(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            super.onEnterFrame(param1);
         }
      }
      
      override protected function initSoundEngine() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §[!7§.init();
         }
         do
         {
            §[!7§.enabled = true;
         }
         while(!_loc1_);
         
      }
      
      override protected function getAssetMap() : XML
      {
         return §^!5§.§'l§(§?!P§);
      }
      
      override protected function getUIData() : XML
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:XML = super.getUIData();
         var _loc2_:XML = §^!5§.§'l§(§ a§);
         if(!_loc4_)
         {
            this.§0!3§(_loc2_,_loc1_,["Views","Components"],true);
         }
         return _loc1_;
      }
      
      override protected function getLoadingScreen() : DisplayObjectContainer
      {
         return new LoadingScreen();
      }
      
      override protected function getItemData() : XML
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:XML = super.getItemData();
         var _loc2_:XML = §^!5§.§'l§(§-!0§);
         var _loc3_:Array = ["Item_Materials","Item_Shapes","Item_Resources_Sounds","SoundChannels","Items","Material_Damage_Multipliers","Material_Velocity_Multipliers"];
         if(_loc5_ || _loc1_)
         {
            this.§0!3§(_loc2_,_loc1_,_loc3_);
         }
         return _loc1_;
      }
      
      override protected function getLevelBackgrounds() : XML
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:XML = super.getLevelBackgrounds();
         var _loc2_:XML = §^!5§.§'l§(§!2§);
         if(_loc3_ || _loc2_)
         {
            this.§0!3§(_loc2_,_loc1_,["Backgrounds"]);
         }
         return _loc1_;
      }
      
      override protected function initialize() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            super.initialize();
         }
         loop0:
         while(true)
         {
            this.§+_§ = stage.loaderInfo.parameters.levelId;
            loop1:
            while(true)
            {
               loop2:
               while(true)
               {
                  §§push(this.§+_§);
                  loop3:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        while(true)
                        {
                           this.§+_§ = "1-1";
                           addr74:
                           while(_loc2_)
                           {
                           }
                           continue loop0;
                        }
                        addr71:
                     }
                     while(true)
                     {
                        §§push(stage.loaderInfo.parameters.score);
                        if(!_loc3_)
                        {
                           if(!§§pop())
                           {
                              if(!_loc3_)
                              {
                                 if(_loc3_ && _loc3_)
                                 {
                                    continue loop3;
                                 }
                                 §§pop();
                                 if(!_loc3_)
                                 {
                                    if(_loc2_ || _loc3_)
                                    {
                                       if(!_loc3_)
                                       {
                                          if(true)
                                          {
                                             addr89:
                                             §§push("0");
                                          }
                                          continue loop2;
                                          break;
                                       }
                                       continue loop1;
                                    }
                                    §§goto(addr71);
                                 }
                                 §§goto(addr74);
                              }
                              break;
                           }
                           §§goto(addr89);
                        }
                        break;
                     }
                     var _loc1_:* = §§pop();
                     if(!_loc3_)
                     {
                        this.§8§ = parseInt(_loc1_);
                        addr143:
                        if(this.§8§ <= 0)
                        {
                           addr132:
                           this.§8§ = 0;
                           if(!_loc3_)
                           {
                              addr98:
                              §6r§(true);
                              if(!(_loc3_ && _loc3_))
                              {
                                 if(_loc3_ && this)
                                 {
                                    §§goto(addr132);
                                 }
                                 return;
                              }
                              §§goto(addr132);
                           }
                           §§goto(addr143);
                        }
                        §§goto(addr98);
                     }
                     §§goto(addr132);
                  }
               }
            }
         }
      }
      
      override protected function initLevelMain() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(!this.§=_§())
            {
               this.§^"§();
               if(!_loc1_)
               {
                  addr51:
               }
               return;
            }
            if(_loc1_)
            {
               §#! §.§`'§ = new §?9§(stage);
            }
         }
         §§goto(addr51);
      }
      
      private function §^"§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:TextField = new TextField();
         _loc1_.text = "The game doesn\'t yet run on this device";
         loop0:
         while(true)
         {
            _loc1_.textColor = 0;
            while(true)
            {
               _loc1_.selectable = false;
               while(!(_loc2_ && _loc2_))
               {
                  _loc1_.height = 30;
                  continue loop0;
                  addr75:
                  if(_loc3_ || _loc3_)
                  {
                     _loc1_.x = stage.stageWidth - _loc1_.width >> 1;
                     do
                     {
                        _loc1_.y = (stage.stageHeight - _loc1_.height >> 1) - 20;
                     }
                     while(_loc2_);
                     
                     addr82:
                     if(!_loc2_)
                     {
                        return;
                     }
                     loop5:
                     while(true)
                     {
                        if(!(_loc3_ || _loc1_))
                        {
                           while(!_loc2_)
                           {
                              _loc1_.autoSize = TextFieldAutoSize.CENTER;
                              stage.addChild(_loc1_);
                              continue loop5;
                           }
                           continue loop0;
                           addr93:
                        }
                        §§goto(addr75);
                     }
                  }
               }
            }
         }
      }
      
      override protected function initUserProgress() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §`I§ = new §]q§(§#U§);
         }
      }
      
      override protected function initStates() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §#!F§(new §"!A§(false));
            §#!F§(new §>!+§(false));
            do
            {
               §#!F§(new §@f§(false));
            }
            while(!_loc2_);
            
            §#!F§(new §[!G§(false,this.§8§));
         }
         loop1:
         while(true)
         {
            §#!F§(new §4S§(false));
            while(true)
            {
               §#!F§(new §]j§(false,this.§8§));
               loop3:
               while(!(_loc1_ && _loc2_))
               {
                  §#!F§(new §&!7§(false));
                  loop4:
                  while(true)
                  {
                     §#!F§(new §0H§(false));
                     while(true)
                     {
                        if(_loc2_ || _loc2_)
                        {
                           if(!_loc2_)
                           {
                              break;
                           }
                           continue loop1;
                        }
                        continue loop4;
                        addr65:
                        §#!F§(new §;!L§(false));
                        if(_loc2_)
                        {
                           return;
                        }
                     }
                     continue loop3;
                  }
               }
            }
         }
      }
      
      override protected function initStateLoad() : §]L§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            if(!§^!E§)
            {
               if(_loc2_)
               {
                  if(!stage.loaderInfo.parameters.assetsUrl)
                  {
                     if(!(_loc1_ && _loc1_))
                     {
                        §-<§.§0O§("assetsUrl");
                        addr40:
                     }
                  }
               }
            }
            §§push(§§findproperty(§0-§));
            §§push(true);
            §§push(§]L§.§-A§);
            §§push(this.getMinLoadingScreenTime());
            if(!_loc1_)
            {
               §§push(stage.loaderInfo.parameters.assetsUrl);
               if(!_loc1_)
               {
                  §§push(§§pop());
                  if(_loc2_ || this)
                  {
                     if(!§§pop())
                     {
                        if(!(_loc1_ && _loc1_))
                        {
                           addr94:
                           §§pop();
                           addr96:
                           §§push("");
                           §§push(stage.loaderInfo.parameters.buildNumber);
                           if(_loc2_ || _loc2_)
                           {
                              return new §§pop().§0-§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop() || "");
                              addr108:
                           }
                        }
                        §§goto(addr110);
                     }
                     §§goto(addr96);
                  }
                  §§goto(addr108);
               }
            }
            §§goto(addr94);
         }
         §§goto(addr40);
      }
      
      override protected function onGraphicsInitialized(param1:Event) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = null;
         if(!(_loc3_ && this))
         {
            §"e§ = true;
            loop0:
            while(true)
            {
               §§push(this.§+_§);
               loop1:
               while(§§pop())
               {
                  §§push(§`!K§.§]!F§(this.§+_§));
                  if(!(_loc3_ && _loc3_))
                  {
                     §§push(§§pop());
                  }
                  while(true)
                  {
                     _loc2_ = §§pop();
                     while(true)
                     {
                        §§push(_loc2_);
                        if(_loc3_)
                        {
                           break;
                        }
                        if(!_loc3_)
                        {
                           if(§§pop() != this.§+_§)
                           {
                              §-<§.§%j§(this.§+_§);
                              loop4:
                              while(!(_loc3_ && this))
                              {
                                 while(true)
                                 {
                                    continue loop4;
                                 }
                              }
                              continue;
                              addr90:
                           }
                           while(true)
                           {
                              this.§+_§ = null;
                              §8n§(§@f§.§-A§);
                              if(_loc4_ || this)
                              {
                                 break;
                              }
                              §§goto(addr90);
                           }
                           continue loop0;
                        }
                        continue loop1;
                     }
                  }
               }
               addr28:
               return;
            }
         }
         §§goto(addr97);
      }
      
      override protected function onStageResize(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§>&§();
         }
      }
      
      private function §>&§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:* = int(Math.round(stage.stageWidth));
         var _loc2_:int = Math.round(stage.stageHeight);
         §§push(_loc1_);
         §§push(20);
         loop0:
         while(true)
         {
            §§push(§§pop() < §§pop());
            if(!(_loc3_ && _loc2_))
            {
               §§push(§§pop());
               loop1:
               while(true)
               {
                  if(!§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        addr239:
                        while(true)
                        {
                           §§push(_loc2_);
                           addr218:
                           while(true)
                           {
                              §§push(20);
                              addr219:
                              while(true)
                              {
                                 §§push(§§pop() < §§pop());
                              }
                           }
                        }
                     }
                     addr238:
                  }
                  while(true)
                  {
                     addr221:
                     while(true)
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              §§push(int(§?P§));
                              addr224:
                              while(true)
                              {
                                 _loc1_ = §§pop();
                                 _loc2_ = §%Z§;
                                 addr215:
                                 while(true)
                                 {
                                 }
                              }
                           }
                           addr222:
                        }
                        while(true)
                        {
                           §§push(_loc1_);
                           loop8:
                           while(_loc4_ || this)
                           {
                              §§push(2);
                              loop9:
                              while(_loc4_)
                              {
                                 §§push(§§pop() < §§pop());
                                 loop10:
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    if(!_loc4_)
                                    {
                                       break;
                                    }
                                    if(!§§pop())
                                    {
                                       §§pop();
                                       loop11:
                                       while(true)
                                       {
                                          if(!(_loc3_ && this))
                                          {
                                             §§push(_loc2_);
                                             while(true)
                                             {
                                                §§push(2);
                                                addr157:
                                                while(true)
                                                {
                                                   if(_loc4_)
                                                   {
                                                      continue loop0;
                                                   }
                                                   continue loop9;
                                                }
                                                continue loop0;
                                                loop16:
                                                while(true)
                                                {
                                                   §§push(int(Math.round(_loc2_ * (25 / 12))));
                                                   if(!(_loc4_ || this))
                                                   {
                                                      break;
                                                   }
                                                   _loc1_ = §§pop();
                                                   while(_loc4_)
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(this.§=_§());
                                                         if(_loc3_)
                                                         {
                                                            break;
                                                         }
                                                         if(§§pop())
                                                         {
                                                            continue loop16;
                                                         }
                                                         loop21:
                                                         while(true)
                                                         {
                                                            §?P§ = _loc1_;
                                                            if(!(_loc3_ && _loc3_))
                                                            {
                                                               continue loop11;
                                                            }
                                                            addr67:
                                                            while(true)
                                                            {
                                                               continue loop21;
                                                            }
                                                         }
                                                         §§goto(addr215);
                                                      }
                                                      continue loop10;
                                                      while(!(_loc3_ && _loc3_))
                                                      {
                                                         this.§ G§(_loc1_,_loc2_);
                                                         §§goto(addr67);
                                                         §%Z§ = _loc2_;
                                                         if(_loc3_)
                                                         {
                                                            continue;
                                                         }
                                                         if(!_loc3_)
                                                         {
                                                            return;
                                                         }
                                                         §§goto(addr215);
                                                      }
                                                   }
                                                   addr174:
                                                   while(true)
                                                   {
                                                      §§push(_loc1_);
                                                      if(_loc3_)
                                                      {
                                                         continue loop8;
                                                      }
                                                      if(_loc3_ && _loc3_)
                                                      {
                                                         break loop11;
                                                      }
                                                      §§push(_loc2_);
                                                      if(_loc3_ && this)
                                                      {
                                                         break;
                                                      }
                                                      if(§§pop() / §§pop() > 25 / 12)
                                                      {
                                                         continue loop16;
                                                      }
                                                      §§goto(addr81);
                                                      §§goto(addr174);
                                                   }
                                                   §§goto(addr157);
                                                }
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr222);
                                          }
                                       }
                                    }
                                    else
                                    {
                                       while(!§§pop())
                                       {
                                          §§goto(addr101);
                                       }
                                       if(_loc4_)
                                       {
                                          return;
                                       }
                                       §§goto(addr239);
                                       addr169:
                                    }
                                    §§goto(addr224);
                                 }
                                 continue loop1;
                              }
                              §§goto(addr219);
                           }
                           §§goto(addr218);
                        }
                     }
                  }
               }
            }
            §§goto(addr238);
         }
      }
      
      public function § G§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param2))
         {
            §?!6§.setViewSize(param1,param2);
         }
      }
      
      protected function §0!3§(param1:XML, param2:XML, param3:Array, param4:Boolean = false) : void
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         var _loc5_:String = null;
         var _loc6_:XML = null;
         for each(_loc5_ in param3)
         {
            if(!_loc12_)
            {
               var _loc9_:int = 0;
               if(_loc11_)
               {
                  for each(_loc6_ in param1[_loc5_].§*§)
                  {
                     if(_loc11_ || param1)
                     {
                        §§push(param4);
                        if(_loc11_)
                        {
                           if(§§pop())
                           {
                              if(_loc11_)
                              {
                                 addr92:
                                 delete param2[_loc5_][_loc6_.name()];
                                 if(!(_loc11_ || param1))
                                 {
                                    continue;
                                 }
                              }
                           }
                           param2[_loc5_].appendChild(_loc6_);
                           continue;
                        }
                     }
                     §§goto(addr92);
                  }
               }
            }
         }
      }
      
      public function §!5§() : String
      {
         return §'S§.replace("{svn_version}","local dev build");
      }
      
      override public function getVersionInfo() : String
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:* = null;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         if(stage != null)
         {
            §§push(stage.loaderInfo.parameters.buildNumber);
            loop0:
            while(true)
            {
               _loc1_ = §§pop();
               §§push(_loc1_);
               loop1:
               while(true)
               {
                  §§push(§§pop() == null);
                  loop2:
                  while(true)
                  {
                     §§push(!§§pop());
                     if(!(_loc5_ && _loc3_))
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              §§pop();
                              addr199:
                              loop12:
                              while(true)
                              {
                                 §§push(_loc1_);
                                 addr159:
                                 do
                                 {
                                    §§push(§§pop().length > 0);
                                    if(!_loc4_)
                                    {
                                       continue loop12;
                                    }
                                 }
                                 while(_loc4_);
                                 
                                 continue loop2;
                              }
                           }
                           addr198:
                        }
                        loop3:
                        while(§§pop())
                        {
                           loop4:
                           while(true)
                           {
                              §§push(_loc1_);
                              loop5:
                              while(true)
                              {
                                 §§push(int(§§pop().indexOf(".")));
                                 while(true)
                                 {
                                    _loc2_ = §§pop();
                                    loop7:
                                    while(true)
                                    {
                                       §§push(_loc2_);
                                       loop8:
                                       while(true)
                                       {
                                          if(§§pop() > 0)
                                          {
                                             if(_loc4_)
                                             {
                                                if(!(_loc4_ || _loc2_))
                                                {
                                                   continue loop4;
                                                }
                                                §§push(_loc1_);
                                                if(!(_loc5_ && _loc2_))
                                                {
                                                   if(_loc5_ && _loc1_)
                                                   {
                                                      continue loop5;
                                                   }
                                                   if(!_loc5_)
                                                   {
                                                      if(!_loc4_)
                                                      {
                                                         break;
                                                      }
                                                      §§push(§§pop().substr(0,_loc2_));
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr159);
                                                   }
                                                }
                                                if(_loc5_)
                                                {
                                                   continue loop0;
                                                }
                                                _loc1_ = §§pop();
                                             }
                                             while(_loc4_ || _loc1_)
                                             {
                                                continue loop8;
                                                _loc3_ = §§pop();
                                                if(!(_loc4_ || _loc2_))
                                                {
                                                   continue;
                                                }
                                                if(_loc4_ || this)
                                                {
                                                   addr40:
                                                   if(_loc3_ >= 5)
                                                   {
                                                      if(!_loc5_)
                                                      {
                                                         §§push(_loc1_);
                                                         while(!_loc4_)
                                                         {
                                                            loop21:
                                                            while(true)
                                                            {
                                                               §§push("-");
                                                               addr63:
                                                               loop16:
                                                               while(true)
                                                               {
                                                                  §§push(".");
                                                                  addr64:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop().replace(§§pop(),§§pop()));
                                                                     addr66:
                                                                     while(true)
                                                                     {
                                                                        _loc1_ = §§pop();
                                                                        loop18:
                                                                        while(true)
                                                                        {
                                                                           _loc3_++;
                                                                           addr55:
                                                                           while(true)
                                                                           {
                                                                              if(!_loc4_)
                                                                              {
                                                                                 continue loop18;
                                                                              }
                                                                              §§goto(addr40);
                                                                           }
                                                                           continue loop21;
                                                                        }
                                                                     }
                                                                     continue loop16;
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         return §§pop();
                                                         addr47:
                                                      }
                                                      if(!_loc5_)
                                                      {
                                                         addr52:
                                                         break loop3;
                                                      }
                                                      §§goto(addr55);
                                                   }
                                                   §§goto(addr62);
                                                   §§push(_loc1_);
                                                }
                                                else
                                                {
                                                   §§goto(addr199);
                                                }
                                             }
                                             continue loop7;
                                          }
                                       }
                                       continue loop1;
                                    }
                                    if(!(_loc4_ || _loc1_))
                                    {
                                       continue;
                                    }
                                    §§goto(addr84);
                                 }
                              }
                           }
                        }
                        while(true)
                        {
                           §§push(§'S§);
                           if(_loc4_)
                           {
                              if(_loc4_)
                              {
                                 §§push("{svn_version}");
                                 if(_loc4_)
                                 {
                                    §§push("local dev build");
                                    if(!_loc5_)
                                    {
                                       break;
                                    }
                                    §§goto(addr64);
                                 }
                                 §§goto(addr63);
                              }
                              §§goto(addr66);
                           }
                           §§goto(addr47);
                           §§goto(addr52);
                        }
                        return §§pop().replace(§§pop(),§§pop());
                        addr24:
                     }
                     §§goto(addr198);
                  }
               }
            }
         }
         §§goto(addr24);
      }
      
      override protected function initializeGame() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:int = Math.round(getTimer() / 1000);
         if(!_loc3_)
         {
            §-<§.§>v§(§3"§.§1!'§,_loc1_.toString(),_loc1_);
            while(true)
            {
               this.§ !<§ = true;
               loop1:
               while(!(_loc3_ && _loc2_))
               {
                  while(true)
                  {
                     super.initializeGame();
                     if(!_loc3_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr68);
      }
      
      override protected function onKeyDown(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         super.onKeyDown(param1);
         loop0:
         while(true)
         {
            §§push(this.§8$§);
            loop1:
            do
            {
               if(!§§pop())
               {
                  this.§8$§ = String.fromCharCode(param1.keyCode);
                  continue loop0;
               }
               this.§8$§ += String.fromCharCode(param1.keyCode);
               loop4:
               while(true)
               {
                  addr42:
                  addr65:
                  while(true)
                  {
                     this.§8$§ = this.§8$§.toLowerCase();
                     if(_loc3_ || this)
                     {
                        break;
                     }
                     continue loop4;
                  }
                  if(_loc3_ || this)
                  {
                     continue loop1;
                  }
                  continue loop0;
               }
            }
            while(§§push(this.§8$§), !(_loc3_ || param1));
            
            if(§§pop().length > 15)
            {
               this.§8$§ = this.§8$§.substr(1);
            }
            return;
         }
      }
      
      override public function externalPause() : void
      {
      }
      
      override public function externalResume() : void
      {
      }
   }
}
