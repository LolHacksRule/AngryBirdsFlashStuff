package §1e§
{
   import §+!Q§.§<[§;
   import §0X§.§'N§;
   import §2h§.§'!^§;
   import §3!8§.§%!5§;
   import §3!8§.§0z§;
   import §6F§.§+!k§;
   import §7=§.§7j§;
   import §7r§.§#!q§;
   import §7r§.§?V§;
   import §7r§.Item;
   import §89§.§,;§;
   import §89§.§7A§;
   import §89§.§?O§;
   import §8u§.§2!A§;
   import §8u§.§3?§;
   import §9!y§.§@M§;
   import §9!y§.StatePopupManager;
   import §9Y§.§+!!§;
   import §9Y§.§6!8§;
   import §9Y§.§9j§;
   import §;!5§.§ v§;
   import §;<§.§4!d§;
   import §?!7§.§5!I§;
   import §?!7§.§7p§;
   import §?!7§.§=!#§;
   import §?!7§.§?!x§;
   import §?!7§.§[I§;
   import §@i§.§=r§;
   import §[m§.Popup;
   import §^_§.§ b§;
   import §^_§.§!>§;
   import §^_§.§,>§;
   import §`!%§.§2x§;
   import §`!%§.§6!_§;
   import com.rovio.assets.§%!G§;
   import §finally§.§4!S§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.geom.Matrix;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class §5m§ extends Popup
   {
      
      private static var §4+§:Class;
      
      public static var §[c§:String;
      
      private static var §9!n§:Array;
      
      public static const §?h§:String = "CreatorState";
      
      public static const §@!_§:Array;
      
      public static const §5[§:String = "RedBird";
      
      public static const §>!3§:String = "NoHat";
      
      public static const §2V§:String = "10001";
      
      public static const §@!j§:String = "CategoryBirds";
      
      public static var §0!&§:Array;
      
      private static var §6!d§:§,;§;
      
      public static var §,X§:String;
      
      private static var §`]§:String;
      
      public static var §8J§:Array;
      
      public static var §#%§:URLLoader;
      
      public static var §<!m§:Array;
      
      private static var §@!h§:Boolean = true;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §4+§ = §2U§;
            loop0:
            while(true)
            {
               §9!n§ = [{
                  "a":true,
                  "id":"B20007",
                  "p":0,
                  "star":100
               },{
                  "a":true,
                  "id":"B20008",
                  "p":0,
                  "star":200
               },{
                  "a":true,
                  "id":"B20009",
                  "p":0,
                  "star":400
               }];
               while(true)
               {
                  §?h§ = "CreatorState";
                  while(_loc2_ || §5m§)
                  {
                     §@!_§ = ["Spot_Left_3","Spot_Left_2","Spot_Left_1","Spot_Center","Spot_Right_1","Spot_Right_2","Spot_Right_3"];
                     loop3:
                     while(true)
                     {
                        §5[§ = "RedBird";
                        addr78:
                        while(true)
                        {
                           if(!(_loc1_ && _loc1_))
                           {
                              continue loop0;
                           }
                           continue loop3;
                        }
                     }
                     addr44:
                     if(!(_loc2_ || _loc2_))
                     {
                        continue;
                     }
                     §@!h§ = true;
                     addr51:
                     if(!(_loc1_ && _loc1_))
                     {
                        if(_loc1_)
                        {
                           while(!_loc1_)
                           {
                              §@!j§ = "CategoryBirds";
                              while(_loc2_)
                              {
                                 §§goto(addr44);
                                 §§goto(addr51);
                              }
                              §§goto(addr78);
                           }
                           while(true)
                           {
                              §2V§ = "10001";
                              §§goto(addr56);
                           }
                           addr56:
                           addr63:
                        }
                        return;
                     }
                     §§goto(addr42);
                  }
               }
            }
         }
         §§goto(addr104);
      }
      
      private var §0q§:StatePopupManager;
      
      private var §,F§:Item = null;
      
      private var §8q§:Boolean = false;
      
      private var §8o§:String;
      
      private var §#0§:Array;
      
      private var §!z§:Array;
      
      private var §2H§:Boolean = false;
      
      private var §[_§:Boolean = false;
      
      private var §5!P§:§'!^§;
      
      private var §<!H§:§2x§;
      
      private var §'!2§:String;
      
      private var §]!i§:String;
      
      public function §5m§(param1:§'!^§, param2:StatePopupManager, param3:String = null)
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc5_:§#!q§ = null;
         if(_loc8_ || param1)
         {
            this.§#0§ = [];
            loop0:
            while(true)
            {
               this.§!z§ = [];
               while(true)
               {
                  this.§0q§ = param2;
                  loop2:
                  while(!(_loc9_ && param3))
                  {
                     while(true)
                     {
                        super(§,>§.§%2§(§4+§),param1);
                        loop4:
                        while(true)
                        {
                           if(param3)
                           {
                              while(true)
                              {
                                 this.§'!2§ = param3;
                                 addr137:
                                 while(true)
                                 {
                                 }
                              }
                              addr134:
                           }
                           loop7:
                           while(true)
                           {
                              this.§0q§.addEventListener(§+!k§.§=m§,this.onUiInteraction);
                              loop8:
                              for(; _loc8_; if(!(_loc9_ && param1))
                              {
                                 if(_loc8_)
                                 {
                                    continue loop0;
                                 }
                                 continue loop7;
                              })
                              {
                                 this.§5!P§ = param1;
                                 loop9:
                                 while(true)
                                 {
                                    if((AngryBirdsFP11.sUserProgress as §<[§).isEggUnlocked("1000-2"))
                                    {
                                       if(_loc8_)
                                       {
                                          if(_loc8_)
                                          {
                                             addr85:
                                             this.§5!P§.getItemByName("ButtonEasterEgg2").setVisibility(false);
                                             addr84:
                                          }
                                          else
                                          {
                                             §§goto(addr134);
                                          }
                                       }
                                       while(true)
                                       {
                                          if(!_loc9_)
                                          {
                                             continue loop8;
                                          }
                                          continue loop9;
                                       }
                                       continue loop8;
                                       addr86:
                                    }
                                    §§push(this.§5!P§);
                                    if(!_loc9_)
                                    {
                                       §§push("ButtonEasterEgg2");
                                       if(!_loc9_)
                                       {
                                          §§push(§§pop().getItemByName(§§pop()));
                                          if(!(_loc9_ && this))
                                          {
                                             §§push(true);
                                             if(!_loc9_)
                                             {
                                                §§pop().setVisibility(§§pop());
                                                continue loop4;
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr84);
                                          }
                                       }
                                    }
                                    §§goto(addr85);
                                    §§goto(addr85);
                                 }
                              }
                              continue loop2;
                              §§goto(addr137);
                           }
                        }
                     }
                  }
               }
               if(!(_loc8_ || param3))
               {
                  continue;
               }
               §§goto(addr38);
            }
         }
         §§goto(addr157);
      }
      
      public static function §+!d§(param1:String) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:Object = null;
         for each(_loc2_ in §0!&§)
         {
            if(_loc6_)
            {
               if(_loc2_.itemId == param1)
               {
                  if(_loc6_)
                  {
                     return true;
                  }
               }
            }
         }
         return false;
      }
      
      public static function §8!]§(param1:String) : int
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:Object = null;
         var _loc3_:int = 0;
         var _loc4_:* = §0!&§;
         while(true)
         {
            for each(_loc2_ in _loc4_)
            {
               if(!_loc5_)
               {
                  break;
               }
               §§push(_loc2_.itemId == param1);
               if(_loc5_ || _loc3_)
               {
                  if(§§pop())
                  {
                     if(_loc5_)
                     {
                        §§pop();
                        if(_loc5_)
                        {
                           §§push(!_loc2_.available);
                        }
                        break;
                     }
                  }
               }
               if(§§pop())
               {
                  if(_loc5_ || param1)
                  {
                     break;
                  }
               }
            }
            return 0;
         }
         return _loc2_.price;
      }
      
      public static function §6A§(param1:String) : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:Object = null;
         var _loc3_:int = 0;
         var _loc4_:* = §0!&§;
         while(true)
         {
            for each(_loc2_ in _loc4_)
            {
               if(!(_loc6_ && _loc2_))
               {
                  §§push(_loc2_.itemId == param1);
                  if(!_loc6_)
                  {
                     if(§§pop())
                     {
                        if(_loc5_)
                        {
                           addr68:
                           §§pop();
                           if(!_loc6_)
                           {
                              §§push(!_loc2_.available);
                           }
                           break;
                        }
                     }
                     if(§§pop())
                     {
                        if(!(_loc6_ && _loc2_))
                        {
                           break;
                        }
                     }
                     continue;
                  }
                  §§goto(addr68);
               }
               break;
            }
            return false;
         }
         return _loc2_.sale;
      }
      
      public static function §4!E§(param1:String) : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:Object = null;
         var _loc3_:int = 0;
         var _loc4_:* = §0!&§;
         while(true)
         {
            for each(_loc2_ in _loc4_)
            {
               if(!(_loc6_ && _loc2_))
               {
                  §§push(_loc2_.itemId == param1);
                  if(!_loc6_)
                  {
                     if(§§pop())
                     {
                        if(_loc5_ || _loc3_)
                        {
                           §§pop();
                           if(!(_loc5_ || §5m§))
                           {
                              break;
                           }
                           addr84:
                           if(!_loc2_.available)
                           {
                              if(!(_loc6_ && param1))
                              {
                                 break;
                              }
                           }
                           continue;
                        }
                     }
                  }
               }
               §§goto(addr84);
            }
            return false;
         }
         return _loc2_.limited;
      }
      
      public static function §6S§(param1:String) : int
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:Object = null;
         var _loc3_:int = 0;
         var _loc4_:* = §0!&§;
         while(true)
         {
            for each(_loc2_ in _loc4_)
            {
               if(!_loc6_)
               {
                  break;
               }
               if(_loc2_.itemId == param1)
               {
                  if(!(_loc5_ && §5m§))
                  {
                     break;
                  }
               }
            }
            return 0;
         }
         return _loc2_.starPrice;
      }
      
      public static function §<!n§(param1:int, param2:int) : String
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:Object = null;
         var _loc4_:int = 0;
         var _loc5_:* = §9!n§;
         while(true)
         {
            for each(_loc3_ in _loc5_)
            {
               if(_loc7_)
               {
                  continue;
               }
               §§push(param2);
               if(_loc6_ || param2)
               {
                  §§push(§§pop() >= _loc3_.s);
                  if(_loc6_ || _loc3_)
                  {
                     if(§§pop())
                     {
                        if(_loc6_)
                        {
                           §§pop();
                           if(_loc7_ && param1)
                           {
                              continue;
                           }
                           addr84:
                           §§push(param1 < _loc3_.s);
                        }
                     }
                  }
                  if(§§pop())
                  {
                     if(_loc6_ || param1)
                     {
                        break;
                     }
                  }
                  continue;
               }
               §§goto(addr84);
            }
            return "";
         }
         return _loc3_.id;
      }
      
      private function §^!F§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc1_))
         {
            this.§5!P§.getItemByName("WaitingForReply").setVisibility(true);
         }
         var _loc1_:URLRequest = § v§.§<N§(§,X§ + "/getavatarparts");
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.method = URLRequestMethod.POST;
            loop0:
            while(true)
            {
               §#%§ = new URLLoader();
               loop1:
               while(true)
               {
                  §#%§.addEventListener(Event.COMPLETE,this.onComplete);
                  while(true)
                  {
                     §#%§.addEventListener(IOErrorEvent.IO_ERROR,this.§"[§);
                     while(!_loc2_)
                     {
                        while(_loc3_ || _loc2_)
                        {
                           §#%§.load(_loc1_);
                           if(!(_loc2_ && _loc1_))
                           {
                              if(_loc3_)
                              {
                                 if(!_loc2_)
                                 {
                                    return;
                                    addr74:
                                 }
                                 continue loop0;
                              }
                              continue loop1;
                           }
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            §#%§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§%<§);
            §§goto(addr82);
         }
         §§goto(addr74);
      }
      
      protected function §%<§(param1:SecurityErrorEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            §@M§.§-5§();
            do
            {
               §#%§ = null;
            }
            while(_loc3_ && this);
            
         }
      }
      
      private function §"[§(param1:IOErrorEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            §@M§.§-5§();
         }
         do
         {
            §#%§ = null;
         }
         while(_loc3_);
         
      }
      
      private function onComplete(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §8J§ = §4!d§.§6!p§(param1.currentTarget.data);
            loop0:
            do
            {
               if(!this.§8q§)
               {
                  continue;
               }
               while(true)
               {
                  this.§"§();
                  while(_loc2_ || _loc2_)
                  {
                     this.§ f§();
                     if(!_loc2_)
                     {
                        continue;
                     }
                     if(_loc3_ && _loc2_)
                     {
                        return;
                        addr86:
                     }
                     if(_loc3_ && param1)
                     {
                        continue loop0;
                     }
                  }
               }
            }
            while(!_loc2_);
            
            this.§[_§ = true;
            §§goto(addr86);
         }
      }
      
      private function §"§() : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc2_:Object = null;
         var _loc3_:§?!x§ = null;
         var _loc4_:Item = null;
         var _loc5_:Object = null;
         var _loc1_:Array = [];
         if(!(_loc8_ && _loc1_))
         {
            §§push(this.§5!P§);
            if(!(_loc8_ && _loc3_))
            {
               if(!§§pop())
               {
               }
               §§goto(addr57);
            }
            §§pop().getItemByName("WaitingForReply").setVisibility(false);
         }
         addr57:
         if(!_loc8_)
         {
            §§push(this.§5!P§);
         }
         for each(_loc2_ in §8J§)
         {
            if(!_loc8_)
            {
               this.§9!Z§(_loc2_,§5m§.§9!n§);
            }
            if(_loc4_ = §4!S§.§"!>§(_loc2_.id))
            {
               if(!_loc8_)
               {
                  _loc5_ = {
                     "itemId":_loc4_.§&!X§,
                     "price":_loc2_.p,
                     "available":_loc2_.a,
                     "starPrice":_loc2_.star,
                     "limited":_loc2_.l,
                     "sale":_loc2_.s
                  };
                  if(!(_loc8_ && _loc3_))
                  {
                     _loc1_.push(_loc5_);
                     addr127:
                     _loc2_.a;
                     if(_loc8_ && this)
                     {
                        continue;
                     }
                  }
                  §§goto(addr127);
               }
               _loc2_.id;
               if(!(_loc8_ && this))
               {
                  _loc2_.p;
               }
               continue;
            }
            §§goto(addr127);
         }
         if(!(_loc8_ && this))
         {
            §0!&§ = _loc1_;
         }
         _loc3_ = this.§5!P§.getItemByName("Repeater_Items") as §?!x§;
         if(_loc9_)
         {
            _loc3_.§8!2§(null,§?O§);
         }
         do
         {
            this.§5!P§.§;!!§("Repeater_Items","Repeater_Items_Tab_0");
         }
         while(_loc8_);
         
      }
      
      private function §9!Z§(param1:Object, param2:Array) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:Object = null;
         for each(_loc3_ in param2)
         {
            if(!_loc6_)
            {
               if(param1.id != _loc3_.id)
               {
                  continue;
               }
               if(!(_loc7_ || _loc3_))
               {
                  continue;
               }
               param1.p = _loc3_.p;
               if(_loc6_)
               {
                  continue;
               }
            }
            param1.star = _loc3_.star;
         }
      }
      
      private function §--§(param1:DisplayObjectContainer, param2:Number = 1, param3:int = 0, param4:int = 0) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_ || param2)
         {
            §§push(§6!d§);
            if(!_loc7_)
            {
               if(§§pop())
               {
                  if(_loc6_ || param3)
                  {
                     §§push(§6!d§);
                     if(_loc6_ || this)
                     {
                        if(§§pop().parent)
                        {
                           if(_loc6_ || param2)
                           {
                              §§push(§6!d§);
                              if(!_loc7_)
                              {
                                 if(§§pop().parent.contains(§6!d§))
                                 {
                                    if(!(_loc7_ && param2))
                                    {
                                       §§push(§6!d§);
                                       if(_loc6_ || param3)
                                       {
                                       }
                                       §§pop().scaleX = §6!d§.scaleY = param2;
                                       addr96:
                                       if(!(_loc7_ && param2))
                                       {
                                          addr121:
                                          §§push(§6!d§);
                                          loop0:
                                          while(true)
                                          {
                                             §§push(param3);
                                             addr139:
                                             while(true)
                                             {
                                                §§pop().x = §§pop();
                                                continue loop0;
                                             }
                                          }
                                          addr138:
                                          addr121:
                                       }
                                    }
                                    §§goto(addr140);
                                 }
                                 addr88:
                                 param1.addChild(§6!d§);
                                 if(!_loc7_)
                                 {
                                    §§push(§6!d§);
                                    if(!_loc7_)
                                    {
                                       §§goto(addr96);
                                    }
                                    §§goto(addr138);
                                 }
                                 §§goto(addr140);
                              }
                              §§pop().parent.removeChild(§6!d§);
                              if(!_loc7_)
                              {
                                 §§goto(addr88);
                              }
                              §§goto(addr121);
                           }
                           §§goto(addr140);
                        }
                        §§goto(addr88);
                     }
                     §§goto(addr96);
                  }
                  §§goto(addr121);
               }
               §§goto(addr88);
            }
            §§goto(addr130);
         }
         §§goto(addr140);
      }
      
      private function § f§() : void
      {
         var _loc16_:Boolean = false;
         var _loc17_:Boolean = true;
         var _loc5_:§#!q§ = null;
         var _loc6_:§[I§ = null;
         var _loc7_:Array = null;
         var _loc8_:§7A§ = null;
         var _loc9_:§[I§ = null;
         var _loc10_:§#!q§ = null;
         var _loc11_:§?!x§ = null;
         var _loc12_:* = 0;
         var _loc13_:String = null;
         if(_loc17_)
         {
            this.§8q§ = true;
         }
         var _loc1_:§?!x§ = this.§5!P§.getItemByName("Repeater_Tabs") as §?!x§;
         if(_loc17_ || this)
         {
            _loc1_.§8!2§(null,§?O§);
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  §§push(§0!&§);
                  loop2:
                  while(true)
                  {
                     §§push(null);
                     loop3:
                     while(§§pop() != §§pop())
                     {
                        loop4:
                        while(true)
                        {
                           §§push(§<!m§);
                           if(_loc17_ || _loc3_)
                           {
                              §§push(null);
                              if(_loc17_ || _loc3_)
                              {
                                 if(§§pop() == §§pop())
                                 {
                                    if(_loc17_ || _loc3_)
                                    {
                                       §<!m§ = [];
                                    }
                                    if(_loc16_ && _loc2_)
                                    {
                                       continue;
                                    }
                                    if(_loc16_)
                                    {
                                       break loop3;
                                    }
                                    while(true)
                                    {
                                       if(true)
                                       {
                                          for each(_loc5_ in §6!_§.§`;§().characters)
                                          {
                                             if(!(_loc16_ && _loc1_))
                                             {
                                                §<!m§.push(new §7A§(_loc5_));
                                             }
                                          }
                                          break loop4;
                                       }
                                       continue loop1;
                                    }
                                 }
                                 break;
                              }
                              continue loop3;
                           }
                           continue loop2;
                        }
                        §§push((AngryBirdsFP11.sUserProgress as §<[§).§0u§);
                        if(_loc17_)
                        {
                           §§push(§§pop());
                        }
                        var _loc2_:* = §§pop();
                        §§push((AngryBirdsFP11.sUserProgress as §<[§).avatarString);
                        if(!(_loc16_ && this))
                        {
                           §§push(§§pop());
                        }
                        var _loc3_:* = §§pop();
                        if(!(_loc16_ && _loc1_))
                        {
                           §§push(_loc3_);
                           if(!(_loc16_ && _loc1_))
                           {
                              §§push(§§pop() == null);
                              if(!_loc16_)
                              {
                                 if(!§§pop())
                                 {
                                    if(!_loc16_)
                                    {
                                       §§pop();
                                       if(_loc17_ || _loc3_)
                                       {
                                          addr208:
                                          if(_loc3_ == "")
                                          {
                                             if(_loc17_ || _loc1_)
                                             {
                                                this.§2H§ = true;
                                             }
                                          }
                                       }
                                       var _loc4_:§%!5§;
                                       (_loc4_ = new §%!5§(_loc2_,false,§%!5§.§+a§)).x = 13;
                                       if(_loc17_ || _loc3_)
                                       {
                                          _loc4_.y = 9;
                                          if(!(_loc16_ && _loc3_))
                                          {
                                             §§push(this.§5!P§);
                                             if(!_loc16_)
                                             {
                                                §§push("SetFacebookProfileButton");
                                                if(_loc17_)
                                                {
                                                   §§push(§§pop().getItemByName(§§pop()));
                                                   if(_loc17_ || _loc2_)
                                                   {
                                                      §§pop().mClip.addChild(_loc4_);
                                                      if(_loc17_ || this)
                                                      {
                                                         addr272:
                                                         if(§@!h§)
                                                         {
                                                            addr274:
                                                            §§push(this.§5!P§);
                                                            if(_loc17_)
                                                            {
                                                               §§push("AvatarHolderClip");
                                                               if(!_loc16_)
                                                               {
                                                                  addr281:
                                                                  §§push(§§pop().getItemByName(§§pop()));
                                                                  if(_loc17_ || this)
                                                                  {
                                                                     addr289:
                                                                     _loc6_ = §§pop() as §[I§;
                                                                     if(!(_loc16_ && _loc1_))
                                                                     {
                                                                        this.§--§(_loc6_.mClip);
                                                                        if(!_loc16_)
                                                                        {
                                                                           §§push(_loc3_);
                                                                           if(_loc17_ || _loc2_)
                                                                           {
                                                                              §§push(§§pop() == "");
                                                                              if(!_loc16_)
                                                                              {
                                                                                 §§push(!§§pop());
                                                                                 if(!(_loc16_ && this))
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       if(!_loc16_)
                                                                                       {
                                                                                          addr340:
                                                                                          §§pop();
                                                                                          if(!(_loc16_ && this))
                                                                                          {
                                                                                             addr349:
                                                                                             §§push(_loc3_ == null);
                                                                                             if(_loc16_)
                                                                                             {
                                                                                             }
                                                                                             addr354:
                                                                                             if(§§pop())
                                                                                             {
                                                                                                if(!_loc16_)
                                                                                                {
                                                                                                   addr357:
                                                                                                   _loc7_ = §4!S§.§`x§(_loc3_);
                                                                                                   _loc8_ = §6!d§.§5!7§(_loc7_);
                                                                                                   if(!_loc16_)
                                                                                                   {
                                                                                                      §6!_§.§+!e§ = _loc8_;
                                                                                                      if(_loc17_)
                                                                                                      {
                                                                                                         addr388:
                                                                                                         §§push(this.§5!P§);
                                                                                                         if(!(_loc16_ && _loc2_))
                                                                                                         {
                                                                                                            (§§pop() as §7j§).§[!E§();
                                                                                                            if(_loc17_ || _loc1_)
                                                                                                            {
                                                                                                               addr407:
                                                                                                               §@!h§ = false;
                                                                                                               if(_loc17_ || _loc1_)
                                                                                                               {
                                                                                                                  addr476:
                                                                                                                  §§push(this.§'!2§);
                                                                                                                  if(_loc17_)
                                                                                                                  {
                                                                                                                     if(§§pop())
                                                                                                                     {
                                                                                                                        if(_loc17_ || _loc2_)
                                                                                                                        {
                                                                                                                           §§push(this.§5!P§);
                                                                                                                           if(!_loc16_)
                                                                                                                           {
                                                                                                                              §§push((§§pop() as §7j§).§,!8§(this.§'!2§));
                                                                                                                              if(_loc17_)
                                                                                                                              {
                                                                                                                                 §§push(int(§§pop()));
                                                                                                                                 if(!_loc16_)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop());
                                                                                                                                    if(_loc17_ || _loc2_)
                                                                                                                                    {
                                                                                                                                       _loc12_ = §§pop();
                                                                                                                                       addr511:
                                                                                                                                       §§push(-1);
                                                                                                                                    }
                                                                                                                                    if(§§pop() != §§pop())
                                                                                                                                    {
                                                                                                                                       if(!_loc16_)
                                                                                                                                       {
                                                                                                                                          addr515:
                                                                                                                                          §§push(this.§'!2§);
                                                                                                                                          if(_loc17_)
                                                                                                                                          {
                                                                                                                                             addr523:
                                                                                                                                             _loc13_ = §§pop().substr("CATEGORY".length);
                                                                                                                                             if(_loc17_)
                                                                                                                                             {
                                                                                                                                                §§push(this.§5!P§);
                                                                                                                                                loop11:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§pop().setText(_loc13_,"Textfield_CategoryTitle");
                                                                                                                                                   addr618:
                                                                                                                                                   addr605:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(this.§5!P§);
                                                                                                                                                      if(!_loc16_)
                                                                                                                                                      {
                                                                                                                                                         break;
                                                                                                                                                      }
                                                                                                                                                      continue loop11;
                                                                                                                                                   }
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push("Repeater_Items");
                                                                                                                                                      §§push("Repeater_Items_Tab_");
                                                                                                                                                      if(!_loc16_)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() + _loc12_);
                                                                                                                                                      }
                                                                                                                                                      §§pop().§;!!§(§§pop(),§§pop());
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                addr615:
                                                                                                                                                addr526:
                                                                                                                                             }
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(§6!_§.§1w§().§=!b§.length > 0)
                                                                                                                                                {
                                                                                                                                                   if(_loc17_)
                                                                                                                                                   {
                                                                                                                                                      if(_loc17_ || _loc1_)
                                                                                                                                                      {
                                                                                                                                                         _loc1_.§#!0§("Repeater_Tabs_Tab_0").§`N§(§6!_§.§1w§().§=!b§[_loc12_].name as String);
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr618);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   addr599:
                                                                                                                                                   break;
                                                                                                                                                }
                                                                                                                                                break;
                                                                                                                                                §§goto(addr605);
                                                                                                                                             }
                                                                                                                                             addr612:
                                                                                                                                          }
                                                                                                                                          §§goto(addr523);
                                                                                                                                       }
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§goto(addr532);
                                                                                                                                       }
                                                                                                                                       addr560:
                                                                                                                                    }
                                                                                                                                    §§goto(addr543);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr511);
                                                                                                                           }
                                                                                                                           §§goto(addr615);
                                                                                                                        }
                                                                                                                        §§goto(addr526);
                                                                                                                     }
                                                                                                                     addr532:
                                                                                                                     §§goto(addr541);
                                                                                                                  }
                                                                                                                  §§goto(addr523);
                                                                                                               }
                                                                                                               §§goto(addr515);
                                                                                                            }
                                                                                                            addr541:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               this.§+h§();
                                                                                                               if(_loc17_ || this)
                                                                                                               {
                                                                                                                  break;
                                                                                                               }
                                                                                                               loop8:
                                                                                                               while(!(_loc16_ && _loc1_))
                                                                                                               {
                                                                                                                  continue loop6;
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     this.§'!2§ = null;
                                                                                                                     continue loop8;
                                                                                                                     §§goto(addr523);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr599);
                                                                                                            }
                                                                                                            return;
                                                                                                         }
                                                                                                         §§goto(addr605);
                                                                                                      }
                                                                                                      §§goto(addr407);
                                                                                                   }
                                                                                                   §§goto(addr560);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   addr385:
                                                                                                   §6!d§.§=P§("backgrounds1");
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                this.§>!N§(§5[§);
                                                                                                if(!(_loc16_ && _loc3_))
                                                                                                {
                                                                                                   §§goto(addr385);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr388);
                                                                                          }
                                                                                          §§goto(addr357);
                                                                                       }
                                                                                       §§goto(addr354);
                                                                                       §§push(!§§pop());
                                                                                    }
                                                                                    §§goto(addr354);
                                                                                 }
                                                                                 §§goto(addr340);
                                                                              }
                                                                              §§goto(addr354);
                                                                           }
                                                                           §§goto(addr349);
                                                                        }
                                                                        §§goto(addr357);
                                                                     }
                                                                     §§goto(addr385);
                                                                  }
                                                                  else
                                                                  {
                                                                     addr422:
                                                                     _loc9_ = §§pop() as §[I§;
                                                                     if(!_loc16_)
                                                                     {
                                                                        this.§--§(_loc9_.mClip);
                                                                     }
                                                                     _loc10_ = §6!d§.§%!y§.§6;§();
                                                                     if(_loc17_)
                                                                     {
                                                                        §§push(§6!d§);
                                                                        if(!_loc16_)
                                                                        {
                                                                           §§pop().§^7§(_loc10_.§&!X§,_loc10_.sId,_loc10_.§@§,§<!m§,110,174);
                                                                           if(!_loc16_)
                                                                           {
                                                                              addr455:
                                                                              §6!d§.§%!y§.§1! §();
                                                                           }
                                                                           (_loc11_ = this.§5!P§.getItemByName("Repeater_Items") as §?!x§).§8!2§(null,§?O§);
                                                                           if(!_loc16_)
                                                                           {
                                                                              (this.§5!P§ as §7j§).§[!E§();
                                                                           }
                                                                           §§goto(addr476);
                                                                        }
                                                                     }
                                                                     §§goto(addr455);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  addr421:
                                                                  §§push(§§pop().getItemByName(§§pop()));
                                                               }
                                                               §§goto(addr422);
                                                            }
                                                            else
                                                            {
                                                               addr420:
                                                               §§push("AvatarHolderClip");
                                                            }
                                                            §§goto(addr421);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr420);
                                                            §§push(this.§5!P§);
                                                         }
                                                         §§goto(addr420);
                                                      }
                                                      §§goto(addr274);
                                                   }
                                                   §§goto(addr289);
                                                }
                                                §§goto(addr281);
                                             }
                                             §§goto(addr420);
                                          }
                                          §§goto(addr274);
                                       }
                                       §§goto(addr272);
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr208);
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr101);
      }
      
      private function onUiInteraction(param1:§+!k§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.uiInteractionHandler(param1.§1![§,param1.§?n§,param1.§>$§);
         }
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§6!8§) : void
      {
         var _loc22_:Boolean = true;
         var _loc23_:Boolean = false;
         var _loc4_:§9j§ = null;
         var _loc5_:* = 0;
         var _loc6_:* = null;
         var _loc7_:§=!#§ = null;
         var _loc8_:Number = NaN;
         var _loc9_:* = null;
         var _loc10_:* = 0;
         var _loc11_:* = 0;
         var _loc12_:§?O§ = null;
         var _loc13_:* = null;
         var _loc14_:* = 0;
         var _loc15_:§?O§ = null;
         var _loc16_:* = null;
         var _loc17_:Array = null;
         var _loc18_:* = null;
         var _loc19_:String = null;
         if(_loc22_ || param2)
         {
            if(param3 is §9j§)
            {
               addr70:
               _loc4_ = param3 as §9j§;
               if(!(_loc23_ && param1))
               {
                  §§push(param2);
                  if(_loc22_)
                  {
                     if(§§pop().length > 1)
                     {
                        loop41:
                        while(true)
                        {
                           §§push(_loc4_.mParentContainer);
                           if(!_loc23_)
                           {
                              if(§§pop() is §7p§)
                              {
                                 if(!(_loc23_ && param3))
                                 {
                                    addr158:
                                    if(((_loc4_.mParentContainer as §7p§).mParentContainer as §?!x§).mName.toUpperCase() == "REPEATER_TABS")
                                    {
                                       loop42:
                                       while(true)
                                       {
                                          §§push(this.§5!P§);
                                          loop43:
                                          while(true)
                                          {
                                             §§push((§§pop() as §7j§).§,!8§(param2));
                                             if(_loc22_ || param3)
                                             {
                                                §§push(int(§§pop()));
                                                if(!(_loc23_ && this))
                                                {
                                                   §§push(§§pop());
                                                   if(!_loc23_)
                                                   {
                                                      _loc5_ = §§pop();
                                                      if(_loc22_)
                                                      {
                                                         addr195:
                                                         if(§§pop() != -1)
                                                         {
                                                            loop44:
                                                            while(true)
                                                            {
                                                               §§push(param2);
                                                               if(!_loc23_)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop().substr("CATEGORY".length));
                                                                  }
                                                                  addr199:
                                                               }
                                                               while(true)
                                                               {
                                                                  _loc6_ = §§pop();
                                                                  addr204:
                                                                  loop37:
                                                                  while(true)
                                                                  {
                                                                     loop38:
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§5!P§);
                                                                        loop39:
                                                                        while(true)
                                                                        {
                                                                           if(_loc22_ || param3)
                                                                           {
                                                                              §§pop().setText(_loc6_,"Textfield_CategoryTitle");
                                                                              while(!_loc23_)
                                                                              {
                                                                                 §§push(this.§5!P§);
                                                                                 if(_loc22_)
                                                                                 {
                                                                                    §§push("Repeater_Items");
                                                                                    §§push("Repeater_Items_Tab_");
                                                                                    if(!_loc23_)
                                                                                    {
                                                                                       §§push(§§pop() + _loc5_);
                                                                                    }
                                                                                    §§pop().§;!!§(§§pop(),§§pop());
                                                                                    if(_loc22_)
                                                                                    {
                                                                                       if(!(_loc23_ && param2))
                                                                                       {
                                                                                          if(_loc22_ || this)
                                                                                          {
                                                                                             if(!(_loc23_ && param2))
                                                                                             {
                                                                                                if(true)
                                                                                                {
                                                                                                   break loop37;
                                                                                                }
                                                                                                continue loop38;
                                                                                             }
                                                                                             continue loop41;
                                                                                          }
                                                                                          continue loop42;
                                                                                       }
                                                                                       continue loop44;
                                                                                    }
                                                                                    continue;
                                                                                    continue;
                                                                                 }
                                                                                 continue loop39;
                                                                              }
                                                                              continue loop37;
                                                                           }
                                                                           continue loop43;
                                                                        }
                                                                        continue loop43;
                                                                     }
                                                                  }
                                                                  addr206:
                                                                  var _loc20_:* = 0;
                                                                  var _loc21_:* = (_loc4_.mParentContainer as §7p§).§>!!§;
                                                                  addr225:
                                                                  for each(_loc7_ in _loc21_)
                                                                  {
                                                                     (_loc7_ as §?O§).§!!1§();
                                                                     §§goto(addr225);
                                                                  }
                                                                  if(!_loc23_)
                                                                  {
                                                                     (param3 as §?O§).§<!§();
                                                                     this.§=G§();
                                                                     addr338:
                                                                  }
                                                                  else
                                                                  {
                                                                     addr251:
                                                                     if(false)
                                                                     {
                                                                        addr232:
                                                                        this.§+h§();
                                                                        addr253:
                                                                        if(_loc22_ || param2)
                                                                        {
                                                                           if(_loc22_)
                                                                           {
                                                                              if(!(_loc23_ && this))
                                                                              {
                                                                                 §§goto(addr251);
                                                                              }
                                                                              addr326:
                                                                              if(!(_loc22_ || param1))
                                                                              {
                                                                                 §§goto(addr338);
                                                                              }
                                                                              break loop43;
                                                                           }
                                                                           addr275:
                                                                           if(!_loc23_)
                                                                           {
                                                                              if(_loc22_ || this)
                                                                              {
                                                                                 this.§'!X§(param2.substring("REMOVE_".length));
                                                                                 addr290:
                                                                                 if(!(_loc23_ && param2))
                                                                                 {
                                                                                    §§goto(addr232);
                                                                                 }
                                                                                 addr319:
                                                                                 this.§>!N§(param2);
                                                                                 §§goto(addr253);
                                                                              }
                                                                              addr318:
                                                                              addr315:
                                                                              addr317:
                                                                              addr311:
                                                                              if((_loc8_ = param2.indexOf("REMOVE_")) == -1)
                                                                              {
                                                                                 §§goto(addr319);
                                                                              }
                                                                              §§push(_loc8_);
                                                                              if(_loc22_ || param3)
                                                                              {
                                                                                 if(_loc22_)
                                                                                 {
                                                                                    §§push(0);
                                                                                    if(_loc22_ || param1)
                                                                                    {
                                                                                       if(§§pop() == §§pop())
                                                                                       {
                                                                                          §§goto(addr275);
                                                                                       }
                                                                                       §§goto(addr232);
                                                                                    }
                                                                                    §§goto(addr318);
                                                                                 }
                                                                                 §§goto(addr315);
                                                                              }
                                                                              §§goto(addr317);
                                                                           }
                                                                           §§goto(addr319);
                                                                        }
                                                                        §§goto(addr290);
                                                                     }
                                                                     addr339:
                                                                     §§push(param2);
                                                                     if(_loc22_)
                                                                     {
                                                                        if(§§pop().toUpperCase().indexOf("OVER") > -1)
                                                                        {
                                                                           if(!_loc23_)
                                                                           {
                                                                              §§push(param2);
                                                                              if(_loc22_)
                                                                              {
                                                                                 §§push(§§pop().toUpperCase().substr(4));
                                                                                 if(_loc22_ || this)
                                                                                 {
                                                                                    addr363:
                                                                                    _loc9_ = §§pop();
                                                                                    if(!(_loc23_ && param2))
                                                                                    {
                                                                                       §§push(this.§5!P§);
                                                                                       if(_loc22_ || param1)
                                                                                       {
                                                                                          §§push((§§pop() as §7j§).§,!8§(_loc9_));
                                                                                          if(!_loc23_)
                                                                                          {
                                                                                             §§push(int(§§pop()));
                                                                                             if(_loc22_ || this)
                                                                                             {
                                                                                                _loc10_ = §§pop();
                                                                                                if(_loc22_)
                                                                                                {
                                                                                                   addr397:
                                                                                                   §§push(0);
                                                                                                   if(_loc22_)
                                                                                                   {
                                                                                                      addr400:
                                                                                                      _loc11_ = §§pop();
                                                                                                      if(_loc22_ || this)
                                                                                                      {
                                                                                                         §§push(0);
                                                                                                         if(_loc22_ || this)
                                                                                                         {
                                                                                                            _loc20_ = §§pop();
                                                                                                            if(!(_loc23_ && param1))
                                                                                                            {
                                                                                                               _loc21_ = ((param3 as §9j§).mParentContainer as §7p§).§>!!§;
                                                                                                               loop26:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§hasnext(_loc21_,_loc20_));
                                                                                                                  if(_loc22_)
                                                                                                                  {
                                                                                                                     if(!§§pop())
                                                                                                                     {
                                                                                                                        if(!_loc23_)
                                                                                                                        {
                                                                                                                           if(!(_loc23_ && param2))
                                                                                                                           {
                                                                                                                              if(!(_loc23_ && param3))
                                                                                                                              {
                                                                                                                                 addr566:
                                                                                                                                 §§push(param2);
                                                                                                                                 if(_loc22_)
                                                                                                                                 {
                                                                                                                                    if(§§pop().toUpperCase().indexOf("OUT") > -1)
                                                                                                                                    {
                                                                                                                                       if(_loc22_)
                                                                                                                                       {
                                                                                                                                          §§push(param2);
                                                                                                                                          if(!_loc23_)
                                                                                                                                          {
                                                                                                                                             addr579:
                                                                                                                                             §§push(§§pop().toUpperCase().substr(3));
                                                                                                                                             if(_loc22_ || this)
                                                                                                                                             {
                                                                                                                                                _loc13_ = §§pop();
                                                                                                                                                loop5:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   addr528:
                                                                                                                                                   loop6:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(this.§5!P§);
                                                                                                                                                      if(!(_loc23_ && param1))
                                                                                                                                                      {
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push((§§pop() as §7j§).§,!8§(_loc13_));
                                                                                                                                                            if(_loc22_ || this)
                                                                                                                                                            {
                                                                                                                                                               addr1429:
                                                                                                                                                               §§push(int(§§pop()));
                                                                                                                                                               if(_loc22_ || param2)
                                                                                                                                                               {
                                                                                                                                                               }
                                                                                                                                                               loop12:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  loop45:
                                                                                                                                                                  switch(§§pop())
                                                                                                                                                                  {
                                                                                                                                                                     case 0:
                                                                                                                                                                        addr827:
                                                                                                                                                                        §6!_§.§+!e§.§,!!§();
                                                                                                                                                                        this.§+h§();
                                                                                                                                                                        break loop5;
                                                                                                                                                                        addr828:
                                                                                                                                                                     case 1:
                                                                                                                                                                        §§push(§6!_§.§+!e§);
                                                                                                                                                                        if(!(_loc23_ && this))
                                                                                                                                                                        {
                                                                                                                                                                           §§pop().§ !5§();
                                                                                                                                                                           if(!_loc23_)
                                                                                                                                                                           {
                                                                                                                                                                              this.§+h§();
                                                                                                                                                                              addr796:
                                                                                                                                                                              break;
                                                                                                                                                                              addr796:
                                                                                                                                                                           }
                                                                                                                                                                           break;
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr827);
                                                                                                                                                                        break;
                                                                                                                                                                     case 2:
                                                                                                                                                                        this.§[!;§();
                                                                                                                                                                        break;
                                                                                                                                                                        addr792:
                                                                                                                                                                     case 3:
                                                                                                                                                                        addr771:
                                                                                                                                                                        this.§5!P§.getItemByName("AvatarSharing").setVisibility(false);
                                                                                                                                                                        addr768:
                                                                                                                                                                        if(_loc22_ || param3)
                                                                                                                                                                        {
                                                                                                                                                                           if(!(_loc23_ && param2))
                                                                                                                                                                           {
                                                                                                                                                                              break;
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr796);
                                                                                                                                                                        }
                                                                                                                                                                        break;
                                                                                                                                                                     case 4:
                                                                                                                                                                        §§push(this.§5!P§);
                                                                                                                                                                        if(!(_loc23_ && param2))
                                                                                                                                                                        {
                                                                                                                                                                           break loop6;
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr768);
                                                                                                                                                                        break;
                                                                                                                                                                     case 5:
                                                                                                                                                                        §§push(§4!S§.§#D§(this.§#0§));
                                                                                                                                                                        if(_loc22_ || param1)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop());
                                                                                                                                                                           if(_loc22_)
                                                                                                                                                                           {
                                                                                                                                                                              addr722:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 _loc16_ = §§pop();
                                                                                                                                                                                 addr723:
                                                                                                                                                                                 loop9:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    loop10:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       AngryBirdsFP11.§3!a§.§5C§();
                                                                                                                                                                                       if(_loc22_ || param3)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc22_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc22_ || param2)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!(_loc23_ && param1))
                                                                                                                                                                                                {
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      this.§!z§ = [];
                                                                                                                                                                                                      if(!(_loc23_ && param3))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!(_loc22_ || this))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue loop9;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         if(_loc22_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(false)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue loop10;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§push(_loc16_);
                                                                                                                                                                                                            if(!(_loc23_ && this))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr837:
                                                                                                                                                                                                               _loc17_ = §§pop().split("-");
                                                                                                                                                                                                               if(!_loc23_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  _loc20_ = 0;
                                                                                                                                                                                                                  if(!(_loc23_ && param3))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     _loc21_ = _loc17_;
                                                                                                                                                                                                                     if(!_loc23_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        for each(_loc19_ in _loc21_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           loop1:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr872:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §'N§.§0[§(_loc19_);
                                                                                                                                                                                                                                 addr876:
                                                                                                                                                                                                                                 while(_loc22_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 continue loop1;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        addr890:
                                                                                                                                                                                                                        if(!(_loc23_ && param1))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §=r§.addCallback("purchaseComplete",this.§4!e§);
                                                                                                                                                                                                                           §=r§.§[!3§("placeOrder",_loc16_);
                                                                                                                                                                                                                           addr1125:
                                                                                                                                                                                                                           break loop45;
                                                                                                                                                                                                                           addr1125:
                                                                                                                                                                                                                           addr1131:
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        else
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr915:
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        if(false)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr917:
                                                                                                                                                                                                                           break loop45;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        break loop45;
                                                                                                                                                                                                                        addr887:
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        this.§!z§.push(_loc19_);
                                                                                                                                                                                                                        if(!(_loc23_ && this))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§goto(addr887);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr872);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr876);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr890);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               else
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr960:
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr917);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            else
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr1136:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  _loc20_ = §§pop();
                                                                                                                                                                                                                  if(!_loc23_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push("UNEQUIP_ALL");
                                                                                                                                                                                                                     if(!_loc23_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(_loc20_);
                                                                                                                                                                                                                        if(_loc22_ || this)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(§§pop() === §§pop())
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(!(_loc23_ && this))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(0);
                                                                                                                                                                                                                                 if(!(_loc23_ && param3))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr1428:
                                                                                                                                                                                                                                    continue loop12;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              else
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr1199:
                                                                                                                                                                                                                                 §§push(2);
                                                                                                                                                                                                                                 if(!_loc22_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr1428);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           else
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push("RANDOMIZE_AVATAR");
                                                                                                                                                                                                                              if(_loc22_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr1170:
                                                                                                                                                                                                                                 §§push(_loc20_);
                                                                                                                                                                                                                                 if(!_loc23_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(§§pop() === §§pop())
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(_loc22_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(1);
                                                                                                                                                                                                                                          if(_loc23_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             addr1332:
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr1428);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§goto(addr1199);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push("SHARE_WALL_AVATAR");
                                                                                                                                                                                                                                       if(_loc22_ || param1)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(_loc20_);
                                                                                                                                                                                                                                          if(_loc22_ || this)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(§§pop() === §§pop())
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(_loc22_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§goto(addr1199);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr1324:
                                                                                                                                                                                                                                                   §§push(7);
                                                                                                                                                                                                                                                   if(!(_loc23_ && param3))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§goto(addr1332);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr1428);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             else
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push("CANCEL_SHARE");
                                                                                                                                                                                                                                                if(!_loc23_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr1206:
                                                                                                                                                                                                                                                   §§push(_loc20_);
                                                                                                                                                                                                                                                   if(_loc22_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      addr1209:
                                                                                                                                                                                                                                                      if(§§pop() === §§pop())
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(!(_loc23_ && this))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(3);
                                                                                                                                                                                                                                                            if(_loc23_ && param2)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         else
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            addr1408:
                                                                                                                                                                                                                                                            §§push(10);
                                                                                                                                                                                                                                                            if(_loc22_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               addr1411:
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr1428);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push("SHARE_AVATAR");
                                                                                                                                                                                                                                                         if(_loc22_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(_loc20_);
                                                                                                                                                                                                                                                            if(_loc22_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               addr1232:
                                                                                                                                                                                                                                                               if(§§pop() === §§pop())
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(!_loc23_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(4);
                                                                                                                                                                                                                                                                     if(_loc23_ && this)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        addr1355:
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr1428);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  else
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§goto(addr1408);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               else
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push("BUY_THESE");
                                                                                                                                                                                                                                                                  if(_loc22_ || param2)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     addr1252:
                                                                                                                                                                                                                                                                     §§push(_loc20_);
                                                                                                                                                                                                                                                                     if(!(_loc23_ && param3))
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        addr1260:
                                                                                                                                                                                                                                                                        if(§§pop() === §§pop())
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(!_loc23_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(5);
                                                                                                                                                                                                                                                                              if(_loc23_ && param3)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 addr1423:
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           else
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              addr1291:
                                                                                                                                                                                                                                                                              §§push(6);
                                                                                                                                                                                                                                                                              if(_loc22_ || param3)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr1428);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        else
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push("SET_AVATAR");
                                                                                                                                                                                                                                                                           if(_loc22_ || param3)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           addr1308:
                                                                                                                                                                                                                                                                           §§push(_loc20_);
                                                                                                                                                                                                                                                                           if(_loc22_ || param1)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              addr1316:
                                                                                                                                                                                                                                                                              if(§§pop() === §§pop())
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(_loc22_ || param1)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§goto(addr1324);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 else
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    addr1380:
                                                                                                                                                                                                                                                                                    §§push(9);
                                                                                                                                                                                                                                                                                    if(_loc22_ || this)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§goto(addr1388);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr1428);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              else
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push("CLOSE_AVATAR");
                                                                                                                                                                                                                                                                                 if(!(_loc23_ && param3))
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(_loc20_);
                                                                                                                                                                                                                                                                                    if(_loc22_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       addr1344:
                                                                                                                                                                                                                                                                                       if(§§pop() === §§pop())
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(!(_loc23_ && param2))
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(8);
                                                                                                                                                                                                                                                                                             if(_loc22_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§goto(addr1355);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             else
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§goto(addr1411);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr1428);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§push("EASTER_EGG_2");
                                                                                                                                                                                                                                                                                          if(_loc22_ || this)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             addr1364:
                                                                                                                                                                                                                                                                                             §§push(_loc20_);
                                                                                                                                                                                                                                                                                             if(!(_loc23_ && param3))
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                addr1372:
                                                                                                                                                                                                                                                                                                if(§§pop() === §§pop())
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   if(_loc22_ || param2)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§goto(addr1380);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   else
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      addr1415:
                                                                                                                                                                                                                                                                                                      §§push(11);
                                                                                                                                                                                                                                                                                                      if(_loc22_ || this)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§goto(addr1423);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr1428);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§push("SCROLL_RIGHT");
                                                                                                                                                                                                                                                                                                   if(_loc22_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      addr1402:
                                                                                                                                                                                                                                                                                                      §§push(_loc20_);
                                                                                                                                                                                                                                                                                                      if(_loc22_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         addr1405:
                                                                                                                                                                                                                                                                                                         if(§§pop() === §§pop())
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            if(_loc22_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§goto(addr1408);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            else
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§goto(addr1415);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         else
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            addr1413:
                                                                                                                                                                                                                                                                                                            §§push("SCROLL_LEFT");
                                                                                                                                                                                                                                                                                                            §§push(_loc20_);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr1415);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      if(§§pop() === §§pop())
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§goto(addr1415);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§goto(addr1428);
                                                                                                                                                                                                                                                                                                         §§push(12);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr1428);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr1413);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr1415);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr1405);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr1413);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr1372);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr1364);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr1428);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr1372);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr1316);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§push(_loc20_);
                                                                                                                                                                                                                                                                  if(_loc22_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(§§pop() === §§pop())
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(!(_loc23_ && param2))
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§goto(addr1291);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr1428);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     else
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push("SET_PROFILE");
                                                                                                                                                                                                                                                                        if(!(_loc23_ && param1))
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§goto(addr1308);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr1402);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr1402);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr1428);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr1316);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr1308);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr1344);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr1308);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr1428);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr1260);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1206);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1428);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr1232);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr1252);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1209);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1170);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1380);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr1136:
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         else
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§goto(addr792);
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      break loop45;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr704:
                                                                                                                                                                                                }
                                                                                                                                                                                                else
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§goto(addr828);
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             break loop5;
                                                                                                                                                                                          }
                                                                                                                                                                                          addr734:
                                                                                                                                                                                          addr727:
                                                                                                                                                                                          if(_loc23_ && this)
                                                                                                                                                                                          {
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                this.§!!r§();
                                                                                                                                                                                                §§goto(addr727);
                                                                                                                                                                                             }
                                                                                                                                                                                             addr762:
                                                                                                                                                                                          }
                                                                                                                                                                                          break loop45;
                                                                                                                                                                                       }
                                                                                                                                                                                       break loop45;
                                                                                                                                                                                    }
                                                                                                                                                                                    break loop45;
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              addr722:
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1136);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr722);
                                                                                                                                                                     case 6:
                                                                                                                                                                        this.§2H§ = false;
                                                                                                                                                                        loop22:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(this.§5!P§);
                                                                                                                                                                           addr1101:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push("WaitingForReply");
                                                                                                                                                                              addr1102:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop().getItemByName(§§pop()));
                                                                                                                                                                                 addr1103:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(true);
                                                                                                                                                                                    addr1104:
                                                                                                                                                                                    loop15:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§pop().setVisibility(§§pop());
                                                                                                                                                                                       addr1105:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc22_ || param1)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr1097:
                                                                                                                                                                                             §§push(§6!_§.§+!e§.§?!_§());
                                                                                                                                                                                             if(_loc22_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop());
                                                                                                                                                                                             }
                                                                                                                                                                                             _loc18_ = §§pop();
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                this.§&!j§(_loc18_);
                                                                                                                                                                                                addr1088:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   this.§=G§();
                                                                                                                                                                                                   addr1076:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc22_ || param1)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         break loop45;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      continue loop22;
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             addr1097:
                                                                                                                                                                                          }
                                                                                                                                                                                          else
                                                                                                                                                                                          {
                                                                                                                                                                                             §§goto(addr1125);
                                                                                                                                                                                          }
                                                                                                                                                                                          continue loop15;
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        break;
                                                                                                                                                                     case 7:
                                                                                                                                                                        this.§2H§ = true;
                                                                                                                                                                        addr1043:
                                                                                                                                                                        §§push(this.§5!P§);
                                                                                                                                                                        if(_loc22_ || this)
                                                                                                                                                                        {
                                                                                                                                                                           addr1051:
                                                                                                                                                                           §§push("WaitingForReply");
                                                                                                                                                                           if(!(_loc23_ && this))
                                                                                                                                                                           {
                                                                                                                                                                              addr1059:
                                                                                                                                                                              §§push(§§pop().getItemByName(§§pop()));
                                                                                                                                                                              if(!_loc23_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr1062:
                                                                                                                                                                                 §§push(true);
                                                                                                                                                                                 if(_loc22_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§pop().setVisibility(§§pop());
                                                                                                                                                                                    this.§&!j§("");
                                                                                                                                                                                    this.§=G§();
                                                                                                                                                                                    addr1020:
                                                                                                                                                                                    if(!(_loc23_ && this))
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc22_ || param1)
                                                                                                                                                                                       {
                                                                                                                                                                                          break;
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1105);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1097);
                                                                                                                                                                                    addr1065:
                                                                                                                                                                                    addr1039:
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1104);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1103);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1102);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1101);
                                                                                                                                                                        addr1072:
                                                                                                                                                                     case 8:
                                                                                                                                                                        this.§0q§.removeEventListener(§+!k§.§=m§,this.onUiInteraction);
                                                                                                                                                                        loop19:
                                                                                                                                                                        while(_loc22_)
                                                                                                                                                                        {
                                                                                                                                                                           this.deActivate();
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              if(!(_loc22_ || param3))
                                                                                                                                                                              {
                                                                                                                                                                                 continue loop19;
                                                                                                                                                                              }
                                                                                                                                                                              if(!_loc23_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!_loc23_)
                                                                                                                                                                                 {
                                                                                                                                                                                    break loop45;
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1088);
                                                                                                                                                                              }
                                                                                                                                                                              else
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr1072);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1065);
                                                                                                                                                                     case 9:
                                                                                                                                                                        §§push(this.§5!P§);
                                                                                                                                                                        if(_loc22_ || param1)
                                                                                                                                                                        {
                                                                                                                                                                           §§push("ButtonEasterEgg2");
                                                                                                                                                                           if(!_loc23_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop().getItemByName(§§pop()));
                                                                                                                                                                              if(!_loc23_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(false);
                                                                                                                                                                                 if(_loc22_ || param1)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§pop().setVisibility(§§pop());
                                                                                                                                                                                    (AngryBirdsFP11.sUserProgress as §<[§).setEggUnlocked("1000-2");
                                                                                                                                                                                    addr953:
                                                                                                                                                                                    if(_loc22_ || param2)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr960);
                                                                                                                                                                                    }
                                                                                                                                                                                    else
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr992);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1062);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1059);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1051);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1043);
                                                                                                                                                                     case 10:
                                                                                                                                                                        this.§=G§();
                                                                                                                                                                        addr922:
                                                                                                                                                                        if(!(_loc23_ && this))
                                                                                                                                                                        {
                                                                                                                                                                           if(!(_loc23_ && param3))
                                                                                                                                                                           {
                                                                                                                                                                              if(!(_loc23_ && this))
                                                                                                                                                                              {
                                                                                                                                                                                 if(!_loc23_)
                                                                                                                                                                                 {
                                                                                                                                                                                    break;
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1131);
                                                                                                                                                                              }
                                                                                                                                                                              else
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr1020);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           else
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr988);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1020);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr953);
                                                                                                                                                                     case 11:
                                                                                                                                                                        this.§=G§();
                                                                                                                                                                        if(!(_loc23_ && param2))
                                                                                                                                                                        {
                                                                                                                                                                           if(!_loc23_)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc22_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr915);
                                                                                                                                                                              }
                                                                                                                                                                              else
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr1076);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           else
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr1039);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1097);
                                                                                                                                                                        }
                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr922);
                                                                                                                                                                        }
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1430);
                                                                                                                                                               }
                                                                                                                                                               addr1429:
                                                                                                                                                            }
                                                                                                                                                            _loc14_ = §§pop();
                                                                                                                                                            if(_loc22_ || param2)
                                                                                                                                                            {
                                                                                                                                                               §§push(0);
                                                                                                                                                               if(_loc22_ || param2)
                                                                                                                                                               {
                                                                                                                                                                  continue loop5;
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1429);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr734);
                                                                                                                                                         }
                                                                                                                                                         addr538:
                                                                                                                                                      }
                                                                                                                                                      break;
                                                                                                                                                   }
                                                                                                                                                   §§push("WaitingForReply");
                                                                                                                                                   if(!_loc23_)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop().getItemByName(§§pop()));
                                                                                                                                                      if(_loc22_)
                                                                                                                                                      {
                                                                                                                                                         §§push(true);
                                                                                                                                                         if(!(_loc23_ && param2))
                                                                                                                                                         {
                                                                                                                                                            §§pop().setVisibility(§§pop());
                                                                                                                                                            §§goto(addr762);
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr771);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr771);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr771);
                                                                                                                                                }
                                                                                                                                                this.§=G§();
                                                                                                                                                if(_loc22_)
                                                                                                                                                {
                                                                                                                                                   addr818:
                                                                                                                                                }
                                                                                                                                                addr1430:
                                                                                                                                                return;
                                                                                                                                             }
                                                                                                                                             §§goto(addr722);
                                                                                                                                          }
                                                                                                                                          §§goto(addr837);
                                                                                                                                       }
                                                                                                                                       §§goto(addr704);
                                                                                                                                    }
                                                                                                                                    §§goto(addr823);
                                                                                                                                 }
                                                                                                                                 §§goto(addr722);
                                                                                                                              }
                                                                                                                              §§goto(addr818);
                                                                                                                           }
                                                                                                                           §§goto(addr598);
                                                                                                                        }
                                                                                                                        §§goto(addr640);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        _loc12_ = §§nextvalue(_loc20_,_loc21_);
                                                                                                                        if(_loc22_)
                                                                                                                        {
                                                                                                                           if(_loc11_ == _loc10_)
                                                                                                                           {
                                                                                                                              (_loc12_ as §?O§).§<!§();
                                                                                                                              loop31:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 addr443:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    _loc11_++;
                                                                                                                                    if(_loc22_ || param2)
                                                                                                                                    {
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                    continue loop31;
                                                                                                                                 }
                                                                                                                                 if(!(_loc23_ && param1))
                                                                                                                                 {
                                                                                                                                    addr459:
                                                                                                                                    if(_loc22_ || this)
                                                                                                                                    {
                                                                                                                                       if(false)
                                                                                                                                       {
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§goto(addr443);
                                                                                                                                          }
                                                                                                                                          addr468:
                                                                                                                                       }
                                                                                                                                       continue loop26;
                                                                                                                                    }
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       (_loc12_ as §?O§).§!!1§();
                                                                                                                                       §§goto(addr459);
                                                                                                                                    }
                                                                                                                                    addr479:
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§goto(addr468);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              addr475:
                                                                                                                           }
                                                                                                                           §§goto(addr479);
                                                                                                                        }
                                                                                                                        §§goto(addr475);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  break;
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     _loc15_ = §§nextvalue(_loc20_,_loc21_);
                                                                                                                     if(!(_loc23_ && param2))
                                                                                                                     {
                                                                                                                        if(_loc11_ == _loc14_)
                                                                                                                        {
                                                                                                                           if(_loc23_ && param1)
                                                                                                                           {
                                                                                                                              continue;
                                                                                                                           }
                                                                                                                           (_loc15_ as §?O§).§!!1§();
                                                                                                                           if(!_loc22_)
                                                                                                                           {
                                                                                                                              continue;
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     _loc11_++;
                                                                                                                     continue;
                                                                                                                  }
                                                                                                                  §§goto(addr598);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr598);
                                                                                                         }
                                                                                                         §§goto(addr595);
                                                                                                      }
                                                                                                      §§goto(addr526);
                                                                                                   }
                                                                                                   §§goto(addr1429);
                                                                                                }
                                                                                                §§goto(addr796);
                                                                                             }
                                                                                             §§goto(addr595);
                                                                                          }
                                                                                          §§goto(addr400);
                                                                                       }
                                                                                       §§goto(addr538);
                                                                                    }
                                                                                    §§goto(addr397);
                                                                                 }
                                                                                 §§goto(addr837);
                                                                              }
                                                                              §§goto(addr579);
                                                                           }
                                                                           §§goto(addr644);
                                                                        }
                                                                        §§goto(addr566);
                                                                     }
                                                                     §§goto(addr363);
                                                                  }
                                                                  §§goto(addr326);
                                                               }
                                                            }
                                                         }
                                                         break;
                                                      }
                                                      §§goto(addr206);
                                                   }
                                                   §§goto(addr195);
                                                }
                                             }
                                             §§goto(addr195);
                                          }
                                          §§goto(addr339);
                                       }
                                    }
                                    else
                                    {
                                       if(((_loc4_.mParentContainer as §7p§).mParentContainer as §?!x§).mName.toUpperCase() == "REPEATER_ITEMS")
                                       {
                                          §§goto(addr311);
                                       }
                                       §§goto(addr339);
                                    }
                                    §§goto(addr339);
                                 }
                                 §§goto(addr204);
                              }
                              §§goto(addr339);
                           }
                           §§goto(addr158);
                        }
                        addr142:
                     }
                     §§goto(addr339);
                  }
                  §§goto(addr199);
               }
               §§goto(addr142);
            }
            §§goto(addr339);
         }
         §§goto(addr70);
      }
      
      private function §!!r§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §'N§.§<=§();
            loop0:
            while(true)
            {
               AngryBirdsFP11.§3!a§.§5C§();
               while(true)
               {
                  §=r§.addCallback("permissionRequestComplete",this.permissionRequestComplete);
                  loop2:
                  while(!_loc1_)
                  {
                     while(true)
                     {
                        §=r§.§[!3§("askForPublishStreamPermission");
                        if(_loc2_)
                        {
                           if(_loc2_)
                           {
                              break;
                           }
                           continue loop0;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr51);
      }
      
      private function permissionRequestComplete(param1:String) : void
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         var _loc2_:§2x§ = null;
         var _loc3_:int = 0;
         var _loc4_:BitmapData = null;
         var _loc5_:Matrix = null;
         var _loc6_:Number = NaN;
         var _loc7_:§9j§ = null;
         var _loc8_:int = 0;
         var _loc9_:Bitmap = null;
         var _loc10_:DisplayObject = null;
         if(_loc11_)
         {
            §'N§.§+!w§();
            while(true)
            {
               §=r§.§<a§("permissionRequestComplete",this.permissionRequestComplete);
            }
            addr151:
         }
         loop1:
         while(true)
         {
            §§push(this.§5!P§);
            loop2:
            while(true)
            {
               §§push("WaitingForReply");
               loop3:
               while(true)
               {
                  §§push(§§pop().getItemByName(§§pop()));
                  addr129:
                  while(true)
                  {
                     §§push(false);
                     addr130:
                     while(true)
                     {
                        §§pop().setVisibility(§§pop());
                        addr131:
                        while(true)
                        {
                           addr99:
                           while(true)
                           {
                              if(param1 != "true")
                              {
                                 return;
                                 addr123:
                              }
                              else
                              {
                                 addr294:
                              }
                              if(_loc11_ || this)
                              {
                                 §§push(this.§5!P§);
                                 loop8:
                                 while(true)
                                 {
                                    §§push("AvatarSharing");
                                    addr113:
                                    while(!(_loc12_ && _loc3_))
                                    {
                                       §§push(§§pop().getItemByName(§§pop()));
                                       while(true)
                                       {
                                          §§push(true);
                                          addr122:
                                          while(true)
                                          {
                                             §§pop().setVisibility(§§pop());
                                             continue loop8;
                                          }
                                       }
                                    }
                                    continue loop3;
                                 }
                                 addr112:
                              }
                              while(true)
                              {
                                 §§push(this.§5!P§);
                                 if(!(_loc12_ && _loc2_))
                                 {
                                    continue loop2;
                                 }
                                 §§goto(addr112);
                              }
                              continue loop2;
                           }
                           continue loop1;
                        }
                     }
                  }
               }
            }
         }
      }
      
      private function §[!;§() : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         if(!(_loc10_ && this))
         {
            §§push(this.§5!P§);
            loop0:
            while(true)
            {
               §§push("AvatarSharing");
               addr84:
               while(true)
               {
                  §§push(§§pop().getItemByName(§§pop()));
                  loop2:
                  while(true)
                  {
                     §§push(false);
                     loop3:
                     while(true)
                     {
                        §§pop().setVisibility(§§pop());
                        loop4:
                        while(true)
                        {
                           loop5:
                           while(true)
                           {
                              §§push(this.§5!P§);
                              addr65:
                              while(_loc9_)
                              {
                                 §§push("ShareAvatarWindow");
                                 while(true)
                                 {
                                    §§push(§§pop().getItemByName(§§pop()));
                                    addr69:
                                    while(!(_loc10_ && _loc3_))
                                    {
                                       §§push(false);
                                       while(true)
                                       {
                                          §§pop().setVisibility(§§pop());
                                          addr78:
                                          while(!_loc10_)
                                          {
                                          }
                                          addr42:
                                          §§push(true);
                                          continue loop4;
                                          if(_loc10_ && this)
                                          {
                                             continue;
                                          }
                                          if(!_loc9_)
                                          {
                                             continue loop3;
                                          }
                                          §§pop().setVisibility(§§pop());
                                          if(!(_loc9_ || this))
                                          {
                                             §§goto(addr78);
                                          }
                                          if(false)
                                          {
                                             continue loop5;
                                          }
                                          addr88:
                                          var _loc1_:§2x§ = new §2x§();
                                          if(!(_loc10_ && _loc3_))
                                          {
                                             _loc1_.§ !-§();
                                          }
                                          var _loc2_:int = 500;
                                          var _loc3_:BitmapData = _loc1_.render(§6!_§.§+!e§.§?!_§(),null,_loc2_);
                                          var _loc4_:Matrix = new Matrix();
                                          §§push(_loc2_ / 100);
                                          if(_loc9_ || _loc2_)
                                          {
                                             §§push(§§pop() / 2);
                                             if(_loc9_ || this)
                                             {
                                                addr145:
                                                §§push(Number(§§pop()));
                                             }
                                             var _loc5_:* = §§pop();
                                             if(!_loc10_)
                                             {
                                                _loc4_.scale(_loc5_,_loc5_);
                                             }
                                             var _loc7_:MovieClip;
                                             var _loc6_:Class;
                                             (_loc7_ = new (_loc6_ = §%!G§.§^!B§("WatermarkPlayOnFacebook"))()).x = _loc2_ - _loc7_.width;
                                             if(_loc9_ || _loc3_)
                                             {
                                                _loc7_.y = _loc2_ - _loc7_.height;
                                                if(_loc9_ || _loc3_)
                                                {
                                                   _loc3_.draw(_loc7_,_loc4_,null,null,null,true);
                                                }
                                             }
                                             §§push((AngryBirdsFP11.sUserProgress as §<[§).§0u§);
                                             if(_loc9_ || _loc3_)
                                             {
                                                §§push(§§pop());
                                             }
                                             var _loc8_:* = §§pop();
                                             if(_loc9_)
                                             {
                                                § b§.§1#§(_loc3_,§[c§,_loc8_,this.§;!U§,this.§"!7§);
                                             }
                                             return;
                                          }
                                          §§goto(addr145);
                                       }
                                    }
                                    continue loop2;
                                 }
                              }
                              continue loop0;
                           }
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            §§push(this.§5!P§);
            if(_loc9_)
            {
               §§push("WaitingForReply");
               if(!_loc10_)
               {
                  if(!(_loc10_ && this))
                  {
                     §§push(§§pop().getItemByName(§§pop()));
                     if(_loc9_)
                     {
                        §§goto(addr42);
                     }
                     §§goto(addr69);
                  }
                  §§goto(addr84);
               }
               §§goto(addr68);
            }
            §§goto(addr65);
         }
         §§goto(addr88);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            super.deActivate();
            while(true)
            {
               §=r§.§<a§("purchaseComplete",this.§4!e§);
               while(true)
               {
                  this.§0q§.removeEventListener(§+!k§.§=m§,this.onUiInteraction);
                  §§goto(addr76);
               }
            }
         }
         addr76:
         while(true)
         {
            preClose();
            if(!(_loc2_ && _loc2_))
            {
               if(!(_loc2_ && _loc1_))
               {
                  if(_loc1_)
                  {
                     break;
                  }
                  continue loop0;
               }
               continue loop1;
            }
         }
      }
      
      private function §;!U§(param1:*) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:String = param1.toString();
         if(!(_loc3_ && param1))
         {
            this.§5!P§.getItemByName("WaitingForReply").setVisibility(false);
         }
      }
      
      private function §"!7§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.§5!P§.getItemByName("WaitingForReply").setVisibility(false);
         }
      }
      
      override public function close() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            super.close();
            do
            {
               this.§8q§ = false;
            }
            while(_loc1_);
            
         }
      }
      
      override public function open(param1:Boolean = true) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:§7A§ = null;
         if(_loc5_ || this)
         {
            super.open(param1);
            if(_loc5_ || _loc3_)
            {
               addr36:
               §'N§.§4j§();
            }
            var _loc2_:§[I§ = this.§5!P§.getItemByName("AvatarSavedAnimation") as §[I§;
            if(_loc5_)
            {
               _loc2_.setVisibility(false);
            }
            while(true)
            {
               mClip.x = (mClip.stage.stageWidth - 750) / 2;
               while(!(_loc6_ && _loc2_))
               {
                  mClip.y = (mClip.stage.stageHeight - 525) / 2;
                  loop2:
                  for(; !_loc6_; do
                  {
                     this.§[_§ = false;
                     do
                     {
                        this.§"§();
                     }
                     while(_loc6_);
                     
                  }
                  while(!(_loc5_ || param1));
                  ,if(_loc6_)
                  {
                     continue;
                  },§§goto(addr63))
                  {
                     while(this.§[_§)
                     {
                        continue loop2;
                        if(true)
                        {
                           break;
                        }
                     }
                     var _loc3_:* = Number(0);
                     while(_loc3_ < §<!m§.length)
                     {
                        (_loc4_ = §<!m§[_loc3_]).hide();
                        if(_loc6_ && this)
                        {
                           continue;
                        }
                        §§push(_loc3_);
                        if(!_loc6_)
                        {
                           §§push(§§pop() + 1);
                           if(!(_loc6_ && _loc2_))
                           {
                              addr148:
                              §§push(Number(§§pop()));
                           }
                           _loc3_ = §§pop();
                           continue;
                        }
                        §§goto(addr148);
                     }
                     if(!(_loc6_ && _loc2_))
                     {
                        §§push(§6!d§);
                        if(!_loc6_)
                        {
                           if(§§pop().§%!y§ == null)
                           {
                              if(_loc5_ || _loc2_)
                              {
                                 addr185:
                                 §6!d§.§^7§(§5[§,§2V§,§@!j§,§<!m§);
                                 if(!(_loc6_ && this))
                                 {
                                    addr197:
                                    if(!this.§8q§)
                                    {
                                       if(_loc5_)
                                       {
                                          addr202:
                                          this.§ f§();
                                       }
                                    }
                                 }
                                 §§goto(addr202);
                              }
                              return;
                           }
                           §§goto(addr197);
                        }
                        §§goto(addr185);
                     }
                     §§goto(addr202);
                  }
               }
            }
         }
         §§goto(addr36);
      }
      
      public function §+h§() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:String = null;
         var _loc4_:Item = null;
         var _loc1_:§?!x§ = this.§5!P§.getItemByName("Repeater_Items") as §?!x§;
         var _loc2_:* = Number(0);
         while(true)
         {
            if(_loc2_ >= §6!_§.§1w§().§=!b§.length)
            {
               if(!_loc5_)
               {
                  break;
               }
               §§goto(addr133);
            }
            _loc3_ = §6!_§.§1w§().§=!b§[_loc2_].name;
            if(!(_loc6_ || this))
            {
               break;
            }
            if((_loc4_ = §6!_§.§+!e§.§66§(_loc3_)) == null)
            {
               if(!_loc5_)
               {
                  §§push(_loc1_);
                  §§push("Repeater_Items_Tab_");
                  if(!(_loc5_ && _loc2_))
                  {
                     §§push(§§pop() + _loc2_);
                  }
                  §§push(§§pop().§#!0§(§§pop()));
                  if(!_loc5_)
                  {
                     §§push(_loc3_);
                     if(!_loc5_)
                     {
                        §§pop().§`N§(§§pop());
                        if(!_loc5_)
                        {
                           addr92:
                        }
                     }
                     else
                     {
                        addr112:
                        §§pop().§`N§(§§pop());
                        if(_loc5_)
                        {
                           continue;
                        }
                     }
                     §§push(_loc2_);
                     if(!_loc5_)
                     {
                        §§push(§§pop() + 1);
                        if(!_loc5_)
                        {
                           §§push(Number(§§pop()));
                        }
                     }
                     _loc2_ = §§pop();
                     continue;
                  }
                  addr110:
                  §§push(_loc4_.§&!X§);
                  §§goto(addr112);
               }
               §§goto(addr92);
            }
            else
            {
               §§push(_loc1_);
               §§push("Repeater_Items_Tab_");
               if(!_loc5_)
               {
                  §§push(§§pop() + _loc2_);
               }
               §§push(§§pop().§#!0§(§§pop()));
            }
            §§goto(addr110);
         }
         this.§=G§();
         addr133:
      }
      
      public function §4!e§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:String = null;
         var _loc3_:* = this.§!z§;
         for each(_loc1_ in _loc3_)
         {
            if(!(_loc4_ && _loc3_))
            {
               §'N§.§47§(_loc1_);
            }
         }
         if(_loc5_)
         {
            this.§!z§ = [];
            while(true)
            {
               §=r§.§<a§("purchaseComplete",this.§4!e§);
               while(!(_loc4_ && this))
               {
                  this.§^!F§();
                  if(!_loc5_)
                  {
                     continue;
                  }
                  return;
                  addr79:
               }
            }
         }
         §§goto(addr79);
      }
      
      private function §&!j§(param1:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param1)
         {
            this.§]!i§ = this.§8o§;
            if(!_loc5_)
            {
               addr29:
               this.§8o§ = param1;
            }
            §§push(§ v§);
            §§push(§,X§ + "/saveavatar/");
            if(!_loc5_)
            {
               §§push(§§pop() + param1);
            }
            var _loc2_:URLRequest = §§pop().§<N§(§§pop());
            if(!_loc5_)
            {
               _loc2_.method = URLRequestMethod.POST;
            }
            var _loc3_:URLLoader = new URLLoader();
            if(!(_loc5_ && _loc2_))
            {
               _loc3_.addEventListener(Event.COMPLETE,this.§ F§);
               while(true)
               {
                  _loc3_.addEventListener(IOErrorEvent.IO_ERROR,this.§^!>§);
                  while(!(_loc5_ && _loc3_))
                  {
                     _loc3_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§9?§);
                     do
                     {
                        _loc3_.load(_loc2_);
                     }
                     while(_loc5_);
                     
                     if(_loc5_)
                     {
                        continue;
                     }
                     return;
                     addr93:
                  }
               }
            }
            §§goto(addr93);
         }
         §§goto(addr29);
      }
      
      protected function §9?§(param1:SecurityErrorEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            §@M§.§-5§();
         }
      }
      
      private function § F§(param1:Event) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc2_:Array = null;
         var _loc3_:* = null;
         var _loc4_:§[I§ = null;
         if(!(_loc8_ && this))
         {
            §§push(this.§8o§);
            if(!_loc8_)
            {
               if(§§pop() != null)
               {
                  loop0:
                  while(true)
                  {
                     (AngryBirdsFP11.sUserProgress as §<[§).avatarString = this.§8o§;
                     loop1:
                     while(true)
                     {
                        loop2:
                        while(true)
                        {
                           §3?§.§!`§(new §2!A§(this.§8o§,(AngryBirdsFP11.sUserProgress as §<[§).§0u§),true,true);
                           loop3:
                           while(!_loc8_)
                           {
                              while(true)
                              {
                                 §0z§.§%?§(this.§8o§);
                                 if(!_loc8_)
                                 {
                                    if(_loc7_)
                                    {
                                       if(true)
                                       {
                                          break;
                                       }
                                       continue loop2;
                                    }
                                    continue loop0;
                                 }
                                 continue loop3;
                              }
                              _loc2_ = this.§8o§.split("-");
                              var _loc5_:int = 0;
                              var _loc6_:* = _loc2_;
                              loop4:
                              while(§§hasnext(_loc6_,_loc5_))
                              {
                                 §§push(§§nextvalue(_loc5_,_loc6_));
                                 loop5:
                                 while(true)
                                 {
                                    _loc3_ = §§pop();
                                    addr143:
                                    while(true)
                                    {
                                       addr111:
                                       addr128:
                                       while(true)
                                       {
                                          §§push(this.§]!i§);
                                          if(_loc8_)
                                          {
                                             break;
                                          }
                                          continue loop5;
                                       }
                                       if(§§pop().indexOf(_loc3_) == -1)
                                       {
                                          addr132:
                                          §'N§.§3!e§(_loc3_);
                                       }
                                       continue loop4;
                                    }
                                 }
                              }
                           }
                           continue loop1;
                        }
                     }
                  }
               }
               if(this.§8q§)
               {
                  if(!_loc8_)
                  {
                     §§push(this.§5!P§);
                     if(_loc7_ || _loc3_)
                     {
                        §§push("WaitingForReply");
                        if(_loc7_ || _loc3_)
                        {
                           §§push(§§pop().getItemByName(§§pop()));
                           if(!(_loc8_ && _loc2_))
                           {
                              §§pop().setVisibility(false);
                              addr193:
                              §§push(this.§5!P§.getItemByName("AvatarSavedAnimation"));
                           }
                           (_loc4_ = §§pop() as §[I§).setVisibility(true);
                           if(_loc7_ || param1)
                           {
                              _loc4_.mClip.gotoAndPlay(1);
                              if(_loc7_)
                              {
                                 this.§=G§();
                              }
                           }
                           §§goto(addr216);
                        }
                     }
                  }
                  §§goto(addr193);
               }
               addr216:
               return;
            }
            §§goto(addr77);
         }
         §§goto(addr60);
      }
      
      private function §^!>§(param1:IOErrorEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§[I§ = null;
         if(_loc4_ || _loc2_)
         {
            if(this.§8q§)
            {
               if(!_loc3_)
               {
                  §§push(this.§5!P§);
                  if(!_loc3_)
                  {
                     §§push("WaitingForReply");
                     if(_loc4_ || _loc2_)
                     {
                        §§push(§§pop().getItemByName(§§pop()));
                        if(_loc4_)
                        {
                           §§pop().setVisibility(false);
                           addr72:
                           §§push(this.§5!P§.getItemByName("AvatarSavedAnimation"));
                        }
                        _loc2_ = §§pop() as §[I§;
                        if(_loc4_ || param1)
                        {
                           _loc2_.setVisibility(true);
                           if(_loc3_)
                           {
                           }
                           §§goto(addr93);
                        }
                        _loc2_.mClip.gotoAndPlay(1);
                        §§goto(addr93);
                     }
                  }
               }
               §§goto(addr72);
            }
            addr93:
            return;
         }
         §§goto(addr72);
      }
      
      public function §'!X§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            §6!_§.§+!e§.§'!X§(param1);
            do
            {
               this.§=G§();
            }
            while(!(_loc2_ || param1));
            
         }
      }
      
      public function §>!N§(param1:String) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc4_:§7A§ = null;
         var _loc5_:Object = null;
         var _loc6_:Item = null;
         var _loc2_:Item = §6!_§.§1w§().§1]§(param1);
         var _loc3_:§7A§ = §6!_§.§+!e§;
         if(_loc10_ || this)
         {
            if(_loc2_)
            {
               if(_loc10_ || this)
               {
                  §§push(_loc2_.§@§);
                  if(_loc10_ || _loc2_)
                  {
                     §§push(§§pop().toUpperCase() == "CATEGORYBIRDS");
                     if(!_loc9_)
                     {
                        if(§§pop())
                        {
                           if(_loc10_)
                           {
                              §§pop();
                              addr83:
                              if(!_loc9_)
                              {
                                 addr76:
                                 §§push(_loc3_.§6;§().§&!X§ == _loc2_.§&!X§);
                                 if(_loc10_)
                                 {
                                    addr81:
                                    §§push(!§§pop());
                                 }
                              }
                              (_loc4_ = §6!d§.§^7§(_loc2_.§&!X§,_loc2_.sId,_loc2_.§@§,§<!m§,110,174)).§,!!§();
                              if(_loc10_ || _loc3_)
                              {
                                 _loc4_.§9!r§(_loc2_);
                                 if(!_loc9_)
                                 {
                                    addr110:
                                    if(_loc3_)
                                    {
                                       addr112:
                                       for each(_loc6_ in _loc3_.§]H§)
                                       {
                                          §§push(_loc6_.category);
                                          if(_loc10_)
                                          {
                                             if(§§pop().toUpperCase() == "CATEGORYBIRDS")
                                             {
                                                continue;
                                             }
                                             if(_loc10_ || this)
                                             {
                                                addr151:
                                                if(_loc6_.category.toUpperCase() == "CATEGORYBACKGROUNDS")
                                                {
                                                   if(_loc10_)
                                                   {
                                                      addr156:
                                                      §6!d§.§=P§(_loc6_.§&!X§);
                                                      if(_loc9_ && _loc2_)
                                                      {
                                                         continue;
                                                      }
                                                   }
                                                }
                                                _loc4_.§9!r§(_loc6_);
                                                continue;
                                             }
                                             §§goto(addr156);
                                          }
                                          §§goto(addr151);
                                       }
                                    }
                                    if((_loc5_ = _loc4_.§66§("CATEGORYBACKGROUNDS")) == null)
                                    {
                                       if(_loc10_ || _loc2_)
                                       {
                                          _loc4_.§9!r§(§6!_§.§1w§().§1]§("Backgrounds1"));
                                          if(_loc10_)
                                          {
                                             addr259:
                                             this.§=G§();
                                             addr197:
                                             addr246:
                                          }
                                       }
                                       return;
                                    }
                                    §§goto(addr197);
                                 }
                                 §§goto(addr112);
                              }
                              §§goto(addr110);
                           }
                        }
                        if(§§pop())
                        {
                           §§goto(addr83);
                        }
                        else
                        {
                           if(_loc2_.§@§.toUpperCase() == "CATEGORYBACKGROUNDS")
                           {
                              if(_loc10_ || _loc3_)
                              {
                                 §6!d§.§=P§(_loc2_.§&!X§);
                                 if(!(_loc9_ && param1))
                                 {
                                    §§push(§6!_§.§+!e§);
                                    if(_loc10_)
                                    {
                                       §§pop().§9!r§(_loc2_);
                                       if(_loc9_)
                                       {
                                       }
                                    }
                                    else
                                    {
                                       addr242:
                                       §§pop().§9!r§(_loc2_);
                                       if(!_loc10_)
                                       {
                                       }
                                    }
                                 }
                                 §§goto(addr259);
                              }
                              §§goto(addr246);
                           }
                           else
                           {
                              §§push(§6!_§.§+!e§);
                           }
                           §§goto(addr242);
                        }
                     }
                     §§goto(addr81);
                  }
                  §§goto(addr76);
               }
               §§goto(addr83);
            }
            else
            {
               §§push(§!>§);
               §§push("[Warining!] Trying to select item that dosen\'t exit. Item id:");
               if(!(_loc9_ && this))
               {
                  §§push(§§pop() + param1);
               }
               §§pop().log(§§pop());
            }
            §§goto(addr259);
         }
         §§goto(addr76);
      }
      
      private function §=G§() : void
      {
         var _loc19_:Boolean = true;
         var _loc20_:Boolean = false;
         var _loc4_:§?V§ = null;
         var _loc5_:Item = null;
         var _loc10_:Array = null;
         var _loc11_:* = null;
         var _loc12_:Array = null;
         var _loc13_:* = null;
         var _loc14_:§?O§ = null;
         var _loc15_:§?O§ = null;
         var _loc16_:* = 0;
         var _loc1_:* = 0;
         var _loc2_:Boolean = false;
         §§push((AngryBirdsFP11.sUserProgress as §<[§).avatarString);
         if(!(_loc20_ && _loc1_))
         {
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         if(_loc19_ || _loc2_)
         {
            §§push(_loc3_);
            if(_loc19_ || _loc3_)
            {
               §§push(§§pop() == null);
               if(_loc19_)
               {
                  §§push(!§§pop());
                  if(_loc19_ || _loc1_)
                  {
                     addr87:
                     if(§§pop())
                     {
                        if(!_loc20_)
                        {
                           §§pop();
                           if(!(_loc20_ && _loc1_))
                           {
                              addr99:
                              §§push(_loc3_);
                              if(_loc19_ || this)
                              {
                                 §§push("");
                                 if(_loc19_)
                                 {
                                    §§push(§§pop() == §§pop());
                                    if(_loc19_ || _loc2_)
                                    {
                                       addr119:
                                       if(!§§pop())
                                       {
                                          addr122:
                                          _loc10_ = _loc3_.split("-");
                                          §§push(§6!_§.§+!e§.§?!_§());
                                          if(_loc19_ || this)
                                          {
                                             §§push(§§pop());
                                             if(!(_loc20_ && this))
                                             {
                                                addr143:
                                                §§push(_loc11_ = §§pop());
                                             }
                                             _loc12_ = §§pop().split("-");
                                             if(!_loc20_)
                                             {
                                                if(_loc10_.length != _loc12_.length)
                                                {
                                                   if(!(_loc20_ && _loc1_))
                                                   {
                                                      _loc2_ = true;
                                                   }
                                                }
                                             }
                                             var _loc17_:* = 0;
                                             var _loc18_:* = _loc12_;
                                             while(§§hasnext(_loc18_,_loc17_))
                                             {
                                                §§push(§§nextvalue(_loc17_,_loc18_));
                                                if(_loc19_)
                                                {
                                                   _loc13_ = §§pop();
                                                   if(_loc20_)
                                                   {
                                                      continue;
                                                   }
                                                   §§push(_loc3_);
                                                }
                                                if(§§pop().indexOf(_loc13_) == -1)
                                                {
                                                   if(_loc19_)
                                                   {
                                                      _loc2_ = true;
                                                   }
                                                }
                                             }
                                             addr194:
                                             §§push(0);
                                             if(_loc19_)
                                             {
                                                _loc17_ = §§pop();
                                                if(!(_loc20_ && _loc1_))
                                                {
                                                   _loc18_ = §6!_§.§1w§().§=!b§;
                                                   loop0:
                                                   while(true)
                                                   {
                                                      §§push(§§hasnext(_loc18_,_loc17_));
                                                      if(_loc19_)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            continue;
                                                         }
                                                         if(!_loc20_)
                                                         {
                                                            if(!(_loc20_ && this))
                                                            {
                                                               addr243:
                                                               if(!_loc20_)
                                                               {
                                                                  this.§#0§ = [];
                                                                  if(!(_loc20_ && _loc3_))
                                                                  {
                                                                     §§push(0);
                                                                     if(_loc19_ || this)
                                                                     {
                                                                        _loc17_ = §§pop();
                                                                        if(!_loc20_)
                                                                        {
                                                                           addr267:
                                                                           _loc18_ = §6!_§.§+!e§.§]H§;
                                                                           while(true)
                                                                           {
                                                                              §§push(§§hasnext(_loc18_,_loc17_));
                                                                              break loop0;
                                                                           }
                                                                           addr361:
                                                                        }
                                                                        if(_loc19_ || _loc1_)
                                                                        {
                                                                           §§push(this.§5!P§);
                                                                           while(true)
                                                                           {
                                                                              §§push("Button_Share");
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop().getItemByName(§§pop()));
                                                                                 if(!(_loc20_ && _loc1_))
                                                                                 {
                                                                                    §§push(false);
                                                                                    while(true)
                                                                                    {
                                                                                       §§pop().setVisibility(§§pop());
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc1_);
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(0);
                                                                                             addr926:
                                                                                             while(true)
                                                                                             {
                                                                                                if(§§pop() <= §§pop())
                                                                                                {
                                                                                                   §§push(this.§5!P§);
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push("BuyTheseButton");
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop().getItemByName(§§pop()));
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc19_ || this)
                                                                                                            {
                                                                                                               §§push(false);
                                                                                                               loop21:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§pop().setVisibility(§§pop());
                                                                                                                  addr899:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(this.§5!P§);
                                                                                                                     addr864:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push("Textfield_Price");
                                                                                                                        addr865:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop().getItemByName(§§pop()));
                                                                                                                           if(_loc19_ || _loc2_)
                                                                                                                           {
                                                                                                                              §§push(false);
                                                                                                                              continue loop21;
                                                                                                                           }
                                                                                                                           §§goto(addr959);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     continue loop21;
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr931);
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr927);
                                                                                             }
                                                                                             §§push(_loc1_);
                                                                                             if(!(_loc19_ || _loc2_))
                                                                                             {
                                                                                                continue;
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(0);
                                                                                                if(!_loc20_)
                                                                                                {
                                                                                                   if(§§pop() > §§pop())
                                                                                                   {
                                                                                                      if(!(_loc20_ && _loc1_))
                                                                                                      {
                                                                                                         §§goto(addr750);
                                                                                                         §§push(this.§5!P§);
                                                                                                      }
                                                                                                      §§goto(addr766);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§push(this.§5!P§);
                                                                                                   }
                                                                                                   §§goto(addr667);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr926);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       while(!(_loc20_ && _loc3_))
                                                                                       {
                                                                                          §§pop().setVisibility(§§pop());
                                                                                          §§goto(addr940);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 addr959:
                                                                                 addr959:
                                                                                 var _loc6_:§5!I§ = §§pop() as §5!I§;
                                                                                 if(_loc19_)
                                                                                 {
                                                                                    addr979:
                                                                                    if(_loc6_.mClip.SetAvatarHolder.numChildren > 0)
                                                                                    {
                                                                                       _loc6_.mClip.SetAvatarHolder.removeChildAt(0);
                                                                                       if(_loc19_ || this)
                                                                                       {
                                                                                          §§goto(addr979);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§push(§6!_§.§+!e§.§?!_§());
                                                                                 if(!(_loc20_ && _loc1_))
                                                                                 {
                                                                                    §§push(§§pop());
                                                                                 }
                                                                                 var _loc7_:* = §§pop();
                                                                                 var _loc8_:Bitmap;
                                                                                 (_loc8_ = new Bitmap(this.§<!H§.render(_loc7_,null))).x = -8;
                                                                                 if(!_loc20_)
                                                                                 {
                                                                                    _loc8_.y = -12;
                                                                                    if(!_loc20_)
                                                                                    {
                                                                                       _loc6_.mClip.SetAvatarHolder.addChild(_loc8_);
                                                                                    }
                                                                                 }
                                                                                 var _loc9_:§7p§;
                                                                                 if(_loc9_ = this.§5!P§.getItemByName(this.§5!P§.§4r§("Repeater_Items")) as §7p§)
                                                                                 {
                                                                                    if(_loc19_)
                                                                                    {
                                                                                       §§push(this.§5!P§);
                                                                                       if(_loc19_)
                                                                                       {
                                                                                          §§push("Page ");
                                                                                          if(_loc19_)
                                                                                          {
                                                                                             §§push(_loc9_.§;!q§);
                                                                                             if(_loc19_ || _loc3_)
                                                                                             {
                                                                                                §§push(§§pop() + (§§pop() + 1).toString());
                                                                                                if(_loc19_)
                                                                                                {
                                                                                                   §§push("/");
                                                                                                   if(_loc19_ || this)
                                                                                                   {
                                                                                                      §§push(§§pop() + §§pop());
                                                                                                      if(_loc19_ || this)
                                                                                                      {
                                                                                                         addr1076:
                                                                                                         §§push(§§pop() + _loc9_.§9!;§);
                                                                                                         if(!(_loc20_ && _loc3_))
                                                                                                         {
                                                                                                            addr1085:
                                                                                                            §§pop().setText(§§pop(),"Textfield_PageNumber");
                                                                                                            if(_loc19_)
                                                                                                            {
                                                                                                               if(_loc9_.§9!;§ != 1)
                                                                                                               {
                                                                                                                  addr1182:
                                                                                                                  §§push(this.§5!P§);
                                                                                                                  if(!_loc20_)
                                                                                                                  {
                                                                                                                     if(!_loc20_)
                                                                                                                     {
                                                                                                                        addr1188:
                                                                                                                        §§push(§§pop().getItemByName("Textfield_PageNumber"));
                                                                                                                        if(_loc19_)
                                                                                                                        {
                                                                                                                           if(!(_loc20_ && _loc3_))
                                                                                                                           {
                                                                                                                              addr1198:
                                                                                                                              §§push(true);
                                                                                                                              if(_loc19_)
                                                                                                                              {
                                                                                                                                 §§pop().setVisibility(§§pop());
                                                                                                                                 addr1201:
                                                                                                                                 if(_loc19_)
                                                                                                                                 {
                                                                                                                                    addr1143:
                                                                                                                                    §§push(this.§5!P§);
                                                                                                                                    if(_loc19_)
                                                                                                                                    {
                                                                                                                                       addr1146:
                                                                                                                                       §§push("Button_Scroll1");
                                                                                                                                       if(_loc19_ || _loc1_)
                                                                                                                                       {
                                                                                                                                          addr1154:
                                                                                                                                          §§push(§§pop().getItemByName(§§pop()));
                                                                                                                                          if(!(_loc20_ && _loc2_))
                                                                                                                                          {
                                                                                                                                             addr1162:
                                                                                                                                             §§push(true);
                                                                                                                                             if(_loc19_ || _loc1_)
                                                                                                                                             {
                                                                                                                                                if(_loc19_)
                                                                                                                                                {
                                                                                                                                                   §§pop().setVisibility(§§pop());
                                                                                                                                                   addr1172:
                                                                                                                                                   if(!_loc20_)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc20_)
                                                                                                                                                      {
                                                                                                                                                         §§push(this.§5!P§);
                                                                                                                                                         if(_loc19_)
                                                                                                                                                         {
                                                                                                                                                            if(_loc19_)
                                                                                                                                                            {
                                                                                                                                                               §§push("Button_Scroll2");
                                                                                                                                                               if(_loc19_ || _loc3_)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc19_)
                                                                                                                                                                  {
                                                                                                                                                                     if(!(_loc20_ && _loc2_))
                                                                                                                                                                     {
                                                                                                                                                                        addr1117:
                                                                                                                                                                        §§push(§§pop().getItemByName(§§pop()));
                                                                                                                                                                        if(!_loc20_)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc19_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(true);
                                                                                                                                                                              if(_loc19_ || _loc1_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!_loc20_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§pop().setVisibility(§§pop());
                                                                                                                                                                                    if(_loc20_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr1172);
                                                                                                                                                                                    }
                                                                                                                                                                                    if(_loc19_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc20_)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr1231:
                                                                                                                                                                                          §§push(this.§5!P§);
                                                                                                                                                                                          §§push("Button_Scroll2");
                                                                                                                                                                                          if(_loc20_)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr1241:
                                                                                                                                                                                             §§pop().getItemByName(§§pop()).setVisibility(false);
                                                                                                                                                                                             addr1230:
                                                                                                                                                                                             this.§5!P§.getItemByName("Button_Scroll1").setVisibility(false);
                                                                                                                                                                                             §§goto(addr1231);
                                                                                                                                                                                             addr1242:
                                                                                                                                                                                             addr1239:
                                                                                                                                                                                             addr1240:
                                                                                                                                                                                          }
                                                                                                                                                                                          addr1222:
                                                                                                                                                                                          §§pop().getItemByName(§§pop()).setVisibility(false);
                                                                                                                                                                                          addr1223:
                                                                                                                                                                                          addr1221:
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1090);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1223);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1230);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1162);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1188);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1154);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1230);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1188);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1146);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1230);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1143);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1242);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1201);
                                                                                                                                                }
                                                                                                                                                §§goto(addr1241);
                                                                                                                                             }
                                                                                                                                             §§goto(addr1198);
                                                                                                                                          }
                                                                                                                                          §§goto(addr1221);
                                                                                                                                       }
                                                                                                                                       §§goto(addr1231);
                                                                                                                                    }
                                                                                                                                    §§goto(addr1182);
                                                                                                                                 }
                                                                                                                                 addr1238:
                                                                                                                                 §§goto(addr1239);
                                                                                                                                 §§push(this.§5!P§);
                                                                                                                                 §§push("Textfield_PageNumber");
                                                                                                                              }
                                                                                                                              §§goto(addr1222);
                                                                                                                           }
                                                                                                                           §§goto(addr1240);
                                                                                                                        }
                                                                                                                        §§goto(addr1241);
                                                                                                                     }
                                                                                                                     §§goto(addr1238);
                                                                                                                  }
                                                                                                                  §§goto(addr1231);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr1238);
                                                                                                         }
                                                                                                         §§goto(addr1188);
                                                                                                      }
                                                                                                      §§goto(addr1117);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr1085);
                                                                                             }
                                                                                             §§goto(addr1076);
                                                                                          }
                                                                                          §§goto(addr1154);
                                                                                       }
                                                                                       §§goto(addr1231);
                                                                                    }
                                                                                    §§goto(addr1238);
                                                                                 }
                                                                                 addr1090:
                                                                                 return;
                                                                              }
                                                                              if(!(_loc19_ || _loc3_))
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              §§push("SetFacebookProfileButton");
                                                                              if(!_loc20_)
                                                                              {
                                                                                 §§goto(addr680);
                                                                                 §§push(§§pop().getItemByName(§§pop()));
                                                                              }
                                                                              §§goto(addr955);
                                                                           }
                                                                        }
                                                                        §§goto(addr899);
                                                                     }
                                                                     §§goto(addr737);
                                                                  }
                                                                  §§goto(addr927);
                                                               }
                                                               §§goto(addr619);
                                                            }
                                                         }
                                                         §§goto(addr267);
                                                      }
                                                      break;
                                                   }
                                                   while(true)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         _loc5_ = §§nextvalue(_loc17_,_loc18_);
                                                         _loc15_ = this.§5!P§.getItemByName(_loc5_.category.toUpperCase()) as §?O§;
                                                         if(!_loc20_)
                                                         {
                                                            §§push(§8!]§(_loc5_.§&!X§));
                                                            loop2:
                                                            while(true)
                                                            {
                                                               §§push(int(§§pop()));
                                                               loop3:
                                                               while(true)
                                                               {
                                                                  _loc16_ = §§pop();
                                                                  while(true)
                                                                  {
                                                                     _loc15_.§#!S§(_loc5_.§&!X§,_loc16_);
                                                                     loop5:
                                                                     while(true)
                                                                     {
                                                                        addr338:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc16_);
                                                                           loop7:
                                                                           while(true)
                                                                           {
                                                                              §§push(0);
                                                                              loop8:
                                                                              while(true)
                                                                              {
                                                                                 if(§§pop() > §§pop())
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       this.§#0§.push(_loc5_);
                                                                                       addr346:
                                                                                       while(true)
                                                                                       {
                                                                                       }
                                                                                    }
                                                                                    addr342:
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc1_);
                                                                                    if(_loc19_)
                                                                                    {
                                                                                       if(_loc20_ && _loc3_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       §§push(_loc16_);
                                                                                       if(!_loc19_)
                                                                                       {
                                                                                          continue loop8;
                                                                                       }
                                                                                       §§push(int(§§pop() + §§pop()));
                                                                                    }
                                                                                    if(!_loc19_)
                                                                                    {
                                                                                       continue loop3;
                                                                                    }
                                                                                    if(_loc20_)
                                                                                    {
                                                                                       continue loop2;
                                                                                    }
                                                                                    _loc1_ = §§pop();
                                                                                    if(_loc19_ || _loc1_)
                                                                                    {
                                                                                       if(_loc19_ || this)
                                                                                       {
                                                                                          continue loop5;
                                                                                       }
                                                                                       §§goto(addr342);
                                                                                    }
                                                                                 }
                                                                                 continue loop7;
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr346);
                                                      }
                                                      §§goto(addr267);
                                                   }
                                                }
                                                §§goto(addr243);
                                             }
                                             §§goto(addr737);
                                          }
                                          §§goto(addr143);
                                       }
                                       §§goto(addr194);
                                    }
                                    §§goto(addr119);
                                 }
                              }
                           }
                           §§goto(addr122);
                        }
                     }
                  }
                  §§goto(addr119);
               }
               §§goto(addr87);
            }
            §§goto(addr122);
         }
         §§goto(addr99);
      }
   }
}
