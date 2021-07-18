package §5!&§
{
   import § "!§.§ ! §;
   import § "!§.§!"O§;
   import § "!§.§""X§;
   import §!"@§.§]"1§;
   import §%i§.§+"6§;
   import §%i§.§4!w§;
   import §%i§.§7!t§;
   import §%i§.§7"0§;
   import §%i§.§^n§;
   import §&S§.§&!l§;
   import §&S§.§6!F§;
   import §+!c§.§'j§;
   import §+!c§.§9"H§;
   import §+!c§.§;!=§;
   import §,%§.§<D§;
   import §0!C§.§ 3§;
   import §0D§.§3!R§;
   import §1!t§.§!!G§;
   import §1!t§.§!>§;
   import §1!t§.§""B§;
   import §2<§.§9!7§;
   import §30§.§'"+§;
   import §4y§.Item;
   import §4y§.§]"6§;
   import §5!Y§.§9"6§;
   import §5!Y§.Popup;
   import §5!Y§.StatePopupManager;
   import §59§.§#l§;
   import §59§.§="C§;
   import §6!H§.§6!e§;
   import §9@§.§4d§;
   import §9@§.§@q§;
   import §<w§.§9"?§;
   import §<w§.§`h§;
   import §=!@§.§1!l§;
   import §@!%§.§#!$§;
   import §]!w§.§'G§;
   import §]!w§.§9!x§;
   import §]!w§.§[!X§;
   import §]]§.§1"2§;
   import §^!o§.§^"$§;
   import §`!6§.§+"O§;
   import §`"%§.§`_§;
   import com.rovio.assets.§?q§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.geom.Matrix;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class §+"@§ extends Popup implements §&!l§, §4d§
   {
      
      private static var §&"&§:Class;
      
      public static var §!O§:String;
      
      private static var §+E§:Array;
      
      public static const STATE_NAME:String = "CreatorState";
      
      private static var §8!]§:String;
      
      public static var §6a§:Array;
      
      private static var §!!0§:§'G§;
      
      private static var §2!;§:Boolean = true;
      
      public static var §"!T§:Array;
      
      public static var §3P§:URLLoader;
      
      private static const §0"B§:String = "In-app Shop Avatars";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §&"&§ = §2N§;
            while(true)
            {
               §+E§ = [{
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
               },{
                  "a":true,
                  "id":"B20010",
                  "p":0,
                  "star":600
               }];
               loop1:
               while(true)
               {
                  STATE_NAME = "CreatorState";
                  while(true)
                  {
                     §2!;§ = true;
                     addr62:
                     while(_loc2_)
                     {
                        if(_loc2_)
                        {
                           continue;
                        }
                        continue loop1;
                     }
                  }
               }
               addr40:
               if(!(_loc2_ || _loc2_))
               {
                  continue;
               }
               return;
               addr47:
            }
         }
         while(true)
         {
            §0"B§ = "In-app Shop Avatars";
            if(!(_loc1_ && §+"@§))
            {
               §§goto(addr40);
            }
            §§goto(addr62);
         }
         §§goto(addr47);
      }
      
      private var §>"P§:StatePopupManager;
      
      private var §;"A§:Item = null;
      
      private var §-"B§:Boolean = false;
      
      private var §4"#§:String;
      
      private var §7"H§:Array;
      
      private var §7!,§:Array;
      
      private var §@v§:Boolean = false;
      
      private var §+f§:Boolean = false;
      
      private var §2"@§:§`_§;
      
      private var §?u§:§""X§;
      
      private var §]!h§:String;
      
      private var §?"V§:String;
      
      private var §4!u§:§6!F§;
      
      private var §0"-§:Boolean;
      
      public function §+"@§(param1:§`_§, param2:StatePopupManager, param3:String = null, param4:Boolean = false)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            this.§7"H§ = [];
            loop0:
            while(true)
            {
               this.§7!,§ = [];
               loop1:
               while(true)
               {
                  this.§>"P§ = param2;
                  loop2:
                  while(true)
                  {
                     super(§9"H§.§5!h§(§&"&§),param1);
                     loop3:
                     while(true)
                     {
                        if(param3)
                        {
                           continue loop1;
                        }
                        loop6:
                        while(true)
                        {
                           this.§>"P§.addEventListener(§6!e§.§1" §,this.onUiInteraction);
                           addr208:
                           addr239:
                           loop7:
                           for(; _loc6_ || param3; if(_loc5_ && this)
                           {
                              continue;
                           },§§push(param4),if(_loc6_ || param2)
                           {
                              §§push(Boolean(§§pop()));
                           },if(_loc6_ || param3)
                           {
                              §§goto(addr52);
                           },§§goto(addr99))
                           {
                              this.§2"@§ = param1;
                              loop8:
                              while(true)
                              {
                                 §§push((AngryBirdsFP11.sUserProgress as §#!$§).§,"F§("1000-2"));
                                 loop9:
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       §§push(this.§2"@§);
                                       if(!(_loc5_ && param1))
                                       {
                                          §§push("ButtonEasterEgg2");
                                          if(!_loc5_)
                                          {
                                             §§push(§§pop().getItemByName(§§pop()));
                                             if(_loc6_)
                                             {
                                                §§push(true);
                                                if(!(_loc5_ && param2))
                                                {
                                                   §§pop().setVisibility(§§pop());
                                                   loop10:
                                                   while(true)
                                                   {
                                                      loop11:
                                                      while(true)
                                                      {
                                                         §!O§ = AngryBirdsFP11.§?8§;
                                                         loop12:
                                                         while(true)
                                                         {
                                                            if(§!!0§ != null)
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(§3P§ == null);
                                                                  loop16:
                                                                  while(true)
                                                                  {
                                                                     if(!§§pop())
                                                                     {
                                                                        while(_loc6_)
                                                                        {
                                                                           §§pop();
                                                                           while(true)
                                                                           {
                                                                              if(!_loc5_)
                                                                              {
                                                                                 continue loop7;
                                                                              }
                                                                           }
                                                                           continue loop16;
                                                                        }
                                                                        continue loop9;
                                                                        addr99:
                                                                     }
                                                                     addr59:
                                                                     loop19:
                                                                     while(§§pop())
                                                                     {
                                                                        if(!_loc5_)
                                                                        {
                                                                           if(_loc6_)
                                                                           {
                                                                              if(_loc6_)
                                                                              {
                                                                                 continue loop0;
                                                                              }
                                                                              continue loop2;
                                                                           }
                                                                           §§goto(addr102);
                                                                        }
                                                                        else
                                                                        {
                                                                           addr76:
                                                                           loop21:
                                                                           while(true)
                                                                           {
                                                                              if(_loc6_ || this)
                                                                              {
                                                                                 if(_loc6_)
                                                                                 {
                                                                                    addr85:
                                                                                    if(!(_loc5_ && param2))
                                                                                    {
                                                                                       addr92:
                                                                                       break loop19;
                                                                                    }
                                                                                    continue loop1;
                                                                                 }
                                                                                 addr186:
                                                                                 while(!_loc5_)
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(this.§2"@§);
                                                                                       addr190:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push("ButtonEasterEgg2");
                                                                                          addr191:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop().getItemByName(§§pop()));
                                                                                             addr192:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(false);
                                                                                                addr193:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§pop().setVisibility(§§pop());
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 continue loop3;
                                                                              }
                                                                              addr126:
                                                                              while(!_loc5_)
                                                                              {
                                                                                 §!!0§ = new §'G§();
                                                                                 while(true)
                                                                                 {
                                                                                    if(!_loc5_)
                                                                                    {
                                                                                       if(!_loc6_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       continue loop8;
                                                                                    }
                                                                                    continue loop10;
                                                                                 }
                                                                                 continue loop21;
                                                                              }
                                                                              continue loop12;
                                                                              while(true)
                                                                              {
                                                                                 continue loop11;
                                                                              }
                                                                           }
                                                                           addr76:
                                                                        }
                                                                        §§goto(addr132);
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        this.§=0§();
                                                                        if(_loc6_ || param3)
                                                                        {
                                                                           break;
                                                                        }
                                                                        §§goto(addr76);
                                                                        §§goto(addr92);
                                                                     }
                                                                     return;
                                                                     §§goto(addr132);
                                                                  }
                                                               }
                                                               continue loop0;
                                                               addr93:
                                                            }
                                                            §§goto(addr126);
                                                         }
                                                      }
                                                   }
                                                }
                                                §§goto(addr193);
                                             }
                                             §§goto(addr192);
                                          }
                                          §§goto(addr191);
                                       }
                                       §§goto(addr190);
                                    }
                                    §§goto(addr186);
                                 }
                              }
                           }
                           while(true)
                           {
                              continue loop6;
                              §§goto(addr208);
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr188);
      }
      
      public static function §4"M§(param1:String) : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:Object = null;
         var _loc3_:int = 0;
         var _loc4_:* = §6a§;
         while(true)
         {
            for each(_loc2_ in _loc4_)
            {
               if(_loc6_ && param1)
               {
                  break;
               }
               if(_loc2_.itemId == param1)
               {
                  if(_loc5_)
                  {
                     break;
                  }
               }
            }
            return false;
         }
         return true;
      }
      
      public static function §4!x§(param1:String) : int
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:Object = null;
         var _loc3_:int = 0;
         var _loc4_:* = §6a§;
         while(true)
         {
            for each(_loc2_ in _loc4_)
            {
               if(!(_loc5_ || _loc2_))
               {
                  continue;
               }
               §§push(_loc2_.itemId == param1);
               if(_loc5_ || _loc2_)
               {
                  if(§§pop())
                  {
                     if(!(_loc6_ && §+"@§))
                     {
                        addr78:
                        §§pop();
                        if(_loc6_)
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
                  §§goto(addr84);
               }
               §§goto(addr78);
            }
            return 0;
         }
         return _loc2_.price;
      }
      
      public static function §%">§(param1:String) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:Object = null;
         var _loc3_:int = 0;
         var _loc4_:* = §6a§;
         while(true)
         {
            for each(_loc2_ in _loc4_)
            {
               if(!(_loc6_ || _loc2_))
               {
                  continue;
               }
               §§push(_loc2_.itemId == param1);
               if(!(_loc5_ && _loc3_))
               {
                  if(§§pop())
                  {
                     if(!_loc5_)
                     {
                        addr74:
                        §§pop();
                        if(_loc5_)
                        {
                           break;
                        }
                        addr80:
                        if(!_loc2_.available)
                        {
                           if(!_loc5_)
                           {
                              break;
                           }
                        }
                        continue;
                     }
                  }
                  §§goto(addr80);
               }
               §§goto(addr74);
            }
            return false;
         }
         return _loc2_.sale;
      }
      
      public static function §]!V§(param1:String) : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:Object = null;
         var _loc3_:int = 0;
         var _loc4_:* = §6a§;
         while(true)
         {
            for each(_loc2_ in _loc4_)
            {
               if(!(_loc5_ || _loc2_))
               {
                  continue;
               }
               §§push(_loc2_.itemId == param1);
               if(_loc5_)
               {
                  if(§§pop())
                  {
                     if(_loc5_ || _loc2_)
                     {
                        addr73:
                        §§pop();
                        if(!(_loc5_ || _loc2_))
                        {
                           break;
                        }
                        addr84:
                        if(!_loc2_.available)
                        {
                           if(_loc5_)
                           {
                              break;
                           }
                        }
                        continue;
                     }
                  }
                  §§goto(addr84);
               }
               §§goto(addr73);
            }
            return false;
         }
         return _loc2_.limited;
      }
      
      public static function §'!5§(param1:String) : int
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:Object = null;
         for each(_loc2_ in §6a§)
         {
            if(_loc6_)
            {
               if(_loc2_.itemId == param1)
               {
                  if(!_loc5_)
                  {
                     return _loc2_.starPrice;
                  }
               }
            }
         }
         return 0;
      }
      
      public static function §8!c§(param1:int, param2:int) : String
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:Object = null;
         var _loc4_:int = 0;
         var _loc5_:* = §+E§;
         while(true)
         {
            for each(_loc3_ in _loc5_)
            {
               if(!_loc7_)
               {
                  continue;
               }
               §§push(param2);
               if(_loc7_)
               {
                  §§push(§§pop() >= _loc3_.s);
                  if(!_loc6_)
                  {
                     if(§§pop())
                     {
                        if(!(_loc6_ && param2))
                        {
                           §§pop();
                           if(_loc6_)
                           {
                              continue;
                           }
                           addr75:
                           §§push(param1 < _loc3_.s);
                        }
                     }
                  }
                  if(§§pop())
                  {
                     if(_loc7_ || §+"@§)
                     {
                        break;
                     }
                  }
                  continue;
               }
               §§goto(addr75);
            }
            return "";
         }
         return _loc3_.id;
      }
      
      public function §?!f§(param1:§6!F§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§4!u§ = param1;
         }
      }
      
      public function §!U§(param1:§6!F§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            param1.dispose();
         }
         param1 = null;
      }
      
      public function get walletContainer() : Sprite
      {
         return mClip.AvatarCreatorContainer.walletContainerClip;
      }
      
      public function get §;"Z§() : §6!F§
      {
         return this.§4!u§;
      }
      
      private function §=0§() : void
      {
      }
      
      private function §[!#§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc1_)
         {
            this.§2"@§.getItemByName("WaitingForReply").setVisibility(true);
         }
         var _loc1_:URLRequest = §9!7§.§,!l§(§!O§ + "/getavatarparts");
         if(_loc3_ || _loc1_)
         {
            _loc1_.method = URLRequestMethod.POST;
            while(true)
            {
               §3P§ = new URLLoader();
               loop2:
               for(; !(_loc2_ && _loc3_); if(_loc3_ || _loc1_)
               {
                  return;
               })
               {
                  §3P§.addEventListener(IOErrorEvent.IO_ERROR,this.§]!^§);
                  while(!_loc2_)
                  {
                     §3P§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§2!q§);
                     do
                     {
                        §3P§.load(_loc1_);
                     }
                     while(_loc2_);
                     
                     if(!_loc2_)
                     {
                        continue loop2;
                     }
                  }
                  while(true)
                  {
                     §3P§.addEventListener(Event.COMPLETE,this.onComplete);
                     continue loop2;
                  }
               }
            }
         }
         §§goto(addr123);
      }
      
      protected function §2!q§(param1:SecurityErrorEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            §9"6§.§#!o§();
         }
         do
         {
            §3P§ = null;
         }
         while(!(_loc3_ || this));
         
      }
      
      private function §]!^§(param1:IOErrorEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §9"6§.§#!o§();
         }
         do
         {
            §3P§ = null;
         }
         while(!_loc2_);
         
      }
      
      private function onComplete(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            §"!T§ = JSON.parse(param1.currentTarget.data) as Array;
         }
         loop0:
         for(; this.§-"B§; if(!(_loc3_ && this))
         {
            §§goto(addr76);
         },break)
         {
            do
            {
               this.§!!o§();
               while(true)
               {
                  if(_loc2_)
                  {
                     if(_loc3_ && _loc2_)
                     {
                        break;
                     }
                     this.§^F§();
                     if(_loc2_)
                     {
                        return;
                     }
                     continue;
                  }
                  continue loop0;
               }
               return;
            }
            while(!_loc3_);
            
         }
         this.§+f§ = true;
         §§goto(addr86);
      }
      
      private function §!!o§() : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc2_:Object = null;
         var _loc3_:§7!t§ = null;
         var _loc4_:Item = null;
         var _loc5_:Object = null;
         var _loc1_:Array = [];
         if(!_loc8_)
         {
            §§push(this.§2"@§);
            if(!_loc8_)
            {
               if(§§pop())
               {
                  if(_loc9_)
                  {
                     addr43:
                     this.§2"@§.getItemByName("WaitingForReply").setVisibility(false);
                  }
               }
               for each(_loc2_ in §"!T§)
               {
                  if(_loc9_)
                  {
                     this.§?!A§(_loc2_,§+"@§.§+E§);
                  }
                  if(_loc4_ = §<D§.§&`§(_loc2_.id))
                  {
                     if(_loc9_ || this)
                     {
                        _loc5_ = {
                           "itemId":_loc4_.§&N§,
                           "price":_loc2_.p,
                           "available":_loc2_.a,
                           "starPrice":_loc2_.star,
                           "limited":_loc2_.l,
                           "sale":_loc2_.s
                        };
                        if(!_loc8_)
                        {
                           _loc1_.push(_loc5_);
                           addr117:
                           _loc2_.a;
                           if(!(_loc9_ || this))
                           {
                              continue;
                           }
                           _loc2_.id;
                           if(!_loc9_)
                           {
                              continue;
                           }
                        }
                        §§goto(addr117);
                     }
                     _loc2_.p;
                     continue;
                  }
                  §§goto(addr117);
               }
               if(_loc9_)
               {
                  §6a§ = _loc1_;
               }
               _loc3_ = this.§2"@§.getItemByName("Repeater_Items") as §7!t§;
               if(_loc9_)
               {
                  _loc3_.§%%§(null,§9!x§);
                  do
                  {
                     this.§2"@§.§+"I§("Repeater_Items","Repeater_Items_Tab_0");
                  }
                  while(_loc8_ && _loc1_);
                  
               }
               return;
            }
         }
         §§goto(addr43);
      }
      
      private function §?!A§(param1:Object, param2:Array) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:Object = null;
         for each(_loc3_ in param2)
         {
            if(_loc7_ || param1)
            {
               if(param1.id == _loc3_.id)
               {
                  if(_loc7_ || _loc3_)
                  {
                     addr71:
                     param1.p = _loc3_.p;
                     if(!_loc7_)
                     {
                        continue;
                     }
                  }
                  param1.star = _loc3_.star;
               }
               continue;
            }
            §§goto(addr71);
         }
      }
      
      private function §<q§(param1:DisplayObjectContainer, param2:Number = 1, param3:int = 0, param4:int = 0) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!(_loc6_ && param1))
         {
            §§push(§!!0§);
            if(!_loc6_)
            {
               if(§§pop())
               {
                  if(_loc7_)
                  {
                     §§push(§!!0§);
                     if(!(_loc6_ && param2))
                     {
                        if(§§pop().parent)
                        {
                           if(_loc7_ || param3)
                           {
                              §§push(§!!0§);
                              if(_loc7_)
                              {
                                 addr50:
                                 if(§§pop().parent.contains(§!!0§))
                                 {
                                    if(_loc7_ || param3)
                                    {
                                       §§push(§!!0§);
                                       if(_loc7_ || param1)
                                       {
                                          §§pop().parent.removeChild(§!!0§);
                                          if(_loc7_ || param3)
                                          {
                                             addr89:
                                             param1.addChild(§!!0§);
                                             if(_loc7_ || param3)
                                             {
                                                §§push(§!!0§);
                                                if(_loc7_ || param2)
                                                {
                                                   addr107:
                                                   §§pop().scaleX = §!!0§.scaleY = param2;
                                                   if(!(_loc6_ && param2))
                                                   {
                                                      §§push(§!!0§);
                                                      loop3:
                                                      while(true)
                                                      {
                                                         §§push(param3);
                                                         addr155:
                                                         loop1:
                                                         while(true)
                                                         {
                                                            §§pop().x = §§pop();
                                                            addr156:
                                                            while(true)
                                                            {
                                                               §§push(§!!0§);
                                                               if(_loc6_ && param3)
                                                               {
                                                                  continue loop3;
                                                               }
                                                               continue loop1;
                                                            }
                                                         }
                                                      }
                                                      addr132:
                                                   }
                                                   §§goto(addr156);
                                                }
                                             }
                                             return;
                                             addr152:
                                          }
                                          §§goto(addr156);
                                       }
                                    }
                                    §§goto(addr152);
                                 }
                                 §§goto(addr89);
                              }
                              while(true)
                              {
                                 §§push(param4);
                                 if(_loc7_)
                                 {
                                    §§pop().y = §§pop();
                                    if(!_loc6_)
                                    {
                                       break;
                                    }
                                    continue;
                                 }
                                 §§goto(addr155);
                              }
                              §§goto(addr89);
                           }
                           §§goto(addr156);
                        }
                        §§goto(addr89);
                     }
                     §§goto(addr50);
                  }
                  §§goto(addr132);
               }
               §§goto(addr89);
            }
            §§goto(addr107);
         }
         §§goto(addr89);
      }
      
      private function §^F§() : void
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc5_:§^n§ = null;
         var _loc6_:Array = null;
         var _loc7_:§[!X§ = null;
         var _loc8_:§^n§ = null;
         var _loc9_:§7!t§ = null;
         if(!(_loc10_ && _loc1_))
         {
            this.§-"B§ = true;
         }
         var _loc1_:§7!t§ = this.§2"@§.getItemByName("Repeater_Tabs") as §7!t§;
         if(_loc11_)
         {
            _loc1_.§%%§(null,§9!x§);
            if(_loc11_)
            {
               addr58:
               if(§6a§ == null)
               {
                  if(!(_loc10_ && this))
                  {
                     §§goto(addr68);
                  }
               }
               §§push((AngryBirdsFP11.sUserProgress as §#!$§).§5!0§);
               if(_loc11_ || this)
               {
                  §§push(§§pop());
               }
               var _loc2_:* = §§pop();
               §§push((AngryBirdsFP11.sUserProgress as §#!$§).avatarString);
               if(!(_loc10_ && _loc3_))
               {
                  §§push(§§pop());
               }
               var _loc3_:* = §§pop();
               if(_loc11_ || _loc1_)
               {
                  §§push(_loc3_);
                  if(!(_loc10_ && _loc3_))
                  {
                     §§push(§§pop() == null);
                     if(!(_loc10_ && this))
                     {
                        if(!§§pop())
                        {
                           if(_loc11_ || _loc1_)
                           {
                              addr130:
                              §§pop();
                              addr139:
                              if(!_loc10_)
                              {
                                 addr134:
                                 §§push(_loc3_ == "");
                              }
                              this.§@v§ = true;
                              var _loc4_:§!"O§;
                              (_loc4_ = new §!"O§(_loc2_,false,§!"O§.§'"O§)).x = 13;
                              if(_loc11_)
                              {
                                 _loc4_.y = 9;
                                 if(!(_loc10_ && _loc3_))
                                 {
                                    §§push(this.§2"@§);
                                    if(_loc11_)
                                    {
                                       §§push("SetFacebookProfileButton");
                                       if(_loc11_ || _loc3_)
                                       {
                                          §§push(§§pop().getItemByName(§§pop()));
                                          if(!_loc10_)
                                          {
                                             §§pop().mClip.addChild(_loc4_);
                                             if(_loc11_ || _loc3_)
                                             {
                                                addr190:
                                                if(§2!;§)
                                                {
                                                   addr192:
                                                   §§push(this.§2"@§);
                                                   if(_loc11_)
                                                   {
                                                      §§push("AvatarHolderClip");
                                                      if(!(_loc10_ && _loc2_))
                                                      {
                                                         addr214:
                                                         §§push(§§pop().getItemByName(§§pop()));
                                                         if(_loc11_)
                                                         {
                                                            _loc5_ = §§pop() as §^n§;
                                                            if(!_loc10_)
                                                            {
                                                               this.§<q§(_loc5_.mClip);
                                                               if(_loc11_)
                                                               {
                                                                  §§push(_loc3_);
                                                                  if(_loc11_ || _loc3_)
                                                                  {
                                                                     §§push(§§pop() == "");
                                                                     if(!(_loc10_ && _loc1_))
                                                                     {
                                                                        §§push(!§§pop());
                                                                        if(!(_loc10_ && _loc1_))
                                                                        {
                                                                           addr254:
                                                                           if(§§pop())
                                                                           {
                                                                              if(!(_loc10_ && this))
                                                                              {
                                                                                 addr263:
                                                                                 §§pop();
                                                                                 if(_loc11_ || _loc1_)
                                                                                 {
                                                                                    addr272:
                                                                                    §§push(_loc3_ == null);
                                                                                    if(_loc11_)
                                                                                    {
                                                                                       addr277:
                                                                                       if(!§§pop())
                                                                                       {
                                                                                          if(!(_loc10_ && _loc3_))
                                                                                          {
                                                                                             addr285:
                                                                                             _loc6_ = §<D§.§'!^§(_loc3_);
                                                                                             _loc7_ = §!!0§.§`!Y§(_loc6_);
                                                                                             if(!(_loc10_ && _loc3_))
                                                                                             {
                                                                                                §]"1§.§&"5§.avatar = _loc7_;
                                                                                                if(!(_loc10_ && _loc3_))
                                                                                                {
                                                                                                   addr328:
                                                                                                   (this.§2"@§ as §+"O§).§#"J§();
                                                                                                   if(_loc11_ || _loc1_)
                                                                                                   {
                                                                                                      §2!;§ = false;
                                                                                                      if(_loc11_)
                                                                                                      {
                                                                                                         addr417:
                                                                                                         this.§!!Y§(_loc1_);
                                                                                                         if(!_loc10_)
                                                                                                         {
                                                                                                            addr422:
                                                                                                            this.§#]§();
                                                                                                         }
                                                                                                      }
                                                                                                      return;
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr422);
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          this.§""L§(§]"1§.§3!=§);
                                                                                          if(_loc11_ || _loc3_)
                                                                                          {
                                                                                             addr325:
                                                                                             §!!0§.§[!R§("backgrounds1");
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr328);
                                                                                    }
                                                                                    §§goto(addr277);
                                                                                 }
                                                                                 §§goto(addr325);
                                                                              }
                                                                           }
                                                                           §§goto(addr277);
                                                                        }
                                                                        §§goto(addr263);
                                                                     }
                                                                     §§goto(addr254);
                                                                  }
                                                                  §§goto(addr272);
                                                               }
                                                            }
                                                            §§goto(addr285);
                                                         }
                                                         else
                                                         {
                                                            addr350:
                                                            _loc8_ = §§pop() as §^n§;
                                                            if(_loc11_ || this)
                                                            {
                                                               this.§<q§(_loc8_.mClip);
                                                               while(true)
                                                               {
                                                                  addr379:
                                                                  while(true)
                                                                  {
                                                                     §§push(§!!0§);
                                                                     addr381:
                                                                     while(true)
                                                                     {
                                                                        §§pop().§1!R§();
                                                                     }
                                                                  }
                                                               }
                                                               addr397:
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(§!!0§);
                                                               if(_loc11_)
                                                               {
                                                                  §§pop().§6[§.§ null§();
                                                                  if(_loc10_ && _loc1_)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  if(_loc11_)
                                                                  {
                                                                     if(true)
                                                                     {
                                                                        break;
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr397);
                                                                  }
                                                                  §§goto(addr379);
                                                               }
                                                               §§goto(addr381);
                                                            }
                                                            (_loc9_ = this.§2"@§.getItemByName("Repeater_Items") as §7!t§).§%%§(null,§9!x§);
                                                            if(_loc11_)
                                                            {
                                                               (this.§2"@§ as §+"O§).§#"J§();
                                                            }
                                                         }
                                                         §§goto(addr417);
                                                      }
                                                      §§goto(addr350);
                                                   }
                                                   else
                                                   {
                                                      addr348:
                                                      §§push("AvatarHolderClip");
                                                   }
                                                   §§push(§§pop().getItemByName(§§pop()));
                                                }
                                                else
                                                {
                                                   §§goto(addr348);
                                                   §§push(this.§2"@§);
                                                }
                                                §§goto(addr348);
                                             }
                                             §§goto(addr192);
                                          }
                                          §§goto(addr350);
                                       }
                                       §§goto(addr214);
                                    }
                                    §§goto(addr348);
                                 }
                                 §§goto(addr190);
                              }
                              §§goto(addr192);
                           }
                        }
                        if(§§pop())
                        {
                           if(!_loc10_)
                           {
                              §§goto(addr139);
                           }
                        }
                        §§goto(addr139);
                     }
                     §§goto(addr130);
                  }
                  §§goto(addr134);
               }
               §§goto(addr130);
            }
            addr68:
            return;
         }
         §§goto(addr58);
      }
      
      private function §!!Y§(param1:§7!t§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:* = 0;
         var _loc3_:* = null;
         if(_loc5_ || _loc3_)
         {
            §§push(this.§]!h§);
            loop0:
            while(§§pop())
            {
               loop1:
               while(true)
               {
                  §§push(this.§2"@§);
                  loop2:
                  while(true)
                  {
                     §§push((§§pop() as §+"O§).§ <§(this.§]!h§));
                     if(!_loc4_)
                     {
                        §§push(int(§§pop()));
                     }
                     while(true)
                     {
                        _loc2_ = §§pop();
                        loop4:
                        while(true)
                        {
                           §§push(_loc2_);
                           if(_loc5_ || param1)
                           {
                              if(§§pop() != -1)
                              {
                                 while(true)
                                 {
                                    §§push(this.§]!h§);
                                    if(!_loc4_)
                                    {
                                       if(_loc4_)
                                       {
                                          break;
                                       }
                                       §§push(§§pop().substr("CATEGORY".length));
                                    }
                                    _loc3_ = §§pop();
                                    loop6:
                                    while(_loc5_ || param1)
                                    {
                                       if(_loc4_ && param1)
                                       {
                                          continue loop1;
                                       }
                                       while(true)
                                       {
                                          §§push(this.§2"@§);
                                          loop12:
                                          while(true)
                                          {
                                             if(!(_loc4_ && _loc2_))
                                             {
                                                §§pop().setText(_loc3_,"Textfield_CategoryTitle");
                                                loop10:
                                                while(true)
                                                {
                                                   §§push(this.§2"@§);
                                                   if(_loc4_)
                                                   {
                                                      continue loop12;
                                                   }
                                                   §§push("Repeater_Items");
                                                   §§push("Repeater_Items_Tab_");
                                                   if(_loc5_ || _loc2_)
                                                   {
                                                      §§push(§§pop() + _loc2_);
                                                   }
                                                   §§pop().§+"I§(§§pop(),§§pop());
                                                   while(true)
                                                   {
                                                      if(§]"1§.§&"5§.items.§`!s§.length > 0)
                                                      {
                                                         if(_loc4_)
                                                         {
                                                            break;
                                                         }
                                                         if(!_loc4_)
                                                         {
                                                            if(_loc5_)
                                                            {
                                                               param1.§0j§("Repeater_Tabs_Tab_0").§1!a§(§]"1§.§&"5§.items.§`!s§[_loc2_].name as String);
                                                               break;
                                                            }
                                                            continue loop6;
                                                         }
                                                         continue loop10;
                                                      }
                                                   }
                                                   while(!_loc5_)
                                                   {
                                                      §§goto(addr100);
                                                   }
                                                   addr100:
                                                }
                                             }
                                             continue loop2;
                                          }
                                       }
                                    }
                                    continue loop4;
                                 }
                                 continue loop0;
                                 addr126:
                              }
                              while(true)
                              {
                                 this.§]!h§ = null;
                                 if(!_loc4_)
                                 {
                                    if(_loc5_)
                                    {
                                       break;
                                    }
                                    §§goto(addr126);
                                 }
                                 §§goto(addr70);
                              }
                              break loop0;
                           }
                           break;
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr161);
      }
      
      private function onUiInteraction(param1:§6!e§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.uiInteractionHandler(param1.§0!!§,param1.§,§,param1.§`]§);
         }
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§""B§) : void
      {
         var _loc27_:Boolean = false;
         var _loc28_:Boolean = true;
         var _loc4_:§!>§ = null;
         var _loc5_:int = 0;
         var _loc6_:String = null;
         var _loc7_:§4!w§ = null;
         var _loc8_:* = NaN;
         var _loc9_:String = null;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:§9!x§ = null;
         var _loc13_:String = null;
         var _loc14_:int = 0;
         var _loc15_:§9!x§ = null;
         var _loc16_:String = null;
         var _loc17_:int = 0;
         var _loc18_:Array = null;
         var _loc19_:§="C§ = null;
         var _loc20_:§1"2§ = null;
         var _loc21_:String = null;
         var _loc22_:Item = null;
         var _loc23_:String = null;
         var _loc24_:String = null;
         if(_loc28_ || param3)
         {
            if(param3 is §!>§)
            {
               addr85:
               _loc4_ = param3 as §!>§;
               if(!_loc27_)
               {
                  §§push(param2);
                  if(_loc28_ || param3)
                  {
                     if(§§pop().length > 1)
                     {
                        if(_loc28_)
                        {
                           §§push(_loc4_.mParentContainer);
                           if(!(_loc27_ && param3))
                           {
                              if(§§pop() is §+"6§)
                              {
                                 loop43:
                                 while(true)
                                 {
                                    §§push(_loc4_.mParentContainer);
                                    addr131:
                                    while(true)
                                    {
                                       if(!(_loc27_ && param1))
                                       {
                                          §§push(this.§2"@§);
                                          if(_loc27_ && param1)
                                          {
                                             break;
                                          }
                                          continue;
                                       }
                                       continue loop43;
                                    }
                                    while(!_loc27_)
                                    {
                                       §§pop().setText(_loc6_,"Textfield_CategoryTitle");
                                       §§goto(addr131);
                                    }
                                    §§goto(addr177);
                                 }
                                 addr164:
                              }
                              §§goto(addr349);
                           }
                           while(true)
                           {
                              if(((§§pop() as §+"6§).mParentContainer as §7!t§).mName.toUpperCase() != "REPEATER_TABS")
                              {
                                 if(((_loc4_.mParentContainer as §+"6§).mParentContainer as §7!t§).mName.toUpperCase() == "REPEATER_ITEMS")
                                 {
                                    loop45:
                                    while(true)
                                    {
                                       §§push(Number(param2.indexOf("REMOVE_")));
                                       loop46:
                                       while(true)
                                       {
                                          §§push(_loc8_ = §§pop());
                                          loop47:
                                          while(true)
                                          {
                                             §§push(-1);
                                             while(true)
                                             {
                                                if(§§pop() != §§pop())
                                                {
                                                   §§push(_loc8_);
                                                   if(!_loc27_)
                                                   {
                                                      if(!(_loc27_ && param3))
                                                      {
                                                         §§push(0);
                                                         if(_loc28_ || param2)
                                                         {
                                                            if(§§pop() == §§pop())
                                                            {
                                                               if(_loc28_ || this)
                                                               {
                                                                  if(_loc27_)
                                                                  {
                                                                     continue loop45;
                                                                  }
                                                                  if(!_loc27_)
                                                                  {
                                                                     §§goto(addr306);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr348);
                                                                  }
                                                               }
                                                               §§goto(addr312);
                                                            }
                                                            break;
                                                         }
                                                         continue;
                                                      }
                                                      continue loop46;
                                                   }
                                                   continue loop47;
                                                }
                                                if(_loc28_)
                                                {
                                                   this.§""L§(param2);
                                                }
                                                §§goto(addr339);
                                             }
                                          }
                                       }
                                    }
                                 }
                                 break;
                              }
                              §§goto(addr175);
                              §§goto(addr257);
                              §§goto(addr164);
                           }
                           §§goto(addr349);
                        }
                        §§goto(addr175);
                     }
                     §§goto(addr349);
                  }
                  §§goto(addr223);
               }
               §§goto(addr121);
            }
            §§goto(addr349);
         }
         §§goto(addr85);
      }
      
      private function §`x§(param1:String) : String
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:Object = null;
         for each(_loc2_ in §]"1§.§&"5§.avatar.§2W§())
         {
            if(_loc6_)
            {
               if(_loc2_.categorySID + _loc2_.sId == param1)
               {
                  if(_loc6_)
                  {
                     return _loc2_.name as String;
                  }
               }
            }
         }
         return "";
      }
      
      private function §+z§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §@q§.§`"J§();
         }
         while(true)
         {
            AngryBirdsFP11.§>m§.§^X§();
            while(!_loc2_)
            {
               §'"+§.addCallback("permissionRequestComplete",this.permissionRequestComplete);
               while(!(_loc2_ && _loc1_))
               {
                  §'"+§.§'!#§("askForPublishStreamPermission");
                  if(!_loc2_)
                  {
                     return;
                  }
               }
            }
         }
      }
      
      private function permissionRequestComplete(param1:String) : void
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc2_:§""X§ = null;
         var _loc3_:int = 0;
         var _loc4_:BitmapData = null;
         var _loc5_:Matrix = null;
         var _loc6_:* = NaN;
         var _loc7_:§!>§ = null;
         var _loc8_:* = 0;
         var _loc9_:Bitmap = null;
         var _loc10_:DisplayObject = null;
         if(!(_loc11_ && this))
         {
            §@q§.§;"<§();
            while(true)
            {
               §'"+§.§"!6§("permissionRequestComplete",this.permissionRequestComplete);
               while(true)
               {
                  §§push(this.§2"@§);
                  while(true)
                  {
                     §§push("WaitingForReply");
                     addr144:
                     while(true)
                     {
                        §§push(§§pop().getItemByName(§§pop()));
                        addr145:
                        while(true)
                        {
                           §§push(false);
                           addr146:
                           while(true)
                           {
                              §§pop().setVisibility(§§pop());
                              addr157:
                              while(true)
                              {
                                 §§goto(addr97);
                              }
                           }
                        }
                     }
                  }
               }
               if(_loc11_ && _loc3_)
               {
                  continue;
               }
               while(true)
               {
                  if(false)
                  {
                     addr97:
                     §§goto(addr321);
                  }
                  else
                  {
                     _loc2_ = new §""X§();
                     if(_loc12_)
                     {
                        _loc2_.§#h§();
                        if(_loc12_ || _loc2_)
                        {
                           _loc3_ = 173;
                        }
                     }
                     _loc4_ = _loc2_.render(§]"1§.§&"5§.avatar.§9" §(),null,_loc3_);
                     _loc5_ = new Matrix();
                     if(!(_loc11_ && this))
                     {
                        §§push(_loc3_ / 100);
                        if(!(_loc11_ && _loc3_))
                        {
                           §§push(§§pop() / 2);
                           if(!_loc11_)
                           {
                              addr220:
                              §§push(Number(§§pop()));
                           }
                           _loc6_ = §§pop();
                           if(!_loc11_)
                           {
                              addr224:
                              _loc5_.scale(_loc6_,_loc6_);
                           }
                           _loc8_ = int((_loc7_ = this.§2"@§.getItemByName("ShareAvatarWindow")).mClip.numChildren - 1);
                           while(_loc8_ > 0)
                           {
                              if((_loc10_ = _loc7_.mClip.getChildAt(_loc8_)) is Bitmap)
                              {
                                 if(_loc11_ && param1)
                                 {
                                    continue;
                                 }
                                 _loc10_.parent.removeChild(_loc10_);
                                 if(_loc11_)
                                 {
                                    continue;
                                 }
                              }
                              §§push(_loc8_);
                              if(_loc12_ || _loc3_)
                              {
                                 §§push(§§pop() - 1);
                              }
                              _loc8_ = §§pop();
                           }
                           (_loc9_ = new Bitmap(_loc4_,"auto",true)).x = 110;
                           if(!(_loc11_ && param1))
                           {
                              _loc9_.y = 52;
                              if(!(_loc11_ && this))
                              {
                                 _loc7_.mClip.addChildAt(_loc9_,1);
                              }
                           }
                           §§goto(addr321);
                        }
                        §§goto(addr220);
                     }
                     §§goto(addr224);
                  }
                  return;
               }
               addr95:
            }
         }
         §§goto(addr95);
      }
      
      private function §@;§() : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         if(!(_loc10_ && this))
         {
            §§push(this.§2"@§);
            loop0:
            while(true)
            {
               §§push("AvatarSharing");
               loop1:
               while(true)
               {
                  §§push(§§pop().getItemByName(§§pop()));
                  while(true)
                  {
                     §§push(false);
                     loop3:
                     while(true)
                     {
                        §§pop().setVisibility(§§pop());
                        while(true)
                        {
                           while(true)
                           {
                              §§push(this.§2"@§);
                              loop6:
                              while(true)
                              {
                                 §§push("ShareAvatarWindow");
                                 loop7:
                                 while(!(_loc10_ && _loc3_))
                                 {
                                    §§push(§§pop().getItemByName(§§pop()));
                                    loop8:
                                    while(true)
                                    {
                                       §§push(false);
                                       addr87:
                                       while(!(_loc10_ && this))
                                       {
                                          §§pop().setVisibility(§§pop());
                                          while(true)
                                          {
                                             §§push(this.§2"@§);
                                             if(!(_loc9_ || _loc3_))
                                             {
                                                break;
                                             }
                                             if(_loc9_)
                                             {
                                                §§push("WaitingForReply");
                                                if(_loc9_ || this)
                                                {
                                                   continue loop8;
                                                }
                                                continue loop7;
                                             }
                                             continue loop0;
                                          }
                                          continue loop6;
                                       }
                                       continue loop3;
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
         §§goto(addr72);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super.deActivate();
         }
         loop0:
         do
         {
            this.§!U§(this.§4!u§);
            loop1:
            while(true)
            {
               this.§>"P§.removeEventListener(§6!e§.§1" §,this.onUiInteraction);
               do
               {
                  if(!this.§0"-§)
                  {
                     this.close();
                     if(!(_loc2_ || _loc1_))
                     {
                        continue;
                     }
                     if(!_loc1_)
                     {
                        if(_loc2_)
                        {
                           §§goto(addr20);
                        }
                        continue loop1;
                     }
                  }
                  preClose();
               }
               while(_loc1_);
               
               continue loop0;
            }
         }
         while(!(_loc2_ || _loc2_));
         
         addr20:
      }
      
      private function §&t§(param1:*) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§2"@§.getItemByName("WaitingForReply").setVisibility(false);
         }
      }
      
      private function §+#§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.§2"@§.getItemByName("WaitingForReply").setVisibility(false);
         }
      }
      
      override public function close() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            super.close();
            do
            {
               this.§-"B§ = false;
            }
            while(_loc2_);
            
         }
      }
      
      override public function open(param1:Boolean = true) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param1))
         {
            super.open(param1);
            while(true)
            {
               loop1:
               while(true)
               {
                  §@q§.§"C§();
                  do
                  {
                     §@q§.trackPageView(this);
                  }
                  while(!_loc4_);
                  
                  if(!_loc4_)
                  {
                     break;
                  }
                  while(false)
                  {
                     continue loop1;
                  }
                  var _loc2_:§^n§ = this.§2"@§.getItemByName("AvatarSavedAnimation") as §^n§;
                  if(!_loc3_)
                  {
                     _loc2_.setVisibility(false);
                     loop4:
                     while(true)
                     {
                        mClip.x = (mClip.stage.stageWidth - 750) / 2;
                        while(true)
                        {
                           mClip.y = (mClip.stage.stageHeight - 525) / 2;
                           while(true)
                           {
                              this.§?!f§(new §6!F§(this,true,true,false));
                              loop7:
                              for(; _loc4_; while(true)
                              {
                                 if(!(_loc4_ || param1))
                                 {
                                    continue loop7;
                                 }
                                 this.§!!o§();
                                 §§goto(addr124);
                              })
                              {
                                 if(_loc3_)
                                 {
                                    continue loop4;
                                 }
                                 §§push(this.§+f§);
                                 loop8:
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       while(true)
                                       {
                                          §]"1§.§&"5§.§]t§();
                                          while(true)
                                          {
                                             §§push(§!!0§);
                                             if(!_loc3_)
                                             {
                                                if(§§pop().§6[§ == null)
                                                {
                                                   while(_loc4_ || param1)
                                                   {
                                                      §§push(§!!0§);
                                                   }
                                                   continue;
                                                   addr101:
                                                }
                                                continue loop8;
                                             }
                                             while(true)
                                             {
                                                §§pop().§2!Y§(§]"1§.§&"5§.§0!;§());
                                                addr113:
                                                while(true)
                                                {
                                                   if(_loc4_)
                                                   {
                                                      addr115:
                                                      continue loop8;
                                                   }
                                                   continue loop7;
                                                }
                                             }
                                          }
                                       }
                                       addr116:
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr129);
               }
            }
         }
         §§goto(addr33);
      }
      
      private function §]E§(param1:Boolean) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:§]"6§ = null;
         var _loc3_:§9!x§ = null;
         for each(_loc2_ in §]"1§.§&"5§.items.§`!s§)
         {
            if(_loc6_)
            {
               §§push(_loc2_.name);
               if(!_loc7_)
               {
                  §§push(§§pop().toUpperCase() == "CATEGORYBIRDS");
                  if(_loc6_)
                  {
                     §§push(!§§pop());
                     if(_loc6_)
                     {
                        if(§§pop())
                        {
                           if(!_loc7_)
                           {
                              addr65:
                              §§pop();
                              if(!(_loc7_ && param1))
                              {
                                 addr75:
                                 §§push(_loc2_.name.toUpperCase() == "CATEGORYBACKGROUNDS");
                                 if(_loc6_)
                                 {
                                    addr91:
                                    if(§§pop())
                                    {
                                       continue;
                                    }
                                 }
                                 §§goto(addr91);
                              }
                              _loc3_ = this.§2"@§.getItemByName(_loc2_.name.toUpperCase()) as §9!x§;
                              if(_loc6_ || this)
                              {
                                 _loc3_.setVisibility(param1);
                              }
                              continue;
                           }
                        }
                     }
                     §§goto(addr91);
                  }
                  §§goto(addr65);
               }
            }
            §§goto(addr75);
         }
      }
      
      private function §6Y§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.§2"@§);
            loop0:
            while(true)
            {
               §§push("Button_Unequip");
               addr79:
               while(true)
               {
                  §§push(§§pop().getItemByName(§§pop()));
                  addr80:
                  while(true)
                  {
                     §§push(param1);
                     addr81:
                     while(true)
                     {
                        §§pop().setVisibility(§§pop());
                        continue loop0;
                     }
                  }
               }
            }
         }
         §§goto(addr75);
      }
      
      public function §#]§() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:String = null;
         var _loc4_:Item = null;
         var _loc1_:§7!t§ = this.§2"@§.getItemByName("Repeater_Items") as §7!t§;
         var _loc2_:* = Number(0);
         loop0:
         while(true)
         {
            if(_loc2_ >= §]"1§.§&"5§.items.§`!s§.length)
            {
               if(!_loc5_)
               {
                  break;
               }
               §§goto(addr219);
            }
            §§push(§]"1§.§&"5§);
            if(!_loc5_)
            {
               _loc3_ = §§pop().items.§`!s§[_loc2_].name;
               if(_loc5_)
               {
                  break;
               }
               §§push(§]"1§.§&"5§);
            }
            _loc4_ = §§pop().avatar.§>$§(_loc3_);
            if(!_loc5_)
            {
               §§push(_loc3_);
               if(_loc6_ || _loc3_)
               {
                  if(§§pop().toUpperCase() == "CATEGORYBIRDS")
                  {
                     loop1:
                     while(true)
                     {
                        §§push(_loc4_.§&N§);
                        addr200:
                        while(true)
                        {
                           if(§§pop().indexOf("GreenDay") > -1)
                           {
                              while(true)
                              {
                                 this.§]E§(false);
                                 loop13:
                                 while(true)
                                 {
                                    this.§6Y§(false);
                                    addr169:
                                    while(_loc5_ && _loc2_)
                                    {
                                       continue loop13;
                                    }
                                 }
                              }
                              addr204:
                           }
                           else
                           {
                              this.§]E§(true);
                              addr164:
                              while(true)
                              {
                                 this.§6Y§(true);
                                 addr143:
                                 while(_loc6_ || _loc2_)
                                 {
                                    continue loop1;
                                 }
                              }
                              addr164:
                           }
                           §§goto(addr164);
                           continue loop1;
                        }
                     }
                  }
                  while(true)
                  {
                     if(_loc4_ != null)
                     {
                        §§push(_loc1_);
                        §§push("Repeater_Items_Tab_");
                        if(_loc6_)
                        {
                           §§push(§§pop() + _loc2_);
                        }
                        §§push(§§pop().§0j§(§§pop()));
                        if(_loc6_)
                        {
                           §§push(_loc4_.§&N§);
                           if(!_loc5_)
                           {
                              §§pop().§1!a§(§§pop());
                              loop3:
                              while(true)
                              {
                                 if(_loc6_ || this)
                                 {
                                    if(_loc6_)
                                    {
                                       if(_loc6_ || this)
                                       {
                                          loop4:
                                          while(true)
                                          {
                                             §§push(_loc2_);
                                             if(_loc6_)
                                             {
                                                §§push(§§pop() + 1);
                                                if(!_loc5_)
                                                {
                                                   addr66:
                                                   §§push(Number(§§pop()));
                                                }
                                                _loc2_ = §§pop();
                                                if(_loc5_)
                                                {
                                                   continue loop3;
                                                }
                                                if(!_loc5_)
                                                {
                                                   if(_loc6_ || _loc1_)
                                                   {
                                                      if(true)
                                                      {
                                                         break;
                                                      }
                                                      continue;
                                                   }
                                                   §§goto(addr143);
                                                }
                                                else
                                                {
                                                   while(true)
                                                   {
                                                      §§push(_loc1_);
                                                      §§push("Repeater_Items_Tab_");
                                                      if(!_loc5_)
                                                      {
                                                         §§push(§§pop() + _loc2_);
                                                      }
                                                      §§push(§§pop().§0j§(§§pop()));
                                                      addr136:
                                                      while(true)
                                                      {
                                                         §§push(_loc3_);
                                                         addr137:
                                                         while(true)
                                                         {
                                                            §§pop().§1!a§(§§pop());
                                                            addr138:
                                                            while(true)
                                                            {
                                                               continue loop4;
                                                            }
                                                         }
                                                      }
                                                   }
                                                   addr129:
                                                }
                                             }
                                             §§goto(addr66);
                                          }
                                          continue loop0;
                                       }
                                       §§goto(addr204);
                                    }
                                    break;
                                 }
                                 §§goto(addr138);
                              }
                              §§goto(addr169);
                           }
                           §§goto(addr137);
                        }
                        §§goto(addr136);
                     }
                     §§goto(addr129);
                  }
               }
               §§goto(addr200);
            }
            §§goto(addr164);
         }
         this.§3Y§();
         addr219:
      }
      
      public function §?"$§(param1:§1!l§ = null) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc2_:§1"2§ = null;
         var _loc4_:* = null;
         var _loc5_:String = null;
         var _loc6_:Object = null;
         if(!(_loc10_ && _loc2_))
         {
            this.§2"@§.getItemByName("WaitingForReply").setVisibility(false);
            if(_loc9_ || this)
            {
               §§push(Boolean(param1));
               if(_loc9_ || param1)
               {
                  if(§§pop())
                  {
                     if(_loc9_)
                     {
                        §§pop();
                        if(_loc9_ || this)
                        {
                           addr73:
                           if(param1.currentTarget is §1"2§)
                           {
                              if(!_loc10_)
                              {
                                 addr76:
                                 _loc2_ = param1.currentTarget as §1"2§;
                              }
                              addr87:
                              var _loc3_:Array = new Array();
                              var _loc7_:int = 0;
                              var _loc8_:* = this.§7!,§;
                              while(§§hasnext(_loc8_,_loc7_))
                              {
                                 §§push(§§nextvalue(_loc7_,_loc8_));
                                 loop1:
                                 while(true)
                                 {
                                    _loc4_ = §§pop();
                                    addr151:
                                    while(true)
                                    {
                                       continue loop1;
                                    }
                                 }
                              }
                              if(_loc9_ || this)
                              {
                                 §@q§.trackTransactionItems(_loc2_.orderId,§0"B§,"1 x ",_loc3_);
                                 loop5:
                                 while(true)
                                 {
                                    this.§7!,§ = [];
                                    loop6:
                                    while(true)
                                    {
                                       §§push(Boolean(param1));
                                       if(_loc9_)
                                       {
                                          if(!§§pop())
                                          {
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   continue loop5;
                                                }
                                                loop9:
                                                while(true)
                                                {
                                                   this.§[!#§();
                                                   if(_loc9_)
                                                   {
                                                      if(_loc9_ || this)
                                                      {
                                                         break;
                                                      }
                                                      continue loop5;
                                                   }
                                                   addr259:
                                                   while(true)
                                                   {
                                                      continue loop9;
                                                   }
                                                }
                                                if(!_loc10_)
                                                {
                                                   break;
                                                }
                                                §§push(param1.currentTarget is §1"2§);
                                                addr275:
                                                continue loop6;
                                                if(_loc9_)
                                                {
                                                   continue;
                                                }
                                                addr267:
                                                while(true)
                                                {
                                                   §§pop();
                                                   continue loop6;
                                                }
                                                addr267:
                                             }
                                             return;
                                          }
                                       }
                                       §§goto(addr267);
                                    }
                                 }
                              }
                              §§goto(addr259);
                           }
                           §@q§.trackPageView(this,§@q§.§7!K§);
                        }
                        §§goto(addr87);
                     }
                  }
               }
               §§goto(addr73);
            }
         }
         §§goto(addr76);
      }
      
      private function §"t§(param1:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || _loc3_)
         {
            this.§?"V§ = this.§4"#§;
            if(!_loc4_)
            {
               this.§4"#§ = param1;
            }
         }
         §§push(§9!7§);
         §§push(§!O§ + "/saveavatar/");
         if(_loc5_)
         {
            §§push(§§pop() + param1);
         }
         var _loc2_:URLRequest = §§pop().§,!l§(§§pop());
         if(_loc5_ || param1)
         {
            _loc2_.method = URLRequestMethod.POST;
         }
         var _loc3_:URLLoader = new URLLoader();
         if(_loc5_)
         {
            _loc3_.addEventListener(Event.COMPLETE,this.§6%§);
         }
         loop0:
         while(true)
         {
            _loc3_.addEventListener(IOErrorEvent.IO_ERROR,this.§["+§);
            while(true)
            {
               _loc3_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§7+§);
               while(_loc5_)
               {
                  if(!_loc4_)
                  {
                     _loc3_.load(_loc2_);
                     if(!_loc4_)
                     {
                        return;
                     }
                     continue;
                     continue;
                  }
                  continue loop0;
               }
            }
         }
      }
      
      protected function §7+§(param1:SecurityErrorEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            §9"6§.§#!o§();
         }
      }
      
      private function §6%§(param1:Event) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc2_:Array = null;
         var _loc3_:* = null;
         var _loc4_:§^n§ = null;
         if(_loc8_ || param1)
         {
            §§push(this.§4"#§);
            if(!_loc7_)
            {
               if(§§pop() != null)
               {
                  loop4:
                  while(true)
                  {
                     (AngryBirdsFP11.sUserProgress as §#!$§).avatarString = this.§4"#§;
                     loop5:
                     while(true)
                     {
                        loop6:
                        while(true)
                        {
                           §9"?§.§"!V§(new §`h§(this.§4"#§,(AngryBirdsFP11.sUserProgress as §#!$§).§5!0§),true,true);
                           while(_loc8_)
                           {
                              § ! §.§6"K§(this.§4"#§);
                              if(_loc7_)
                              {
                                 continue;
                              }
                              if(_loc7_)
                              {
                                 break loop6;
                              }
                              if(false)
                              {
                                 continue loop6;
                              }
                              addr78:
                              _loc2_ = this.§4"#§.split("-");
                              var _loc5_:int = 0;
                              var _loc6_:* = _loc2_;
                              loop0:
                              while(§§hasnext(_loc6_,_loc5_))
                              {
                                 §§push(§§nextvalue(_loc5_,_loc6_));
                                 loop1:
                                 while(true)
                                 {
                                    _loc3_ = §§pop();
                                    loop2:
                                    while(true)
                                    {
                                       while(true)
                                       {
                                          §§push(this.§?"V§);
                                          if(_loc7_ && _loc3_)
                                          {
                                             break;
                                          }
                                          if(§§pop())
                                          {
                                             if(_loc8_)
                                             {
                                                §§push(this.§?"V§);
                                                break;
                                             }
                                          }
                                          else
                                          {
                                             §@q§.§@0§(_loc3_);
                                             if(!_loc7_)
                                             {
                                                if(!_loc7_)
                                                {
                                                   if(false)
                                                   {
                                                      continue;
                                                   }
                                                   continue loop0;
                                                }
                                                addr136:
                                                §@q§.§@0§(_loc3_);
                                             }
                                          }
                                          if(!(_loc7_ && _loc3_))
                                          {
                                             break loop2;
                                          }
                                          continue loop2;
                                       }
                                       continue loop1;
                                    }
                                    addr88:
                                    continue loop0;
                                 }
                              }
                           }
                           continue loop5;
                        }
                        continue loop4;
                     }
                  }
                  addr68:
               }
               if(this.§-"B§)
               {
                  if(_loc8_)
                  {
                     §§push(this.§2"@§);
                     if(!_loc7_)
                     {
                        §§push("WaitingForReply");
                        if(_loc8_)
                        {
                           §§push(§§pop().getItemByName(§§pop()));
                           if(!_loc7_)
                           {
                              §§pop().setVisibility(false);
                              addr189:
                              §§push(this.§2"@§.getItemByName("AvatarSavedAnimation"));
                           }
                           (_loc4_ = §§pop() as §^n§).setVisibility(true);
                           if(!_loc7_)
                           {
                              _loc4_.mClip.gotoAndPlay(1);
                              if(!(_loc7_ && param1))
                              {
                                 this.§3Y§();
                              }
                           }
                           §§goto(addr212);
                        }
                     }
                  }
                  §§goto(addr189);
               }
               addr212:
               return;
            }
            §§goto(addr78);
         }
         §§goto(addr68);
      }
      
      private function §["+§(param1:IOErrorEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§^n§ = null;
         if(!(_loc3_ && this))
         {
            if(this.§-"B§)
            {
               if(!(_loc3_ && this))
               {
                  §§push(this.§2"@§);
                  if(!(_loc3_ && this))
                  {
                     §§push("WaitingForReply");
                     if(!(_loc3_ && _loc2_))
                     {
                        §§push(§§pop().getItemByName(§§pop()));
                        if(_loc4_)
                        {
                           §§pop().setVisibility(false);
                           addr82:
                           §§push(this.§2"@§.getItemByName("AvatarSavedAnimation"));
                        }
                        _loc2_ = §§pop() as §^n§;
                        if(_loc4_ || _loc3_)
                        {
                           _loc2_.setVisibility(true);
                           if(!_loc4_)
                           {
                           }
                           §§goto(addr103);
                        }
                        _loc2_.mClip.gotoAndPlay(1);
                        §§goto(addr103);
                     }
                  }
               }
               §§goto(addr82);
            }
            addr103:
            return;
         }
         §§goto(addr82);
      }
      
      public function §8O§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §]"1§.§&"5§.avatar.§8O§(param1);
         }
         do
         {
            this.§3Y§();
         }
         while(_loc2_);
         
      }
      
      public function §""L§(param1:String) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc4_:§[!X§ = null;
         var _loc5_:Object = null;
         var _loc6_:Item = null;
         var _loc2_:Item = §]"1§.§&"5§.items.§3"[§(param1);
         var _loc3_:§[!X§ = §]"1§.§&"5§.avatar;
         if(!(_loc10_ && _loc2_))
         {
            if(_loc2_)
            {
               if(_loc9_)
               {
                  §§push(_loc2_.§;"V§);
                  if(_loc9_ || this)
                  {
                     §§push(§§pop().toUpperCase() == "CATEGORYBIRDS");
                     if(!(_loc10_ && _loc2_))
                     {
                        if(§§pop())
                        {
                           if(_loc9_ || _loc3_)
                           {
                              addr76:
                              §§pop();
                              if(_loc9_)
                              {
                                 addr82:
                                 §§push(_loc3_.§=!J§().§&N§ == _loc2_.§&N§);
                                 if(_loc9_ || _loc3_)
                                 {
                                    addr93:
                                    if(§§pop())
                                    {
                                       if(_loc2_.§;"V§.toUpperCase() == "CATEGORYBACKGROUNDS")
                                       {
                                          if(!_loc10_)
                                          {
                                             §!!0§.§[!R§(_loc2_.§&N§);
                                             if(!_loc10_)
                                             {
                                                §§push(§]"1§.§&"5§);
                                                if(_loc9_)
                                                {
                                                   §§push(§§pop().avatar);
                                                   if(!(_loc10_ && this))
                                                   {
                                                      §§pop().§]"A§(_loc2_);
                                                      if(_loc9_ || _loc2_)
                                                      {
                                                         addr285:
                                                         this.§3Y§();
                                                         return;
                                                         addr272:
                                                      }
                                                      §§goto(addr272);
                                                   }
                                                   §§goto(addr285);
                                                }
                                                else
                                                {
                                                   addr262:
                                                   §§push(§§pop().avatar);
                                                }
                                                §§pop().§]"A§(_loc2_);
                                                if(_loc9_ || this)
                                                {
                                                }
                                             }
                                          }
                                          §§goto(addr285);
                                       }
                                       else
                                       {
                                          §§push(§]"1§.§&"5§);
                                       }
                                       §§goto(addr262);
                                    }
                                    §§goto(addr285);
                                 }
                                 §§goto(addr93);
                              }
                              _loc4_ = §]"1§.§&"5§.§@9§(_loc2_.§&N§);
                              if(!_loc10_)
                              {
                                 §!!0§.§2!Y§(_loc4_,110,174);
                                 while(true)
                                 {
                                    loop1:
                                    while(true)
                                    {
                                       _loc4_.§[!p§();
                                       while(true)
                                       {
                                          _loc4_.§]"A§(_loc2_);
                                          if(!_loc10_)
                                          {
                                             if(!(_loc9_ || _loc2_))
                                             {
                                                continue;
                                             }
                                             if(_loc10_)
                                             {
                                                break loop1;
                                             }
                                             if(false)
                                             {
                                                continue loop1;
                                             }
                                             addr190:
                                             if(_loc3_)
                                             {
                                                break;
                                             }
                                             if((_loc5_ = _loc4_.§>$§("CATEGORYBACKGROUNDS")) == null)
                                             {
                                                if(_loc9_)
                                                {
                                                   _loc4_.§]"A§(§]"1§.§&"5§.items.§3"[§("Backgrounds1"));
                                                   if(!(_loc10_ && this))
                                                   {
                                                      addr214:
                                                   }
                                                   §§goto(addr285);
                                                }
                                             }
                                             §§goto(addr214);
                                          }
                                          break;
                                       }
                                    }
                                 }
                              }
                              for each(_loc6_ in _loc3_.§ 2§)
                              {
                                 §§push(_loc6_.category);
                                 if(!_loc10_)
                                 {
                                    if(§§pop().toUpperCase() == "CATEGORYBIRDS")
                                    {
                                       continue;
                                    }
                                    if(!_loc10_)
                                    {
                                       addr167:
                                       if(_loc6_.category.toUpperCase() == "CATEGORYBACKGROUNDS")
                                       {
                                          if(!_loc9_)
                                          {
                                             continue;
                                          }
                                          addr172:
                                          §!!0§.§[!R§(_loc6_.§&N§);
                                          if(_loc10_ && _loc2_)
                                          {
                                             continue;
                                          }
                                       }
                                       _loc4_.§]"A§(_loc6_);
                                       continue;
                                    }
                                    §§goto(addr172);
                                 }
                                 §§goto(addr167);
                              }
                              §§goto(addr190);
                           }
                        }
                        §§goto(addr93);
                     }
                     §§goto(addr76);
                  }
               }
               §§goto(addr82);
            }
            else
            {
               §§push(§;!=§);
               §§push("[Warining!] Trying to select item that dosen\'t exit. Item id:");
               if(!(_loc10_ && param1))
               {
                  §§push(§§pop() + param1);
               }
               §§pop().log(§§pop());
            }
            §§goto(addr285);
         }
         §§goto(addr82);
      }
      
      private function §3Y§() : void
      {
         var _loc19_:Boolean = true;
         var _loc20_:Boolean = false;
         var _loc4_:§]"6§ = null;
         var _loc5_:Item = null;
         var _loc10_:Array = null;
         var _loc11_:* = null;
         var _loc12_:Array = null;
         var _loc13_:* = null;
         var _loc14_:§9!x§ = null;
         var _loc15_:§9!x§ = null;
         var _loc16_:* = 0;
         var _loc1_:int = 0;
         var _loc2_:Boolean = false;
         §§push((AngryBirdsFP11.sUserProgress as §#!$§).avatarString);
         if(_loc19_)
         {
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         if(!_loc20_)
         {
            §§push(_loc3_);
            if(!_loc20_)
            {
               §§push(§§pop() == null);
               if(!_loc20_)
               {
                  §§push(!§§pop());
                  if(!(_loc20_ && _loc3_))
                  {
                     if(§§pop())
                     {
                        if(_loc19_ || _loc3_)
                        {
                           addr81:
                           §§pop();
                           if(_loc19_)
                           {
                              §§push(_loc3_);
                              if(_loc19_ || _loc1_)
                              {
                                 §§push("");
                                 if(!_loc20_)
                                 {
                                    §§push(§§pop() == §§pop());
                                    if(_loc19_ || _loc3_)
                                    {
                                       addr104:
                                       if(!§§pop())
                                       {
                                          addr107:
                                          _loc10_ = _loc3_.split("-");
                                          §§push(§]"1§.§&"5§.avatar.§9" §());
                                          if(!_loc20_)
                                          {
                                             §§push(§§pop());
                                             if(!_loc20_)
                                             {
                                                addr119:
                                                §§push(_loc11_ = §§pop());
                                             }
                                             _loc12_ = §§pop().split("-");
                                             if(_loc19_ || this)
                                             {
                                                if(_loc10_.length != _loc12_.length)
                                                {
                                                   if(!_loc20_)
                                                   {
                                                      addr139:
                                                      _loc2_ = true;
                                                   }
                                                }
                                                var _loc17_:* = 0;
                                                var _loc18_:* = _loc12_;
                                                while(§§hasnext(_loc18_,_loc17_))
                                                {
                                                   §§push(§§nextvalue(_loc17_,_loc18_));
                                                   if(!(_loc20_ && _loc2_))
                                                   {
                                                      _loc13_ = §§pop();
                                                      if(!(_loc19_ || this))
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
                                                addr180:
                                                §§push(0);
                                                if(!_loc20_)
                                                {
                                                   _loc17_ = §§pop();
                                                   if(!(_loc20_ && _loc2_))
                                                   {
                                                      §§push(§]"1§.§&"5§);
                                                      if(!_loc20_)
                                                      {
                                                         _loc18_ = §§pop().items.§`!s§;
                                                         loop0:
                                                         while(true)
                                                         {
                                                            §§push(§§hasnext(_loc18_,_loc17_));
                                                            if(_loc19_ || _loc2_)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  continue;
                                                               }
                                                               if(_loc19_)
                                                               {
                                                                  if(!(_loc20_ && this))
                                                                  {
                                                                     addr237:
                                                                     if(!(_loc20_ && _loc1_))
                                                                     {
                                                                        this.§7"H§ = [];
                                                                        if(_loc19_ || _loc1_)
                                                                        {
                                                                           §§push(0);
                                                                           if(_loc19_ || _loc1_)
                                                                           {
                                                                              _loc17_ = §§pop();
                                                                              if(_loc19_ || _loc1_)
                                                                              {
                                                                                 addr273:
                                                                                 _loc18_ = §]"1§.§&"5§.avatar.§ 2§;
                                                                                 addr271:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§hasnext(_loc18_,_loc17_));
                                                                                    break loop0;
                                                                                 }
                                                                                 addr371:
                                                                              }
                                                                              addr374:
                                                                              if(_loc19_)
                                                                              {
                                                                                 §§push(this.§2"@§);
                                                                                 loop1:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push("Button_Share");
                                                                                    loop2:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop().getItemByName(§§pop()));
                                                                                       loop3:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(false);
                                                                                          loop4:
                                                                                          while(true)
                                                                                          {
                                                                                             §§pop().setVisibility(§§pop());
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc1_);
                                                                                                addr916:
                                                                                                loop6:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(0);
                                                                                                   addr917:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(§§pop() <= §§pop())
                                                                                                      {
                                                                                                         §§push(this.§2"@§);
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push("BuyTheseButton");
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop().getItemByName(§§pop()));
                                                                                                               loop10:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(!_loc20_)
                                                                                                                  {
                                                                                                                     §§push(false);
                                                                                                                     loop11:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§pop().setVisibility(§§pop());
                                                                                                                        loop12:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(this.§2"@§);
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push("Textfield_Price");
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(!(_loc20_ && _loc3_))
                                                                                                                                 {
                                                                                                                                    §§push(§§pop().getItemByName(§§pop()));
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(false);
                                                                                                                                       loop16:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§pop().setVisibility(§§pop());
                                                                                                                                          loop17:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(this.§2"@§);
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push("SetAvatarProfileButton");
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(_loc19_ || _loc2_)
                                                                                                                                                   {
                                                                                                                                                      if(_loc19_ || _loc2_)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop().getItemByName(§§pop()));
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         loop54:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop().getItemByName(§§pop()));
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(true);
                                                                                                                                                               loop56:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§pop().setVisibility(§§pop());
                                                                                                                                                                  addr924:
                                                                                                                                                                  loop64:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(this.§2"@§);
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc19_)
                                                                                                                                                                        {
                                                                                                                                                                           continue loop54;
                                                                                                                                                                        }
                                                                                                                                                                        §§push("Textfield_Price");
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop().getItemByName(§§pop()));
                                                                                                                                                                           addr907:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(true);
                                                                                                                                                                              addr908:
                                                                                                                                                                              while(_loc19_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§pop().setVisibility(§§pop());
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc19_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(this.§2"@§);
                                                                                                                                                                                       loop52:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push("SetAvatarProfileButton");
                                                                                                                                                                                          addr896:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop().getItemByName(§§pop()));
                                                                                                                                                                                             loop58:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(false);
                                                                                                                                                                                                loop59:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§pop().setVisibility(§§pop());
                                                                                                                                                                                                   loop60:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      loop23:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(this.§@v§);
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!§§pop())
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue loop6;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            loop25:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(this.§2"@§);
                                                                                                                                                                                                               if(_loc19_ || _loc2_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push("SetAvatarProfileButton");
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§§pop().getItemByName(§§pop()));
                                                                                                                                                                                                                     while(_loc19_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc20_ && _loc1_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           continue loop58;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        (§§pop() as §7"0§).setComponentState(§!!G§.COMPONENT_STATE_ACTIVE_DEFAULT);
                                                                                                                                                                                                                        loop28:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(this.§2"@§);
                                                                                                                                                                                                                           loop29:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(_loc20_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 continue loop52;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              if(_loc20_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 continue loop1;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§push("SetFacebookProfileButton");
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(§§pop().getItemByName(§§pop()));
                                                                                                                                                                                                                                 while(_loc19_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    (§§pop() as §7"0§).setComponentState(§!!G§.§[E§);
                                                                                                                                                                                                                                    loop31:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(!_loc20_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          loop32:
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(this.§2"@§);
                                                                                                                                                                                                                                             if(_loc19_ || _loc3_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(_loc1_ + "");
                                                                                                                                                                                                                                                if(!(_loc20_ && _loc1_))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§pop().setText(§§pop(),"Textfield_Price");
                                                                                                                                                                                                                                                   loop33:
                                                                                                                                                                                                                                                   while(!(_loc20_ && this))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(_loc19_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(this.§?u§);
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(§§pop() == null)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(_loc19_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(_loc20_ && this)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        continue loop33;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     if(!(_loc20_ && _loc3_))
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(!(_loc20_ && _loc1_))
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(!(_loc20_ && this))
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              continue loop28;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr727);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        else
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§goto(addr649);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     else
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§goto(addr550);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     continue loop33;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  addr436:
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(!_loc20_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        continue;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     continue loop12;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  continue;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr935);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            addr550:
                                                                                                                                                                                                                                                            if(!(_loc19_ || this))
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               continue loop17;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               continue loop32;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         addr649:
                                                                                                                                                                                                                                                         continue loop32;
                                                                                                                                                                                                                                                         addr649:
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      continue loop64;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(!_loc20_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         addr607:
                                                                                                                                                                                                                                                         if(!(_loc20_ && _loc1_))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(this.§2"@§);
                                                                                                                                                                                                                                                            if(!_loc20_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§goto(addr628);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr935);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         else
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               continue loop23;
                                                                                                                                                                                                                                                               §§goto(addr607);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            addr864:
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr677);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr935);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          continue loop64;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       continue loop60;
                                                                                                                                                                                                                                       addr750:
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(!(_loc20_ && this))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(!_loc20_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(this.§2"@§);
                                                                                                                                                                                                                                                continue loop29;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             continue loop25;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          continue loop31;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    continue loop60;
                                                                                                                                                                                                                                    if(_loc20_ && _loc2_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       continue;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§push(true);
                                                                                                                                                                                                                                    if(_loc20_ && _loc3_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       continue loop11;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    if(_loc20_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       continue loop16;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    if(!_loc19_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       continue loop59;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    if(_loc20_ && _loc2_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       continue loop56;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§pop().setVisibility(§§pop());
                                                                                                                                                                                                                                    §§goto(addr550);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 continue loop3;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           continue loop52;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     continue loop10;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr935);
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         continue loop6;
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    else
                                                                                                                                                                                    {
                                                                                                                                                                                       addr918:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(this.§2"@§);
                                                                                                                                                                                          continue loop54;
                                                                                                                                                                                       }
                                                                                                                                                                                       addr918:
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 continue loop54;
                                                                                                                                                                              }
                                                                                                                                                                              continue loop4;
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr848);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr896);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       if(_loc20_ && _loc3_)
                                                                                                                                       {
                                                                                                                                          continue;
                                                                                                                                       }
                                                                                                                                       (§§pop() as §7"0§).setComponentState(§!!G§.COMPONENT_STATE_ACTIVE_DEFAULT);
                                                                                                                                       §§goto(addr649);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr906);
                                                                                                                              }
                                                                                                                              if(_loc20_ && _loc3_)
                                                                                                                              {
                                                                                                                                 continue;
                                                                                                                              }
                                                                                                                              §§push("SetFacebookProfileButton");
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(_loc20_ && _loc1_)
                                                                                                                                 {
                                                                                                                                    continue loop2;
                                                                                                                                 }
                                                                                                                                 §§goto(addr713);
                                                                                                                                 §§push(§§pop().getItemByName(§§pop()));
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr907);
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr918);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr924);
                                                                           }
                                                                           §§goto(addr916);
                                                                        }
                                                                        §§goto(addr557);
                                                                     }
                                                                     §§goto(addr779);
                                                                  }
                                                                  §§goto(addr271);
                                                               }
                                                               §§goto(addr374);
                                                            }
                                                            break;
                                                         }
                                                         loop66:
                                                         for(; §§pop(); §§goto(addr371))
                                                         {
                                                            _loc5_ = §§nextvalue(_loc17_,_loc18_);
                                                            _loc15_ = this.§2"@§.getItemByName(_loc5_.category.toUpperCase()) as §9!x§;
                                                            if(_loc19_ || _loc1_)
                                                            {
                                                               §§push(§4!x§(_loc5_.§&N§));
                                                               loop67:
                                                               while(true)
                                                               {
                                                                  §§push(int(§§pop()));
                                                                  loop68:
                                                                  while(true)
                                                                  {
                                                                     _loc16_ = §§pop();
                                                                     loop69:
                                                                     while(true)
                                                                     {
                                                                        _loc15_.§[!B§(_loc5_.§&N§,_loc16_);
                                                                        while(true)
                                                                        {
                                                                           addr332:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc16_);
                                                                              continue loop67;
                                                                           }
                                                                           loop74:
                                                                           while(_loc19_ || _loc2_)
                                                                           {
                                                                              if(_loc20_)
                                                                              {
                                                                                 continue loop69;
                                                                              }
                                                                              this.§7"H§.push(_loc5_);
                                                                              loop75:
                                                                              while(true)
                                                                              {
                                                                                 loop76:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc1_);
                                                                                    if(_loc19_ || _loc3_)
                                                                                    {
                                                                                       if(!_loc19_)
                                                                                       {
                                                                                          continue loop67;
                                                                                       }
                                                                                       §§push(_loc16_);
                                                                                       if(_loc19_)
                                                                                       {
                                                                                          §§push(int(§§pop() + §§pop()));
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             if(§§pop() > §§pop())
                                                                                             {
                                                                                                continue loop74;
                                                                                             }
                                                                                             continue loop76;
                                                                                          }
                                                                                          addr342:
                                                                                       }
                                                                                    }
                                                                                    if(_loc19_)
                                                                                    {
                                                                                       continue loop75;
                                                                                    }
                                                                                    continue loop68;
                                                                                 }
                                                                                 addr330:
                                                                                 while(false)
                                                                                 {
                                                                                    §§goto(addr332);
                                                                                 }
                                                                                 continue loop66;
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr330);
                                                         }
                                                         §§goto(addr373);
                                                      }
                                                      §§goto(addr273);
                                                   }
                                                   §§goto(addr237);
                                                }
                                                §§goto(addr741);
                                             }
                                             §§goto(addr139);
                                          }
                                          §§goto(addr119);
                                       }
                                       §§goto(addr180);
                                    }
                                    §§goto(addr104);
                                 }
                              }
                           }
                           §§goto(addr107);
                        }
                     }
                     §§goto(addr104);
                  }
                  §§goto(addr81);
               }
               §§goto(addr104);
            }
         }
         §§goto(addr107);
      }
      
      public function §=,§() : String
      {
         return §@q§.§["G§;
      }
      
      public function §8"3§() : String
      {
         return §@q§.§,`§;
      }
   }
}
