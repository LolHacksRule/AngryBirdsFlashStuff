package §_-1N§
{
   import §_-0BH§.§_-FK§;
   import §_-0BH§.§_-Gi§;
   import §_-0BH§.§_-ZE§;
   import §_-0EZ§.§_-Dk§;
   import §_-0EZ§.§_-HV§;
   import §_-4§.Item;
   import §_-4§.§_-044§;
   import §_-4§.§_-nq§;
   import §_-6C§.§_-05d§;
   import §_-6C§.§_-Ev§;
   import §_-6C§.§_-Mu§;
   import §_-6C§.§_-Ny§;
   import §_-6C§.§_-k6§;
   import §_-7§.StatePopupManager;
   import §_-7§.§_-EJ§;
   import §_-9Y§.§_-Bt§;
   import §_-Hb§.§_-P-§;
   import §_-MN§.§_-rD§;
   import §_-MN§.§_-rR§;
   import §_-MN§.§_-wU§;
   import §_-Mc§.§_-0-w§;
   import §_-Mc§.§_-059§;
   import §_-Mc§.§in§;
   import §_-Y8§.§_-05J§;
   import §_-Yl§.§_-5q§;
   import §_-eS§.§_-OY§;
   import §_-gU§.Popup;
   import §_-hX§.§_-bT§;
   import §_-hX§.§_-pI§;
   import §_-mh§.§_-09d§;
   import §_-py§.§_-bu§;
   import §_-wA§.§_-0X§;
   import §_-wv§.§_-Pj§;
   import §_-y7§.§_-xe§;
   import §_-y7§.§_-zA§;
   import com.rovio.assets.§_-Fc§;
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
   
   public class §_-Kz§ extends Popup
   {
      
      private static var §_-l3§:Class;
      
      public static var §_-06E§:String;
      
      private static var §_-Nr§:Array;
      
      public static const §_-pk§:String = "CreatorState";
      
      public static const §_-X4§:Array;
      
      public static const §_-j3§:String = "RedBird";
      
      public static const §_-Sl§:String = "NoHat";
      
      public static const §_-xZ§:String = "10001";
      
      public static const §_-17§:String = "CategoryBirds";
      
      public static var §_-s7§:Array;
      
      private static var §_-08§:§in§;
      
      public static var §_-rf§:String;
      
      private static var §_-yr§:String;
      
      public static var §_-TC§:Array;
      
      public static var §_-Vr§:URLLoader;
      
      public static var §_-017§:Array;
      
      private static var §_-qI§:Boolean = true;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §_-l3§ = §_-XB§;
         }
         loop0:
         while(true)
         {
            §_-Nr§ = [{
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
            addr143:
            while(true)
            {
               §_-pk§ = "CreatorState";
               continue loop0;
            }
         }
      }
      
      private var §_-2B§:StatePopupManager;
      
      private var §_-ro§:Item = null;
      
      private var §_-g2§:Boolean = false;
      
      private var §_-0Au§:String;
      
      private var §_-UY§:Array;
      
      private var §_-04a§:Array;
      
      private var §_-0CP§:Boolean = false;
      
      private var §_-Vg§:Boolean = false;
      
      private var §_-s0§:§_-5q§;
      
      private var §_-Oj§:§_-zA§;
      
      private var §_-Ju§:String;
      
      private var §_-dZ§:String;
      
      public function §_-Kz§(param1:§_-5q§, param2:StatePopupManager, param3:String = null)
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc5_:§_-nq§ = null;
         if(_loc9_)
         {
            this.§_-UY§ = [];
            while(true)
            {
               this.§_-04a§ = [];
               addr158:
               while(true)
               {
                  this.§_-2B§ = param2;
               }
            }
            addr162:
         }
         loop2:
         while(true)
         {
            super(§_-ZE§.§_-ve§(§_-l3§),param1);
            loop3:
            while(true)
            {
               if(param3)
               {
                  while(true)
                  {
                     this.§_-Ju§ = param3;
                     addr140:
                     addr70:
                     while(true)
                     {
                     }
                     if(!(_loc8_ && param1))
                     {
                        if(!_loc8_)
                        {
                           loop10:
                           while(true)
                           {
                              §_-rf§ = AngryBirdsFP11.§_-08Q§;
                              if(_loc9_ || param1)
                              {
                                 if(_loc9_ || param1)
                                 {
                                    if(false)
                                    {
                                       continue;
                                    }
                                    var _loc4_:§_-xe§ = new §_-xe§();
                                    if(_loc9_)
                                    {
                                       if(§_-017§ == null)
                                       {
                                          if(!_loc8_)
                                          {
                                             §_-017§ = [];
                                             addr177:
                                             var _loc6_:int = 0;
                                             var _loc7_:* = §_-xe§.§_-s2§().characters;
                                             addr203:
                                             for each(_loc5_ in _loc7_)
                                             {
                                                if(!(_loc8_ && param3))
                                                {
                                                   §_-017§.push(new §_-059§(_loc5_));
                                                }
                                                §§goto(addr203);
                                             }
                                             if(!(_loc8_ && param3))
                                             {
                                                §§goto(addr247);
                                             }
                                             §§goto(addr250);
                                          }
                                          §§goto(addr177);
                                       }
                                       addr247:
                                       if(§_-08§ == null)
                                       {
                                          addr250:
                                          §_-08§ = new §in§();
                                       }
                                       if(§_-Vr§ == null)
                                       {
                                          if(_loc9_)
                                          {
                                             this.§_-7q§();
                                          }
                                          if(_loc9_)
                                          {
                                             if(_loc8_ && param1)
                                             {
                                                §§goto(addr250);
                                             }
                                          }
                                          §§goto(addr250);
                                       }
                                       return;
                                    }
                                    §§goto(addr177);
                                 }
                                 else
                                 {
                                    loop17:
                                    while(_loc9_)
                                    {
                                       §§push(this.§_-s0§);
                                       loop16:
                                       while(true)
                                       {
                                          §§push("ButtonEasterEgg2");
                                          loop15:
                                          while(true)
                                          {
                                             §§push(§§pop().getItemByName(§§pop()));
                                             loop14:
                                             while(true)
                                             {
                                                §§push(false);
                                                loop13:
                                                while(true)
                                                {
                                                   §§pop().setVisibility(§§pop());
                                                   addr96:
                                                   addr129:
                                                   while(!(_loc8_ && param2))
                                                   {
                                                      if(!_loc8_)
                                                      {
                                                         continue loop10;
                                                      }
                                                      §§goto(addr140);
                                                   }
                                                   while(true)
                                                   {
                                                      if(_loc8_)
                                                      {
                                                         continue loop2;
                                                      }
                                                      if(!_loc9_)
                                                      {
                                                         break;
                                                      }
                                                      this.§_-s0§ = param1;
                                                      while(true)
                                                      {
                                                         if((AngryBirdsFP11.sUserProgress as §_-09d§).isEggUnlocked("1000-2"))
                                                         {
                                                            continue loop17;
                                                         }
                                                         §§push(this.§_-s0§);
                                                         if(_loc9_)
                                                         {
                                                            §§push("ButtonEasterEgg2");
                                                            if(!_loc8_)
                                                            {
                                                               §§push(§§pop().getItemByName(§§pop()));
                                                               if(!_loc8_)
                                                               {
                                                                  §§push(true);
                                                                  if(_loc9_ || param3)
                                                                  {
                                                                     §§pop().setVisibility(§§pop());
                                                                     break loop10;
                                                                  }
                                                                  continue loop13;
                                                               }
                                                               continue loop14;
                                                            }
                                                            continue loop15;
                                                         }
                                                         continue loop16;
                                                      }
                                                      §§goto(addr96);
                                                   }
                                                   §§goto(addr158);
                                                }
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr162);
                                 }
                              }
                              break;
                           }
                           while(true)
                           {
                              if(_loc9_)
                              {
                                 if(_loc9_)
                                 {
                                    §§goto(addr70);
                                 }
                                 else
                                 {
                                    §§goto(addr110);
                                 }
                              }
                              §§goto(addr96);
                              §§goto(addr23);
                           }
                           addr23:
                        }
                        continue loop3;
                     }
                  }
               }
               while(true)
               {
                  this.§_-2B§.addEventListener(§_-Bt§.§_-KB§,this.onUiInteraction);
                  §§goto(addr129);
                  §§goto(addr140);
               }
            }
         }
      }
      
      public static function §_-AJ§(param1:String) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:Object = null;
         for each(_loc2_ in §_-s7§)
         {
            if(!(_loc5_ && param1))
            {
               if(_loc2_.itemId == param1)
               {
                  if(_loc6_ || param1)
                  {
                     return true;
                  }
               }
            }
         }
         return false;
      }
      
      public static function §_-iY§(param1:String) : int
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:Object = null;
         var _loc3_:int = 0;
         var _loc4_:* = §_-s7§;
         while(true)
         {
            for each(_loc2_ in _loc4_)
            {
               if(_loc5_ || param1)
               {
                  §§push(_loc2_.itemId == param1);
                  if(!_loc6_)
                  {
                     if(§§pop())
                     {
                        if(!_loc6_)
                        {
                           addr68:
                           §§pop();
                           if(!(_loc5_ || param1))
                           {
                              break;
                           }
                           addr79:
                           if(!_loc2_.available)
                           {
                              if(!_loc6_)
                              {
                                 break;
                              }
                           }
                           continue;
                        }
                     }
                     §§goto(addr79);
                  }
                  §§goto(addr68);
               }
               §§goto(addr79);
            }
            return 0;
         }
         return _loc2_.price;
      }
      
      public static function §_-4N§(param1:String) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:Object = null;
         var _loc3_:int = 0;
         var _loc4_:* = §_-s7§;
         while(true)
         {
            for each(_loc2_ in _loc4_)
            {
               if(_loc6_ || _loc2_)
               {
                  §§push(_loc2_.itemId == param1);
                  if(!_loc5_)
                  {
                     if(§§pop())
                     {
                        if(!_loc5_)
                        {
                           addr69:
                           §§pop();
                           if(!_loc6_)
                           {
                              break;
                           }
                           addr75:
                           if(!_loc2_.available)
                           {
                              if(!(_loc5_ && _loc2_))
                              {
                                 break;
                              }
                           }
                           continue;
                        }
                     }
                     §§goto(addr75);
                  }
                  §§goto(addr69);
               }
               §§goto(addr75);
            }
            return false;
         }
         return _loc2_.sale;
      }
      
      public static function §_-Gw§(param1:String) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:Object = null;
         var _loc3_:int = 0;
         var _loc4_:* = §_-s7§;
         while(true)
         {
            for each(_loc2_ in _loc4_)
            {
               if(_loc6_ || _loc3_)
               {
                  §§push(_loc2_.itemId == param1);
                  if(!(_loc5_ && §_-Kz§))
                  {
                     if(§§pop())
                     {
                        if(_loc6_ || _loc2_)
                        {
                           addr79:
                           §§pop();
                           if(!_loc6_)
                           {
                              break;
                           }
                           addr85:
                           if(!_loc2_.available)
                           {
                              if(_loc6_ || _loc3_)
                              {
                                 break;
                              }
                           }
                           continue;
                        }
                     }
                     §§goto(addr85);
                  }
                  §§goto(addr79);
               }
               §§goto(addr85);
            }
            return false;
         }
         return _loc2_.limited;
      }
      
      public static function §_-nb§(param1:String) : int
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:Object = null;
         for each(_loc2_ in §_-s7§)
         {
            if(!(_loc5_ && §_-Kz§))
            {
               if(_loc2_.itemId == param1)
               {
                  if(_loc6_ || §_-Kz§)
                  {
                     return _loc2_.starPrice;
                  }
               }
            }
         }
         return 0;
      }
      
      public static function §_-0-t§(param1:int, param2:int) : String
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:Object = null;
         var _loc4_:int = 0;
         var _loc5_:* = §_-Nr§;
         while(true)
         {
            for each(_loc3_ in _loc5_)
            {
               if(!(_loc7_ && param1))
               {
                  §§push(param2);
                  if(!(_loc7_ && param2))
                  {
                     §§push(§§pop() >= _loc3_.s);
                     if(!_loc7_)
                     {
                        if(§§pop())
                        {
                           if(!_loc7_)
                           {
                              §§pop();
                              if(!_loc7_)
                              {
                                 addr79:
                                 §§push(param1 < _loc3_.s);
                              }
                              break;
                           }
                        }
                     }
                     if(§§pop())
                     {
                        if(_loc6_)
                        {
                           break;
                        }
                     }
                     continue;
                  }
                  §§goto(addr79);
               }
               break;
            }
            return "";
         }
         return _loc3_.id;
      }
      
      private function §_-7q§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§_-s0§.getItemByName("WaitingForReply").setVisibility(true);
         }
         var _loc1_:URLRequest = §_-P-§.§_-0Ak§(§_-rf§ + "/getavatarparts");
         if(_loc2_ || this)
         {
            _loc1_.method = URLRequestMethod.POST;
            loop0:
            while(true)
            {
               §_-Vr§ = new URLLoader();
               while(true)
               {
                  §_-Vr§.addEventListener(Event.COMPLETE,this.onComplete);
                  while(!(_loc3_ && _loc3_))
                  {
                     §_-Vr§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§_-q3§);
                     loop4:
                     while(!(_loc3_ && _loc1_))
                     {
                        §_-Vr§.load(_loc1_);
                        if(_loc2_ || _loc1_)
                        {
                           addr69:
                           if(_loc2_ || _loc3_)
                           {
                              if(!_loc2_)
                              {
                                 continue loop0;
                              }
                           }
                           else
                           {
                              while(true)
                              {
                                 §_-Vr§.addEventListener(IOErrorEvent.IO_ERROR,this.§_-ba§);
                                 break loop4;
                                 §§goto(addr69);
                              }
                              addr126:
                           }
                           return;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr126);
      }
      
      protected function §_-q3§(param1:SecurityErrorEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §_-EJ§.§_-8H§();
         }
         do
         {
            §_-Vr§ = null;
         }
         while(!_loc3_);
         
      }
      
      private function §_-ba§(param1:IOErrorEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            §_-EJ§.§_-8H§();
         }
         do
         {
            §_-Vr§ = null;
         }
         while(_loc3_);
         
      }
      
      private function onComplete(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §_-TC§ = §_-bu§.§_-aW§(param1.currentTarget.data);
            loop0:
            while(true)
            {
               if(!this.§_-g2§)
               {
                  if(!(_loc3_ && _loc2_))
                  {
                     this.§_-Vg§ = true;
                     break;
                  }
                  break;
               }
               while(true)
               {
                  this.§_-02u§();
                  while(_loc2_ || param1)
                  {
                     this.§_-jx§();
                     if(!(_loc3_ && _loc3_))
                     {
                        if(_loc3_)
                        {
                           break loop0;
                        }
                        continue loop0;
                     }
                  }
               }
            }
         }
      }
      
      private function §_-02u§() : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc2_:Object = null;
         var _loc3_:§_-05d§ = null;
         var _loc4_:Item = null;
         var _loc5_:Object = null;
         var _loc1_:Array = [];
         if(_loc8_)
         {
            §§push(this.§_-s0§);
            if(!_loc9_)
            {
               if(!§§pop())
               {
               }
               §§goto(addr46);
            }
            §§pop().getItemByName("WaitingForReply").setVisibility(false);
         }
         addr46:
         if(_loc8_)
         {
            §§push(this.§_-s0§);
         }
         for each(_loc2_ in §_-TC§)
         {
            if(!(_loc9_ && this))
            {
               this.§_-Em§(_loc2_,§_-Kz§.§_-Nr§);
            }
            if(_loc4_ = §_-Pj§.§_-08k§(_loc2_.id))
            {
               if(_loc8_)
               {
                  _loc5_ = {
                     "itemId":_loc4_.§_-1h§,
                     "price":_loc2_.p,
                     "available":_loc2_.a,
                     "starPrice":_loc2_.star,
                     "limited":_loc2_.l,
                     "sale":_loc2_.s
                  };
                  if(_loc8_)
                  {
                     _loc1_.push(_loc5_);
                     addr116:
                     _loc2_.a;
                     if(!(_loc9_ && _loc3_))
                     {
                        addr126:
                        _loc2_.id;
                        if(!_loc8_)
                        {
                           continue;
                        }
                     }
                     _loc2_.p;
                     continue;
                  }
                  §§goto(addr116);
               }
               §§goto(addr126);
            }
            §§goto(addr116);
         }
         if(_loc8_)
         {
            §_-s7§ = _loc1_;
         }
         _loc3_ = this.§_-s0§.getItemByName("Repeater_Items") as §_-05d§;
         if(!_loc9_)
         {
            _loc3_.§_-OQ§(null,§_-0-w§);
            do
            {
               this.§_-s0§.§_-oK§("Repeater_Items","Repeater_Items_Tab_0");
            }
            while(!_loc8_);
            
         }
      }
      
      private function §_-Em§(param1:Object, param2:Array) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:Object = null;
         for each(_loc3_ in param2)
         {
            if(_loc6_)
            {
               if(param1.id != _loc3_.id)
               {
                  continue;
               }
               if(_loc7_ && param2)
               {
                  continue;
               }
            }
            param1.p = _loc3_.p;
            if(!(_loc7_ && param2))
            {
               param1.star = _loc3_.star;
            }
         }
      }
      
      private function §_-zi§(param1:DisplayObjectContainer, param2:Number = 1, param3:int = 0, param4:int = 0) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_)
         {
            §§push(§_-08§);
            if(!(_loc7_ && param2))
            {
               if(§§pop())
               {
                  if(!(_loc7_ && this))
                  {
                     §§push(§_-08§);
                     if(_loc6_)
                     {
                        if(§§pop().parent)
                        {
                           if(_loc6_)
                           {
                              addr41:
                              §§push(§_-08§);
                              if(_loc6_)
                              {
                                 if(§§pop().parent.contains(§_-08§))
                                 {
                                    if(_loc6_ || param3)
                                    {
                                       §§push(§_-08§);
                                       if(_loc6_)
                                       {
                                          addr68:
                                          §§pop().parent.removeChild(§_-08§);
                                          if(!_loc7_)
                                          {
                                             addr73:
                                             param1.addChild(§_-08§);
                                             if(_loc6_)
                                             {
                                                §§push(§_-08§);
                                                if(!(_loc7_ && param2))
                                                {
                                                   addr96:
                                                   §§pop().scaleX = §_-08§.scaleY = param2;
                                                   if(_loc6_)
                                                   {
                                                      addr123:
                                                      §§push(§_-08§);
                                                      loop3:
                                                      while(true)
                                                      {
                                                         §§push(param3);
                                                         addr124:
                                                         while(true)
                                                         {
                                                            §§pop().x = §§pop();
                                                            addr125:
                                                            while(true)
                                                            {
                                                               §§push(§_-08§);
                                                               if(!_loc7_)
                                                               {
                                                                  break;
                                                               }
                                                               continue loop3;
                                                            }
                                                         }
                                                      }
                                                      addr106:
                                                      addr123:
                                                   }
                                                   return;
                                                   addr121:
                                                }
                                                while(true)
                                                {
                                                   §§push(param4);
                                                   if(_loc6_)
                                                   {
                                                      §§pop().y = §§pop();
                                                      if(_loc6_)
                                                      {
                                                         break;
                                                      }
                                                      continue;
                                                   }
                                                   §§goto(addr124);
                                                }
                                                §§goto(addr121);
                                             }
                                          }
                                          §§goto(addr106);
                                       }
                                       §§goto(addr123);
                                    }
                                    §§goto(addr125);
                                 }
                                 §§goto(addr73);
                              }
                              §§goto(addr96);
                           }
                        }
                        §§goto(addr73);
                     }
                     §§goto(addr68);
                  }
                  §§goto(addr96);
               }
               §§goto(addr73);
            }
            §§goto(addr123);
         }
         §§goto(addr41);
      }
      
      private function §_-jx§() : void
      {
         var _loc16_:Boolean = true;
         var _loc17_:Boolean = false;
         var _loc5_:§_-nq§ = null;
         var _loc6_:§_-k6§ = null;
         var _loc7_:Array = null;
         var _loc8_:§_-059§ = null;
         var _loc9_:§_-k6§ = null;
         var _loc10_:§_-nq§ = null;
         var _loc11_:§_-05d§ = null;
         var _loc12_:* = 0;
         var _loc13_:String = null;
         if(_loc16_)
         {
            this.§_-g2§ = true;
         }
         var _loc1_:§_-05d§ = this.§_-s0§.getItemByName("Repeater_Tabs") as §_-05d§;
         if(!_loc17_)
         {
            _loc1_.§_-OQ§(null,§_-0-w§);
         }
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               §§push(§_-s7§);
               loop2:
               while(true)
               {
                  §§push(null);
                  loop3:
                  while(§§pop() != §§pop())
                  {
                     while(true)
                     {
                        §§push(§_-017§);
                        if(_loc16_)
                        {
                           §§push(null);
                           if(_loc16_ || this)
                           {
                              if(§§pop() == §§pop())
                              {
                                 if(!(_loc17_ && _loc3_))
                                 {
                                    if(!(_loc16_ || _loc2_))
                                    {
                                       continue;
                                    }
                                    if(!_loc16_)
                                    {
                                       break loop3;
                                    }
                                    §_-017§ = [];
                                 }
                                 if(true)
                                 {
                                    var _loc14_:int = 0;
                                    var _loc15_:* = §_-xe§.§_-s2§().characters;
                                    addr131:
                                 }
                                 continue loop1;
                                 for each(_loc5_ in _loc15_)
                                 {
                                    if(!_loc17_)
                                    {
                                       §_-017§.push(new §_-059§(_loc5_));
                                    }
                                    §§goto(addr131);
                                 }
                                 break;
                              }
                              break;
                           }
                           continue loop3;
                        }
                        continue loop2;
                     }
                     §§push((AngryBirdsFP11.sUserProgress as §_-09d§).§_-0x§);
                     if(_loc16_ || _loc2_)
                     {
                        §§push(§§pop());
                     }
                     var _loc2_:* = §§pop();
                     §§push((AngryBirdsFP11.sUserProgress as §_-09d§).avatarString);
                     if(!_loc17_)
                     {
                        §§push(§§pop());
                     }
                     var _loc3_:* = §§pop();
                     if(!_loc17_)
                     {
                        §§push(_loc3_);
                        if(_loc16_ || _loc2_)
                        {
                           §§push(§§pop() == null);
                           if(_loc16_ || _loc1_)
                           {
                              if(!§§pop())
                              {
                                 if(!(_loc17_ && _loc1_))
                                 {
                                    addr186:
                                    §§pop();
                                    if(!_loc17_)
                                    {
                                       addr192:
                                       addr190:
                                       addr189:
                                       if(_loc3_ == "")
                                       {
                                          if(_loc16_ || _loc3_)
                                          {
                                             addr200:
                                             this.§_-0CP§ = true;
                                          }
                                       }
                                       var _loc4_:§_-bT§;
                                       (_loc4_ = new §_-bT§(_loc2_,false,§_-bT§.§_-N2§)).x = 13;
                                       if(_loc16_)
                                       {
                                          _loc4_.y = 9;
                                          if(_loc16_)
                                          {
                                             §§push(this.§_-s0§);
                                             if(_loc16_)
                                             {
                                                §§push("SetFacebookProfileButton");
                                                if(_loc16_ || _loc1_)
                                                {
                                                   §§push(§§pop().getItemByName(§§pop()));
                                                   if(!(_loc17_ && _loc3_))
                                                   {
                                                      §§pop().mClip.addChild(_loc4_);
                                                      if(_loc16_)
                                                      {
                                                         addr246:
                                                         if(!§_-qI§)
                                                         {
                                                            addr396:
                                                            _loc9_ = this.§_-s0§.getItemByName("AvatarHolderClip") as §_-k6§;
                                                            addr394:
                                                            addr395:
                                                            if(!_loc17_)
                                                            {
                                                               this.§_-zi§(_loc9_.mClip);
                                                            }
                                                            _loc10_ = §_-08§.§_-C5§.§_-SZ§();
                                                            if(!_loc17_)
                                                            {
                                                               §§push(§_-08§);
                                                               if(!(_loc17_ && _loc3_))
                                                               {
                                                                  §§pop().§_-071§(_loc10_.§_-1h§,_loc10_.sId,_loc10_.§_-4k§,§_-017§,110,174);
                                                                  if(_loc16_ || _loc3_)
                                                                  {
                                                                     addr439:
                                                                     §_-08§.§_-C5§.§_-fs§();
                                                                  }
                                                                  (_loc11_ = this.§_-s0§.getItemByName("Repeater_Items") as §_-05d§).§_-OQ§(null,§_-0-w§);
                                                                  if(!(_loc17_ && _loc3_))
                                                                  {
                                                                     (this.§_-s0§ as §_-0X§).§_-8i§();
                                                                  }
                                                                  addr465:
                                                                  §§push(this.§_-Ju§);
                                                                  if(!_loc17_)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        if(_loc16_ || _loc3_)
                                                                        {
                                                                           addr477:
                                                                           §§push(this.§_-s0§);
                                                                           if(_loc16_ || _loc3_)
                                                                           {
                                                                              addr486:
                                                                              §§push((§§pop() as §_-0X§).§_-00i§(this.§_-Ju§));
                                                                              if(_loc16_ || _loc2_)
                                                                              {
                                                                                 §§push(int(§§pop()));
                                                                                 if(_loc16_ || _loc1_)
                                                                                 {
                                                                                    §§push(§§pop());
                                                                                    if(!_loc17_)
                                                                                    {
                                                                                       _loc12_ = §§pop();
                                                                                       addr510:
                                                                                       §§push(-1);
                                                                                    }
                                                                                    if(§§pop() != §§pop())
                                                                                    {
                                                                                       if(!(_loc17_ && this))
                                                                                       {
                                                                                          addr519:
                                                                                          §§push(this.§_-Ju§);
                                                                                          if(!(_loc17_ && this))
                                                                                          {
                                                                                             addr532:
                                                                                             _loc13_ = §§pop().substr("CATEGORY".length);
                                                                                             if(!(_loc17_ && _loc3_))
                                                                                             {
                                                                                                addr614:
                                                                                                this.§_-s0§.setText(_loc13_,"Textfield_CategoryTitle");
                                                                                                addr617:
                                                                                                §§push(this.§_-s0§);
                                                                                                if(_loc16_)
                                                                                                {
                                                                                                   §§push("Repeater_Items");
                                                                                                   §§push("Repeater_Items_Tab_");
                                                                                                   if(_loc16_)
                                                                                                   {
                                                                                                      §§push(§§pop() + _loc12_);
                                                                                                   }
                                                                                                   §§pop().§_-oK§(§§pop(),§§pop());
                                                                                                   addr611:
                                                                                                   if(§_-xe§.§_-eA§().§_-05v§.length > 0)
                                                                                                   {
                                                                                                      addr572:
                                                                                                      if(!_loc17_)
                                                                                                      {
                                                                                                         _loc1_.§_-02B§("Repeater_Tabs_Tab_0").§_-0BT§(§_-xe§.§_-eA§().§_-05v§[_loc12_].name as String);
                                                                                                         addr596:
                                                                                                         if(_loc16_)
                                                                                                         {
                                                                                                            addr554:
                                                                                                            this.§_-Ju§ = null;
                                                                                                            addr557:
                                                                                                            if(!(_loc17_ && _loc1_))
                                                                                                            {
                                                                                                               addr546:
                                                                                                               this.§_-ak§();
                                                                                                               if(_loc16_)
                                                                                                               {
                                                                                                                  if(!_loc16_)
                                                                                                                  {
                                                                                                                     §§goto(addr572);
                                                                                                                  }
                                                                                                                  return;
                                                                                                                  addr552:
                                                                                                               }
                                                                                                               §§goto(addr557);
                                                                                                               addr564:
                                                                                                            }
                                                                                                            §§goto(addr596);
                                                                                                            addr553:
                                                                                                            addr598:
                                                                                                         }
                                                                                                         §§goto(addr611);
                                                                                                      }
                                                                                                      §§goto(addr617);
                                                                                                   }
                                                                                                   §§goto(addr553);
                                                                                                }
                                                                                                §§goto(addr614);
                                                                                             }
                                                                                             §§goto(addr598);
                                                                                          }
                                                                                          §§goto(addr532);
                                                                                       }
                                                                                       §§goto(addr552);
                                                                                    }
                                                                                    §§goto(addr554);
                                                                                 }
                                                                              }
                                                                              §§goto(addr510);
                                                                           }
                                                                           §§goto(addr614);
                                                                        }
                                                                        §§goto(addr564);
                                                                     }
                                                                     §§goto(addr546);
                                                                  }
                                                                  §§goto(addr532);
                                                               }
                                                            }
                                                            §§goto(addr439);
                                                         }
                                                         §§goto(addr394);
                                                      }
                                                      §§push(this.§_-s0§);
                                                      if(!(_loc17_ && _loc2_))
                                                      {
                                                         §§push("AvatarHolderClip");
                                                         if(!_loc17_)
                                                         {
                                                            addr260:
                                                            §§push(§§pop().getItemByName(§§pop()));
                                                            if(!(_loc17_ && _loc1_))
                                                            {
                                                               _loc6_ = §§pop() as §_-k6§;
                                                               if(_loc16_)
                                                               {
                                                                  this.§_-zi§(_loc6_.mClip);
                                                                  if(_loc16_ || _loc1_)
                                                                  {
                                                                     §§push(_loc3_);
                                                                     if(!_loc17_)
                                                                     {
                                                                        §§push(§§pop() == "");
                                                                        if(_loc16_)
                                                                        {
                                                                           §§push(!§§pop());
                                                                           if(_loc16_ || _loc3_)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 if(!_loc17_)
                                                                                 {
                                                                                    addr314:
                                                                                    §§pop();
                                                                                    if(!(_loc17_ && this))
                                                                                    {
                                                                                       addr323:
                                                                                       addr322:
                                                                                       §§push(_loc3_ == null);
                                                                                       if(_loc17_)
                                                                                       {
                                                                                       }
                                                                                       addr328:
                                                                                       if(§§pop())
                                                                                       {
                                                                                          if(!_loc17_)
                                                                                          {
                                                                                             addr331:
                                                                                             _loc7_ = §_-Pj§.§_-0Bw§(_loc3_);
                                                                                             _loc8_ = §_-08§.§_-rJ§(_loc7_);
                                                                                             if(_loc16_ || this)
                                                                                             {
                                                                                                §_-xe§.§_-0Ec§ = _loc8_;
                                                                                                if(_loc16_)
                                                                                                {
                                                                                                   addr362:
                                                                                                   §§push(this.§_-s0§);
                                                                                                   if(!(_loc17_ && _loc1_))
                                                                                                   {
                                                                                                      (§§pop() as §_-0X§).§_-8i§();
                                                                                                      if(_loc16_ || this)
                                                                                                      {
                                                                                                         §_-qI§ = false;
                                                                                                         if(!(_loc17_ && _loc2_))
                                                                                                         {
                                                                                                            §§goto(addr465);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr477);
                                                                                                   }
                                                                                                   §§goto(addr486);
                                                                                                }
                                                                                                §§goto(addr519);
                                                                                             }
                                                                                             §§goto(addr614);
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          this.§_-BX§(§_-j3§);
                                                                                          if(_loc16_)
                                                                                          {
                                                                                             §_-08§.§_-07f§("backgrounds1");
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr362);
                                                                                    }
                                                                                    §§goto(addr331);
                                                                                 }
                                                                                 §§goto(addr328);
                                                                                 §§push(!§§pop());
                                                                              }
                                                                              §§goto(addr328);
                                                                           }
                                                                           §§goto(addr314);
                                                                        }
                                                                        §§goto(addr328);
                                                                     }
                                                                     §§goto(addr323);
                                                                  }
                                                                  §§goto(addr322);
                                                               }
                                                               §§goto(addr331);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr396);
                                                            }
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr396);
                                                }
                                                §§goto(addr260);
                                             }
                                             §§goto(addr396);
                                          }
                                       }
                                       §§goto(addr246);
                                    }
                                    §§goto(addr200);
                                 }
                              }
                              §§goto(addr192);
                           }
                           §§goto(addr186);
                        }
                        §§goto(addr190);
                     }
                     §§goto(addr189);
                  }
                  continue loop0;
               }
            }
         }
      }
      
      private function onUiInteraction(param1:§_-Bt§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.uiInteractionHandler(param1.§_-G§,param1.§_-zT§,param1.§_-02o§);
         }
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§_-wU§) : void
      {
         var _loc22_:Boolean = false;
         var _loc23_:Boolean = true;
         var _loc4_:§_-rD§ = null;
         var _loc5_:* = 0;
         var _loc6_:* = null;
         var _loc7_:§_-Ev§ = null;
         var _loc8_:* = NaN;
         var _loc9_:* = null;
         var _loc10_:* = 0;
         var _loc11_:* = 0;
         var _loc12_:§_-0-w§ = null;
         var _loc13_:* = null;
         var _loc14_:* = 0;
         var _loc15_:§_-0-w§ = null;
         var _loc16_:* = null;
         var _loc17_:Array = null;
         var _loc18_:* = null;
         var _loc19_:String = null;
         if(_loc23_ || param1)
         {
            if(param3 is §_-rD§)
            {
               addr71:
               _loc4_ = param3 as §_-rD§;
               if(!(_loc22_ && this))
               {
                  §§push(param2);
                  if(_loc23_ || param2)
                  {
                     if(§§pop().length > 1)
                     {
                        if(!(_loc22_ && param3))
                        {
                           §§push(_loc4_.mParentContainer);
                           if(!_loc22_)
                           {
                              if(§§pop() is §_-Ny§)
                              {
                                 if(!(_loc22_ && param3))
                                 {
                                    addr167:
                                    §§push(_loc4_.mParentContainer);
                                 }
                                 loop43:
                                 while(true)
                                 {
                                    addr112:
                                    while(true)
                                    {
                                       §§push(this.§_-s0§);
                                       loop45:
                                       while(!_loc22_)
                                       {
                                          §§pop().setText(_loc6_,"Textfield_CategoryTitle");
                                          loop46:
                                          while(true)
                                          {
                                             if(_loc23_ || param2)
                                             {
                                                addr127:
                                                if(_loc23_ || param1)
                                                {
                                                   §§push(this.§_-s0§);
                                                   if(!_loc23_)
                                                   {
                                                      break;
                                                   }
                                                   continue;
                                                }
                                                addr178:
                                                while(true)
                                                {
                                                   §§push(this.§_-s0§);
                                                   break loop45;
                                                   §§goto(addr127);
                                                }
                                             }
                                             addr207:
                                             while(true)
                                             {
                                                §§push(param2);
                                                if(_loc23_ || this)
                                                {
                                                   addr219:
                                                   §§push(§§pop().substr("CATEGORY".length));
                                                   while(true)
                                                   {
                                                      _loc6_ = §§pop();
                                                      continue loop43;
                                                   }
                                                   addr219:
                                                }
                                                §§goto(addr219);
                                                continue loop46;
                                             }
                                          }
                                       }
                                       while(true)
                                       {
                                          §§push((§§pop() as §_-0X§).§_-00i§(param2));
                                          if(_loc23_)
                                          {
                                             §§push(int(§§pop()));
                                             if(!_loc22_)
                                             {
                                                §§push(§§pop());
                                                if(!(_loc22_ && param2))
                                                {
                                                   _loc5_ = §§pop();
                                                   if(!(_loc23_ || this))
                                                   {
                                                      addr222:
                                                      var _loc20_:* = §§pop();
                                                      var _loc21_:* = (_loc4_.mParentContainer as §_-Ny§).§_-057§;
                                                      addr241:
                                                      for each(_loc7_ in _loc21_)
                                                      {
                                                         (_loc7_ as §_-0-w§).§_-Is§();
                                                         §§goto(addr241);
                                                      }
                                                      if(!_loc22_)
                                                      {
                                                         (param3 as §_-0-w§).§_-MM§();
                                                         this.§_-0-5§();
                                                         addr349:
                                                      }
                                                      break;
                                                      addr344:
                                                   }
                                                   addr205:
                                                   §§push(-1);
                                                }
                                                if(§§pop() == §§pop())
                                                {
                                                   break;
                                                }
                                                §§goto(addr207);
                                             }
                                          }
                                          §§goto(addr205);
                                       }
                                       addr350:
                                       §§push(param2);
                                       if(!(_loc22_ && param1))
                                       {
                                          if(§§pop().toUpperCase().indexOf("OVER") > -1)
                                          {
                                             if(!_loc22_)
                                             {
                                                §§push(param2);
                                                if(_loc23_)
                                                {
                                                   §§push(§§pop().toUpperCase().substr(4));
                                                   if(_loc23_)
                                                   {
                                                      addr374:
                                                      _loc9_ = §§pop();
                                                      if(_loc23_)
                                                      {
                                                         §§push(this.§_-s0§);
                                                         if(!(_loc22_ && param3))
                                                         {
                                                            §§push((§§pop() as §_-0X§).§_-00i§(_loc9_));
                                                            if(!_loc22_)
                                                            {
                                                               §§push(int(§§pop()));
                                                               if(!_loc22_)
                                                               {
                                                                  _loc10_ = §§pop();
                                                                  if(_loc23_ || this)
                                                                  {
                                                                     §§push(0);
                                                                     if(!_loc22_)
                                                                     {
                                                                        _loc11_ = §§pop();
                                                                        if(_loc23_)
                                                                        {
                                                                           §§push(0);
                                                                           if(_loc23_ || param1)
                                                                           {
                                                                              _loc20_ = §§pop();
                                                                              if(_loc23_)
                                                                              {
                                                                                 _loc21_ = ((param3 as §_-rD§).mParentContainer as §_-Ny§).§_-057§;
                                                                                 loop23:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§hasnext(_loc21_,_loc20_));
                                                                                    if(_loc23_)
                                                                                    {
                                                                                       if(!§§pop())
                                                                                       {
                                                                                          if(!_loc22_)
                                                                                          {
                                                                                             if(_loc23_ || param3)
                                                                                             {
                                                                                                if(_loc23_ || param2)
                                                                                                {
                                                                                                   addr535:
                                                                                                   §§push(param2);
                                                                                                   if(_loc23_)
                                                                                                   {
                                                                                                      if(§§pop().toUpperCase().indexOf("OUT") > -1)
                                                                                                      {
                                                                                                         if(!(_loc22_ && this))
                                                                                                         {
                                                                                                            §§push(param2);
                                                                                                            if(!_loc22_)
                                                                                                            {
                                                                                                               addr553:
                                                                                                               §§push(§§pop().toUpperCase().substr(3));
                                                                                                               if(!_loc22_)
                                                                                                               {
                                                                                                                  _loc13_ = §§pop();
                                                                                                                  if(_loc23_)
                                                                                                                  {
                                                                                                                     loop0:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(this.§_-s0§);
                                                                                                                        if(!_loc22_)
                                                                                                                        {
                                                                                                                           §§push((§§pop() as §_-0X§).§_-00i§(_loc13_));
                                                                                                                           loop1:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(int(§§pop()));
                                                                                                                              if(!_loc23_)
                                                                                                                              {
                                                                                                                                 addr1356:
                                                                                                                                 break;
                                                                                                                                 addr763:
                                                                                                                              }
                                                                                                                              _loc14_ = §§pop();
                                                                                                                              if(_loc22_ && param3)
                                                                                                                              {
                                                                                                                                 return;
                                                                                                                              }
                                                                                                                              §§push(0);
                                                                                                                              if(!_loc23_)
                                                                                                                              {
                                                                                                                                 break;
                                                                                                                              }
                                                                                                                              if(_loc22_ && this)
                                                                                                                              {
                                                                                                                                 continue;
                                                                                                                              }
                                                                                                                              loop31:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 _loc11_ = §§pop();
                                                                                                                                 if(!(_loc22_ && param3))
                                                                                                                                 {
                                                                                                                                    addr1355:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(true)
                                                                                                                                       {
                                                                                                                                          §§push(0);
                                                                                                                                          if(_loc23_)
                                                                                                                                          {
                                                                                                                                             break loop1;
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       continue loop0;
                                                                                                                                    }
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       loop47:
                                                                                                                                       switch(§§pop())
                                                                                                                                       {
                                                                                                                                          case 0:
                                                                                                                                             addr803:
                                                                                                                                             §_-xe§.§_-0Ec§.§_-mI§();
                                                                                                                                             this.§_-ak§();
                                                                                                                                             loop5:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                this.§_-0-5§();
                                                                                                                                                addr792:
                                                                                                                                                while(!_loc23_)
                                                                                                                                                {
                                                                                                                                                   continue loop5;
                                                                                                                                                }
                                                                                                                                                break loop47;
                                                                                                                                             }
                                                                                                                                             break;
                                                                                                                                             addr798:
                                                                                                                                             addr804:
                                                                                                                                          case 1:
                                                                                                                                             §§push(§_-xe§.§_-0Ec§);
                                                                                                                                             if(!(_loc22_ && this))
                                                                                                                                             {
                                                                                                                                                §§pop().§_-0BC§();
                                                                                                                                                this.§_-ak§();
                                                                                                                                                addr767:
                                                                                                                                                if(!(_loc22_ && param1))
                                                                                                                                                {
                                                                                                                                                   break;
                                                                                                                                                }
                                                                                                                                                §§goto(addr792);
                                                                                                                                                addr788:
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                §§goto(addr803);
                                                                                                                                             }
                                                                                                                                             §§goto(addr798);
                                                                                                                                          case 2:
                                                                                                                                             this.§_-UP§();
                                                                                                                                             addr756:
                                                                                                                                             if(!(_loc22_ && this))
                                                                                                                                             {
                                                                                                                                                §§goto(addr763);
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                §§goto(addr767);
                                                                                                                                             }
                                                                                                                                          case 3:
                                                                                                                                             addr742:
                                                                                                                                             this.§_-s0§.getItemByName("AvatarSharing").setVisibility(false);
                                                                                                                                             addr743:
                                                                                                                                             if(_loc23_ || param3)
                                                                                                                                             {
                                                                                                                                                break;
                                                                                                                                             }
                                                                                                                                             §§goto(addr756);
                                                                                                                                             break;
                                                                                                                                             addr739:
                                                                                                                                             addr741:
                                                                                                                                             addr740:
                                                                                                                                          case 4:
                                                                                                                                             §§push(this.§_-s0§);
                                                                                                                                             if(_loc23_)
                                                                                                                                             {
                                                                                                                                                break loop0;
                                                                                                                                             }
                                                                                                                                             §§goto(addr739);
                                                                                                                                             break;
                                                                                                                                          case 5:
                                                                                                                                             §§push(§_-Pj§.§_-qM§(this.§_-UY§));
                                                                                                                                             if(_loc23_ || this)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop());
                                                                                                                                                if(_loc23_)
                                                                                                                                                {
                                                                                                                                                   addr677:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      _loc16_ = §§pop();
                                                                                                                                                      loop18:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(!(_loc22_ && param2))
                                                                                                                                                         {
                                                                                                                                                            if(_loc23_ || this)
                                                                                                                                                            {
                                                                                                                                                               if(!_loc23_)
                                                                                                                                                               {
                                                                                                                                                                  break;
                                                                                                                                                               }
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  addr643:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     AngryBirdsFP11.§_-07§.§_-DE§();
                                                                                                                                                                     if(!_loc23_)
                                                                                                                                                                     {
                                                                                                                                                                        break loop47;
                                                                                                                                                                     }
                                                                                                                                                                     this.§_-04a§ = [];
                                                                                                                                                                     if(_loc22_ && this)
                                                                                                                                                                     {
                                                                                                                                                                        break loop47;
                                                                                                                                                                     }
                                                                                                                                                                     continue loop18;
                                                                                                                                                                  }
                                                                                                                                                                  continue loop18;
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr743);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            addr726:
                                                                                                                                                            if(!(_loc22_ && param1))
                                                                                                                                                            {
                                                                                                                                                               this.§_-4v§();
                                                                                                                                                               break loop31;
                                                                                                                                                               addr733:
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr788);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr767);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr804);
                                                                                                                                                   }
                                                                                                                                                   addr677:
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             addr813:
                                                                                                                                             _loc17_ = §§pop().split("-");
                                                                                                                                             if(!(_loc22_ && param2))
                                                                                                                                             {
                                                                                                                                                _loc20_ = 0;
                                                                                                                                                if(_loc23_)
                                                                                                                                                {
                                                                                                                                                   _loc21_ = _loc17_;
                                                                                                                                                   if(_loc23_)
                                                                                                                                                   {
                                                                                                                                                      for each(_loc19_ in _loc21_)
                                                                                                                                                      {
                                                                                                                                                      }
                                                                                                                                                      addr871:
                                                                                                                                                      if(_loc23_ || this)
                                                                                                                                                      {
                                                                                                                                                         §_-05J§.addCallback("purchaseComplete",this.§_-04I§);
                                                                                                                                                         §_-05J§.§_-0At§("placeOrder",_loc16_);
                                                                                                                                                         addr1086:
                                                                                                                                                         break;
                                                                                                                                                         addr1092:
                                                                                                                                                         addr1086:
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         this.§_-0-5§();
                                                                                                                                                         addr1000:
                                                                                                                                                         break;
                                                                                                                                                         addr1000:
                                                                                                                                                         addr1019:
                                                                                                                                                      }
                                                                                                                                                      addr868:
                                                                                                                                                   }
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §_-OY§.§_-nm§(_loc19_);
                                                                                                                                                         do
                                                                                                                                                         {
                                                                                                                                                            this.§_-04a§.push(_loc19_);
                                                                                                                                                         }
                                                                                                                                                         while(!(_loc23_ || param1));
                                                                                                                                                         
                                                                                                                                                         if(!(_loc23_ || param2))
                                                                                                                                                         {
                                                                                                                                                            break;
                                                                                                                                                         }
                                                                                                                                                         if(false)
                                                                                                                                                         {
                                                                                                                                                            continue;
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr868);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr871);
                                                                                                                                             }
                                                                                                                                             §§goto(addr1000);
                                                                                                                                          case 6:
                                                                                                                                             this.§_-0CP§ = false;
                                                                                                                                             addr1072:
                                                                                                                                             this.§_-s0§.getItemByName("WaitingForReply").setVisibility(true);
                                                                                                                                             §§push(§_-xe§.§_-0Ec§.§_-Fa§());
                                                                                                                                             if(_loc23_)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop());
                                                                                                                                             }
                                                                                                                                             _loc18_ = §§pop();
                                                                                                                                             this.§_-XC§(_loc18_);
                                                                                                                                             this.§_-0-5§();
                                                                                                                                             break;
                                                                                                                                             addr1069:
                                                                                                                                             addr1070:
                                                                                                                                             addr1073:
                                                                                                                                             addr1080:
                                                                                                                                             addr1056:
                                                                                                                                             addr1071:
                                                                                                                                             addr1065:
                                                                                                                                             addr1051:
                                                                                                                                          case 7:
                                                                                                                                             this.§_-0CP§ = true;
                                                                                                                                             loop12:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(_loc23_)
                                                                                                                                                {
                                                                                                                                                   §§push(this.§_-s0§);
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc22_)
                                                                                                                                                      {
                                                                                                                                                         §§push("WaitingForReply");
                                                                                                                                                         while(_loc23_ || param3)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop().getItemByName(§§pop()));
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(true);
                                                                                                                                                               addr1035:
                                                                                                                                                               while(!_loc22_)
                                                                                                                                                               {
                                                                                                                                                                  §§pop().setVisibility(§§pop());
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     this.§_-XC§("");
                                                                                                                                                                     addr1005:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(!(_loc23_ || this))
                                                                                                                                                                        {
                                                                                                                                                                           continue loop12;
                                                                                                                                                                        }
                                                                                                                                                                        if(_loc23_ || param2)
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr1019);
                                                                                                                                                                        }
                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr1092);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1086);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1072);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         addr1026:
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr1069);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1070);
                                                                                                                                                   }
                                                                                                                                                   addr1023:
                                                                                                                                                }
                                                                                                                                                §§goto(addr1086);
                                                                                                                                             }
                                                                                                                                             break;
                                                                                                                                          case 8:
                                                                                                                                             this.§_-2B§.removeEventListener(§_-Bt§.§_-KB§,this.onUiInteraction);
                                                                                                                                             addr985:
                                                                                                                                             if(!_loc22_)
                                                                                                                                             {
                                                                                                                                                if(_loc23_)
                                                                                                                                                {
                                                                                                                                                   if(!(_loc22_ && param1))
                                                                                                                                                   {
                                                                                                                                                      this.deActivate();
                                                                                                                                                      break;
                                                                                                                                                      addr974:
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   §§goto(addr1005);
                                                                                                                                                }
                                                                                                                                                §§goto(addr1073);
                                                                                                                                             }
                                                                                                                                             §§goto(addr1000);
                                                                                                                                          case 9:
                                                                                                                                             §§push(this.§_-s0§);
                                                                                                                                             if(_loc23_)
                                                                                                                                             {
                                                                                                                                                §§push("ButtonEasterEgg2");
                                                                                                                                                if(!(_loc22_ && this))
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop().getItemByName(§§pop()));
                                                                                                                                                   if(!_loc22_)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc22_)
                                                                                                                                                      {
                                                                                                                                                         §§push(false);
                                                                                                                                                         if(!_loc22_)
                                                                                                                                                         {
                                                                                                                                                            §§pop().setVisibility(§§pop());
                                                                                                                                                            addr963:
                                                                                                                                                            if(_loc23_ || param2)
                                                                                                                                                            {
                                                                                                                                                               (AngryBirdsFP11.sUserProgress as §_-09d§).setEggUnlocked("1000-2");
                                                                                                                                                               addr922:
                                                                                                                                                               if(!_loc22_)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc23_ || param1)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc23_ || param1)
                                                                                                                                                                     {
                                                                                                                                                                        addr891:
                                                                                                                                                                        break;
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1080);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1056);
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr1038);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr985);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1000);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1035);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1071);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1034);
                                                                                                                                                }
                                                                                                                                                §§goto(addr1026);
                                                                                                                                             }
                                                                                                                                             §§goto(addr1023);
                                                                                                                                          case 10:
                                                                                                                                             this.§_-0-5§();
                                                                                                                                             addr896:
                                                                                                                                             if(!(_loc22_ && this))
                                                                                                                                             {
                                                                                                                                                if(_loc23_ || param1)
                                                                                                                                                {
                                                                                                                                                   if(!_loc22_)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc22_)
                                                                                                                                                      {
                                                                                                                                                         break;
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr974);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   §§goto(addr963);
                                                                                                                                                }
                                                                                                                                                §§goto(addr1065);
                                                                                                                                             }
                                                                                                                                             §§goto(addr922);
                                                                                                                                          case 11:
                                                                                                                                             this.§_-0-5§();
                                                                                                                                             if(!_loc22_)
                                                                                                                                             {
                                                                                                                                                if(!_loc22_)
                                                                                                                                                {
                                                                                                                                                   if(true)
                                                                                                                                                   {
                                                                                                                                                      break;
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr891);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                §§goto(addr896);
                                                                                                                                             }
                                                                                                                                             §§goto(addr1051);
                                                                                                                                       }
                                                                                                                                       §§goto(addr1356);
                                                                                                                                    }
                                                                                                                                    addr512:
                                                                                                                                    addr1355:
                                                                                                                                 }
                                                                                                                                 break;
                                                                                                                              }
                                                                                                                              §§goto(addr1356);
                                                                                                                           }
                                                                                                                           _loc20_ = §§pop();
                                                                                                                           if(_loc23_ || param1)
                                                                                                                           {
                                                                                                                              addr574:
                                                                                                                              _loc21_ = ((param3 as §_-rD§).mParentContainer as §_-Ny§).§_-057§;
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§hasnext(_loc21_,_loc20_));
                                                                                                                                 break loop23;
                                                                                                                              }
                                                                                                                              addr617:
                                                                                                                              if(!_loc22_)
                                                                                                                              {
                                                                                                                                 §§goto(addr1097);
                                                                                                                                 §§push(param2);
                                                                                                                                 addr620:
                                                                                                                                 addr799:
                                                                                                                              }
                                                                                                                              §§goto(addr733);
                                                                                                                              addr616:
                                                                                                                              addr614:
                                                                                                                           }
                                                                                                                           §§goto(addr617);
                                                                                                                           addr523:
                                                                                                                        }
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     §§push("WaitingForReply");
                                                                                                                     if(_loc23_)
                                                                                                                     {
                                                                                                                        §§push(§§pop().getItemByName(§§pop()));
                                                                                                                        if(!(_loc22_ && param1))
                                                                                                                        {
                                                                                                                           §§push(true);
                                                                                                                           if(_loc23_ || this)
                                                                                                                           {
                                                                                                                              §§pop().setVisibility(§§pop());
                                                                                                                              §§goto(addr726);
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              §§goto(addr742);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§goto(addr741);
                                                                                                                        }
                                                                                                                        §§goto(addr742);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        §§goto(addr740);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr620);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr813);
                                                                                                         }
                                                                                                         §§goto(addr694);
                                                                                                      }
                                                                                                      §§goto(addr799);
                                                                                                   }
                                                                                                   §§goto(addr677);
                                                                                                }
                                                                                                §§goto(addr512);
                                                                                             }
                                                                                             §§goto(addr617);
                                                                                          }
                                                                                          §§goto(addr616);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          _loc12_ = §§nextvalue(_loc20_,_loc21_);
                                                                                          if(_loc23_)
                                                                                          {
                                                                                             if(_loc11_ == _loc10_)
                                                                                             {
                                                                                                (_loc12_ as §_-0-w§).§_-MM§();
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!_loc22_)
                                                                                                   {
                                                                                                      loop25:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         _loc11_++;
                                                                                                         if(_loc22_)
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         if(!(_loc22_ && this))
                                                                                                         {
                                                                                                            while(false)
                                                                                                            {
                                                                                                               continue loop25;
                                                                                                            }
                                                                                                            continue loop23;
                                                                                                            addr450:
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            addr465:
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            (_loc12_ as §_-0-w§).§_-Is§();
                                                                                                         }
                                                                                                      }
                                                                                                      continue;
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§goto(addr452);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr465);
                                                                                          }
                                                                                          §§goto(addr450);
                                                                                       }
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       _loc15_ = §§nextvalue(_loc20_,_loc21_);
                                                                                       if(!(_loc22_ && param1))
                                                                                       {
                                                                                          if(_loc11_ == _loc14_)
                                                                                          {
                                                                                             if(_loc23_)
                                                                                             {
                                                                                                (_loc15_ as §_-0-w§).§_-Is§();
                                                                                                if(_loc22_ && this)
                                                                                                {
                                                                                                   continue;
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       _loc11_++;
                                                                                       continue;
                                                                                    }
                                                                                    §§goto(addr617);
                                                                                 }
                                                                              }
                                                                              §§goto(addr574);
                                                                           }
                                                                           §§goto(addr1355);
                                                                        }
                                                                        §§goto(addr767);
                                                                     }
                                                                     §§goto(addr523);
                                                                  }
                                                                  §§goto(addr1356);
                                                               }
                                                               §§goto(addr504);
                                                            }
                                                            §§goto(addr1355);
                                                         }
                                                         §§goto(addr742);
                                                      }
                                                      §§goto(addr803);
                                                   }
                                                   §§goto(addr553);
                                                }
                                                §§goto(addr677);
                                             }
                                             §§goto(addr1355);
                                          }
                                          §§goto(addr535);
                                       }
                                       §§goto(addr374);
                                    }
                                 }
                                 addr220:
                              }
                              §§goto(addr350);
                           }
                           if(((§§pop() as §_-Ny§).mParentContainer as §_-05d§).mName.toUpperCase() == "REPEATER_TABS")
                           {
                              §§goto(addr178);
                           }
                           else
                           {
                              if(((_loc4_.mParentContainer as §_-Ny§).mParentContainer as §_-05d§).mName.toUpperCase() == "REPEATER_ITEMS")
                              {
                                 if(_loc23_ || this)
                                 {
                                    §§push(Number(param2.indexOf("REMOVE_")));
                                    loop32:
                                    while(true)
                                    {
                                       §§push(_loc8_ = §§pop());
                                       loop33:
                                       while(true)
                                       {
                                          §§push(-1);
                                          addr329:
                                          while(§§pop() != §§pop())
                                          {
                                             §§push(_loc8_);
                                             if(_loc23_)
                                             {
                                                continue loop32;
                                             }
                                             continue loop33;
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr330);
                              }
                              §§goto(addr350);
                           }
                        }
                        §§goto(addr167);
                     }
                     §§goto(addr350);
                  }
                  §§goto(addr219);
               }
               §§goto(addr220);
            }
            §§goto(addr350);
         }
         §§goto(addr71);
      }
      
      private function §_-4v§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §_-OY§.§_-0-X§();
            loop0:
            while(true)
            {
               AngryBirdsFP11.§_-07§.§_-DE§();
               do
               {
                  §_-05J§.addCallback("permissionRequestComplete",this.permissionRequestComplete);
                  continue loop0;
               }
               while(!(_loc1_ || _loc1_));
               
            }
         }
      }
      
      private function permissionRequestComplete(param1:String) : void
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         var _loc2_:§_-zA§ = null;
         var _loc3_:int = 0;
         var _loc4_:BitmapData = null;
         var _loc5_:Matrix = null;
         var _loc6_:* = NaN;
         var _loc7_:§_-rD§ = null;
         var _loc8_:* = 0;
         var _loc9_:Bitmap = null;
         var _loc10_:DisplayObject = null;
         if(_loc11_)
         {
            §_-OY§.§_-uI§();
            loop0:
            while(true)
            {
               §_-05J§.§_-tG§("permissionRequestComplete",this.permissionRequestComplete);
               loop1:
               while(true)
               {
                  §§push(this.§_-s0§);
                  while(true)
                  {
                     §§push("WaitingForReply");
                     addr131:
                     while(true)
                     {
                        §§push(§§pop().getItemByName(§§pop()));
                        addr132:
                        while(true)
                        {
                           §§push(false);
                           addr133:
                           while(true)
                           {
                              §§pop().setVisibility(§§pop());
                              continue loop0;
                           }
                        }
                     }
                     addr53:
                     if(_loc12_ && param1)
                     {
                        continue;
                     }
                     §§push("ShareAvatarWindow");
                     if(!_loc12_)
                     {
                        if(!(_loc12_ && _loc3_))
                        {
                           §§push(§§pop().getItemByName(§§pop()));
                           if(_loc11_ || param1)
                           {
                              addr78:
                              §§push(true);
                              if(!(_loc12_ && param1))
                              {
                                 §§pop().setVisibility(§§pop());
                                 if(_loc11_)
                                 {
                                    if(false)
                                    {
                                       while(param1 == "true")
                                       {
                                          if(_loc11_)
                                          {
                                             if(_loc12_)
                                             {
                                                continue loop1;
                                             }
                                             §§push(this.§_-s0§);
                                             loop9:
                                             while(true)
                                             {
                                                §§push("AvatarSharing");
                                                addr102:
                                                while(true)
                                                {
                                                   §§push(§§pop().getItemByName(§§pop()));
                                                   addr103:
                                                   while(!(_loc12_ && this))
                                                   {
                                                      §§push(true);
                                                      while(!(_loc12_ && _loc2_))
                                                      {
                                                         §§pop().setVisibility(§§pop());
                                                         while(_loc11_ || this)
                                                         {
                                                            continue loop9;
                                                         }
                                                         continue loop0;
                                                         §§goto(addr78);
                                                      }
                                                      §§goto(addr133);
                                                   }
                                                   §§goto(addr132);
                                                }
                                             }
                                          }
                                          §§goto(addr119);
                                       }
                                       addr309:
                                       return;
                                       addr91:
                                    }
                                    _loc2_ = new §_-zA§();
                                    if(_loc11_)
                                    {
                                       _loc2_.§_-Cs§();
                                       if(_loc11_)
                                       {
                                          _loc3_ = 173;
                                       }
                                    }
                                    _loc4_ = _loc2_.render(§_-xe§.§_-0Ec§.§_-Fa§(),null,_loc3_);
                                    _loc5_ = new Matrix();
                                    if(!(_loc12_ && _loc3_))
                                    {
                                       §§push(_loc3_ / 100);
                                       if(_loc11_)
                                       {
                                          §§push(§§pop() / 2);
                                          if(!(_loc12_ && _loc2_))
                                          {
                                             §§push(Number(§§pop()));
                                          }
                                       }
                                       _loc6_ = §§pop();
                                       if(!_loc12_)
                                       {
                                          addr212:
                                          _loc5_.scale(_loc6_,_loc6_);
                                       }
                                       _loc8_ = int((_loc7_ = this.§_-s0§.getItemByName("ShareAvatarWindow")).mClip.numChildren - 1);
                                       addr263:
                                       if(_loc8_ > 0)
                                       {
                                          if((_loc10_ = _loc7_.mClip.getChildAt(_loc8_)) is Bitmap)
                                          {
                                             if(_loc11_)
                                             {
                                                _loc10_.parent.removeChild(_loc10_);
                                                if(_loc11_ || param1)
                                                {
                                                   addr253:
                                                   §§push(_loc8_);
                                                   if(!(_loc12_ && _loc2_))
                                                   {
                                                      §§push(§§pop() - 1);
                                                   }
                                                   _loc8_ = §§pop();
                                                }
                                                §§goto(addr263);
                                             }
                                          }
                                          §§goto(addr253);
                                       }
                                       (_loc9_ = new Bitmap(_loc4_,"auto",true)).x = 110;
                                       if(_loc11_ || param1)
                                       {
                                          _loc9_.y = 52;
                                          if(_loc11_ || this)
                                          {
                                             addr303:
                                             _loc7_.mClip.addChildAt(_loc9_,1);
                                          }
                                          §§goto(addr309);
                                       }
                                       §§goto(addr303);
                                    }
                                    §§goto(addr212);
                                 }
                                 §§goto(addr119);
                              }
                              §§goto(addr111);
                           }
                           §§goto(addr103);
                        }
                        §§goto(addr131);
                     }
                     §§goto(addr102);
                  }
               }
            }
         }
         while(true)
         {
            §§goto(addr91);
         }
      }
      
      private function §_-UP§() : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         if(_loc9_)
         {
            §§push(this.§_-s0§);
            while(true)
            {
               §§push("AvatarSharing");
               addr84:
               while(true)
               {
                  §§push(§§pop().getItemByName(§§pop()));
                  addr85:
                  while(true)
                  {
                     §§push(false);
                     addr86:
                     while(true)
                     {
                        §§pop().setVisibility(§§pop());
                     }
                  }
               }
            }
            addr83:
         }
         loop4:
         while(true)
         {
            loop5:
            while(true)
            {
               §§push(this.§_-s0§);
               loop6:
               while(true)
               {
                  if(!_loc10_)
                  {
                     §§push("ShareAvatarWindow");
                     loop7:
                     while(true)
                     {
                        if(_loc9_ || this)
                        {
                           §§push(§§pop().getItemByName(§§pop()));
                           while(true)
                           {
                              if(_loc10_)
                              {
                                 break loop7;
                              }
                              §§push(false);
                              while(!(_loc10_ && this))
                              {
                                 §§pop().setVisibility(§§pop());
                                 while(!_loc10_)
                                 {
                                    §§push(this.§_-s0§);
                                    if(!(_loc10_ && _loc3_))
                                    {
                                       continue loop7;
                                    }
                                    continue loop6;
                                 }
                                 continue loop4;
                              }
                              §§goto(addr86);
                              addr37:
                              §§push(§§pop().getItemByName(§§pop()));
                              if(!(_loc9_ || _loc1_))
                              {
                                 continue;
                              }
                              §§push(true);
                              if(_loc9_)
                              {
                                 §§pop().setVisibility(§§pop());
                                 if(!_loc10_)
                                 {
                                    if(true)
                                    {
                                       var _loc1_:§_-zA§ = new §_-zA§();
                                       if(_loc9_)
                                       {
                                          _loc1_.§_-Cs§();
                                       }
                                       var _loc2_:int = 500;
                                       var _loc3_:BitmapData = _loc1_.render(§_-xe§.§_-0Ec§.§_-Fa§(),null,_loc2_);
                                       var _loc4_:Matrix = new Matrix();
                                       §§push(_loc2_ / 100);
                                       if(!(_loc10_ && _loc1_))
                                       {
                                          §§push(§§pop() / 2);
                                          if(!(_loc10_ && _loc3_))
                                          {
                                             §§push(Number(§§pop()));
                                          }
                                       }
                                       var _loc5_:* = §§pop();
                                       if(_loc9_)
                                       {
                                          _loc4_.scale(_loc5_,_loc5_);
                                       }
                                    }
                                    continue loop5;
                                    var _loc7_:MovieClip;
                                    var _loc6_:Class;
                                    (_loc7_ = new (_loc6_ = §_-Fc§.§_-YE§("WatermarkPlayOnFacebook"))()).x = _loc2_ - _loc7_.width;
                                    if(_loc9_ || _loc2_)
                                    {
                                       _loc7_.y = _loc2_ - _loc7_.height;
                                       if(!_loc10_)
                                       {
                                          _loc3_.draw(_loc7_,_loc4_,null,null,null,true);
                                       }
                                    }
                                    §§push((AngryBirdsFP11.sUserProgress as §_-09d§).§_-0x§);
                                    if(!_loc10_)
                                    {
                                       §§push(§§pop());
                                    }
                                    var _loc8_:* = §§pop();
                                    if(!_loc10_)
                                    {
                                       §_-Gi§.§_-c0§(_loc3_,§_-06E§,_loc8_,this.§_-5e§,this.§_-ZQ§);
                                    }
                                    return;
                                 }
                              }
                              else
                              {
                                 §§goto(addr70);
                              }
                              §§goto(addr78);
                           }
                        }
                     }
                     §§goto(addr85);
                  }
                  else
                  {
                     §§goto(addr83);
                  }
               }
            }
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.deActivate();
            while(true)
            {
               §_-05J§.§_-tG§("purchaseComplete",this.§_-04I§);
               loop1:
               while(_loc1_ || this)
               {
                  this.§_-2B§.removeEventListener(§_-Bt§.§_-KB§,this.onUiInteraction);
                  while(true)
                  {
                     preClose();
                     if(_loc1_ || this)
                     {
                        if(_loc1_ || this)
                        {
                           break;
                        }
                        continue loop1;
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr69);
      }
      
      private function §_-5e§(param1:*) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:String = param1.toString();
         if(!(_loc4_ && _loc2_))
         {
            this.§_-s0§.getItemByName("WaitingForReply").setVisibility(false);
         }
      }
      
      private function §_-ZQ§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.§_-s0§.getItemByName("WaitingForReply").setVisibility(false);
         }
      }
      
      override public function close() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.close();
            do
            {
               this.§_-g2§ = false;
            }
            while(!(_loc1_ || _loc1_));
            
         }
      }
      
      override public function open(param1:Boolean = true) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:§_-059§ = null;
         if(!_loc5_)
         {
            super.open(param1);
            if(_loc6_ || this)
            {
               addr32:
               §_-OY§.§_-T6§();
            }
            var _loc2_:§_-k6§ = this.§_-s0§.getItemByName("AvatarSavedAnimation") as §_-k6§;
            if(!_loc5_)
            {
               _loc2_.setVisibility(false);
            }
            loop0:
            while(true)
            {
               mClip.x = (mClip.stage.stageWidth - 750) / 2;
               loop1:
               while(true)
               {
                  mClip.y = (mClip.stage.stageHeight - 525) / 2;
                  loop2:
                  while(true)
                  {
                     while(this.§_-Vg§)
                     {
                        loop4:
                        while(true)
                        {
                           this.§_-Vg§ = false;
                           while(!_loc5_)
                           {
                              if(_loc6_)
                              {
                                 if(!_loc5_)
                                 {
                                    this.§_-02u§();
                                    if(!_loc5_)
                                    {
                                       if(!(_loc5_ && _loc3_))
                                       {
                                          break loop4;
                                       }
                                       continue loop4;
                                    }
                                    continue;
                                 }
                                 continue loop0;
                              }
                              continue loop1;
                           }
                           continue loop2;
                        }
                        if(true)
                        {
                           break;
                        }
                     }
                     var _loc3_:* = Number(0);
                     addr136:
                     if(_loc3_ < §_-017§.length)
                     {
                        (_loc4_ = §_-017§[_loc3_]).hide();
                        if(_loc6_ || param1)
                        {
                           §§push(_loc3_);
                           if(_loc6_)
                           {
                              §§push(§§pop() + 1);
                              if(!_loc5_)
                              {
                                 addr134:
                                 §§push(Number(§§pop()));
                              }
                              _loc3_ = §§pop();
                              §§goto(addr136);
                           }
                           §§goto(addr134);
                        }
                        §§goto(addr136);
                     }
                     if(_loc6_ || param1)
                     {
                        §§push(§_-08§);
                        if(_loc6_)
                        {
                           if(§§pop().§_-C5§ == null)
                           {
                              if(_loc6_ || _loc3_)
                              {
                                 §§goto(addr171);
                              }
                           }
                           §§goto(addr183);
                        }
                        addr171:
                        §_-08§.§_-071§(§_-j3§,§_-xZ§,§_-17§,§_-017§);
                        if(!(_loc5_ && _loc2_))
                        {
                           addr183:
                           if(!this.§_-g2§)
                           {
                              if(!(_loc5_ && param1))
                              {
                                 addr193:
                                 this.§_-jx§();
                              }
                           }
                        }
                        return;
                     }
                     §§goto(addr193);
                  }
               }
            }
         }
         §§goto(addr32);
      }
      
      public function §_-ak§() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:String = null;
         var _loc4_:Item = null;
         var _loc1_:§_-05d§ = this.§_-s0§.getItemByName("Repeater_Items") as §_-05d§;
         var _loc2_:* = Number(0);
         while(true)
         {
            if(_loc2_ >= §_-xe§.§_-eA§().§_-05v§.length)
            {
               if(!_loc6_)
               {
                  break;
               }
               §§goto(addr147);
            }
            _loc3_ = §_-xe§.§_-eA§().§_-05v§[_loc2_].name;
            if(!_loc5_)
            {
               break;
            }
            if((_loc4_ = §_-xe§.§_-0Ec§.§_-02n§(_loc3_)) == null)
            {
               if(_loc6_ && _loc3_)
               {
                  continue;
               }
               §§push(_loc1_);
               §§push("Repeater_Items_Tab_");
               if(!_loc6_)
               {
                  §§push(§§pop() + _loc2_);
               }
               §§push(§§pop().§_-02B§(§§pop()));
               if(!_loc6_)
               {
                  §§push(_loc3_);
                  if(!(_loc6_ && _loc1_))
                  {
                     §§pop().§_-0BT§(§§pop());
                     if(!_loc5_)
                     {
                        continue;
                     }
                  }
                  else
                  {
                     addr106:
                     §§pop().§_-0BT§(§§pop());
                     if(!(_loc5_ || _loc1_))
                     {
                        continue;
                     }
                  }
                  §§push(_loc2_);
                  if(_loc5_)
                  {
                     §§push(§§pop() + 1);
                     if(_loc5_ || _loc2_)
                     {
                        addr135:
                        §§push(Number(§§pop()));
                     }
                     _loc2_ = §§pop();
                     continue;
                  }
                  §§goto(addr135);
               }
               else
               {
                  addr104:
                  §§push(_loc4_.§_-1h§);
               }
               §§goto(addr106);
            }
            else
            {
               §§push(_loc1_);
               §§push("Repeater_Items_Tab_");
               if(_loc5_ || _loc3_)
               {
                  §§push(§§pop() + _loc2_);
               }
               §§push(§§pop().§_-02B§(§§pop()));
            }
            §§goto(addr104);
         }
         this.§_-0-5§();
         addr147:
      }
      
      public function §_-04I§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:String = null;
         var _loc2_:int = 0;
         for each(_loc1_ in this.§_-04a§)
         {
            if(!(_loc5_ && _loc2_))
            {
               §_-OY§.§_-0h§(_loc1_);
            }
         }
         if(_loc4_ || _loc1_)
         {
            this.§_-04a§ = [];
         }
         while(true)
         {
            §_-05J§.§_-tG§("purchaseComplete",this.§_-04I§);
            while(!_loc5_)
            {
               this.§_-7q§();
               if(!(_loc5_ && _loc1_))
               {
                  return;
               }
            }
         }
      }
      
      private function §_-XC§(param1:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && this))
         {
            this.§_-dZ§ = this.§_-0Au§;
            if(!_loc5_)
            {
               addr29:
               this.§_-0Au§ = param1;
            }
            §§push(§_-P-§);
            §§push(§_-rf§ + "/saveavatar/");
            if(_loc4_)
            {
               §§push(§§pop() + param1);
            }
            var _loc2_:URLRequest = §§pop().§_-0Ak§(§§pop());
            if(_loc4_)
            {
               _loc2_.method = URLRequestMethod.POST;
            }
            var _loc3_:URLLoader = new URLLoader();
            if(_loc4_ || _loc3_)
            {
               _loc3_.addEventListener(Event.COMPLETE,this.§_-lz§);
               while(true)
               {
                  _loc3_.addEventListener(IOErrorEvent.IO_ERROR,this.§_-QE§);
                  addr86:
                  if(!(_loc4_ || param1))
                  {
                     continue;
                  }
                  return;
                  addr93:
               }
            }
            while(true)
            {
               _loc3_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§_-cn§);
               while(!(_loc5_ && _loc3_))
               {
                  _loc3_.load(_loc2_);
                  if(_loc5_ && this)
                  {
                     continue;
                  }
                  §§goto(addr86);
               }
            }
            §§goto(addr93);
         }
         §§goto(addr29);
      }
      
      protected function §_-cn§(param1:SecurityErrorEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §_-EJ§.§_-8H§();
         }
      }
      
      private function §_-lz§(param1:Event) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc2_:Array = null;
         var _loc3_:* = null;
         var _loc4_:§_-k6§ = null;
         if(!_loc8_)
         {
            §§push(this.§_-0Au§);
            if(_loc7_ || _loc2_)
            {
               if(§§pop() != null)
               {
                  loop0:
                  while(true)
                  {
                     (AngryBirdsFP11.sUserProgress as §_-09d§).avatarString = this.§_-0Au§;
                     while(true)
                     {
                        loop2:
                        while(true)
                        {
                           §_-Dk§.§_-86§(new §_-HV§(this.§_-0Au§,(AngryBirdsFP11.sUserProgress as §_-09d§).§_-0x§),true,true);
                           do
                           {
                              §_-pI§.§_-6-§(this.§_-0Au§);
                           }
                           while(_loc8_ && _loc2_);
                           
                           if(!_loc7_)
                           {
                              break;
                           }
                           if(_loc8_)
                           {
                              continue loop0;
                           }
                           while(false)
                           {
                              continue loop2;
                           }
                           _loc2_ = this.§_-0Au§.split("-");
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
                                 loop6:
                                 while(true)
                                 {
                                    while(true)
                                    {
                                       §§push(this.§_-dZ§);
                                       if(!(_loc7_ || this))
                                       {
                                          break;
                                       }
                                       if(§§pop())
                                       {
                                          addr135:
                                          if(!_loc8_)
                                          {
                                             §§push(this.§_-dZ§);
                                             break;
                                          }
                                          §_-OY§.§_-Mb§(_loc3_);
                                       }
                                       else
                                       {
                                          §_-OY§.§_-Mb§(_loc3_);
                                          if(_loc7_)
                                          {
                                             if(_loc7_)
                                             {
                                                if(false)
                                                {
                                                   continue;
                                                }
                                                continue loop4;
                                             }
                                             §§goto(addr135);
                                          }
                                       }
                                       if(!_loc8_)
                                       {
                                          break loop6;
                                       }
                                       continue loop6;
                                    }
                                    if(_loc7_)
                                    {
                                       if(§§pop().indexOf(_loc3_) == -1)
                                       {
                                          §§goto(addr135);
                                       }
                                       break;
                                    }
                                    continue loop5;
                                 }
                                 continue loop4;
                              }
                           }
                        }
                     }
                  }
               }
               if(this.§_-g2§)
               {
                  if(!_loc8_)
                  {
                     §§push(this.§_-s0§);
                     if(!(_loc8_ && _loc3_))
                     {
                        §§push("WaitingForReply");
                        if(_loc7_)
                        {
                           §§push(§§pop().getItemByName(§§pop()));
                           if(!_loc8_)
                           {
                              §§pop().setVisibility(false);
                              addr188:
                              §§push(this.§_-s0§.getItemByName("AvatarSavedAnimation"));
                           }
                           (_loc4_ = §§pop() as §_-k6§).setVisibility(true);
                           if(_loc7_)
                           {
                              _loc4_.mClip.gotoAndPlay(1);
                              if(!_loc7_)
                              {
                              }
                              §§goto(addr206);
                           }
                           this.§_-0-5§();
                           §§goto(addr206);
                        }
                     }
                  }
                  §§goto(addr188);
               }
               addr206:
               return;
            }
            §§goto(addr82);
         }
         §§goto(addr44);
      }
      
      private function §_-QE§(param1:IOErrorEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§_-k6§ = null;
         if(_loc4_ || _loc3_)
         {
            if(this.§_-g2§)
            {
               if(_loc4_ || _loc3_)
               {
                  §§push(this.§_-s0§);
                  if(!_loc3_)
                  {
                     §§push("WaitingForReply");
                     if(_loc4_ || _loc2_)
                     {
                        §§push(§§pop().getItemByName(§§pop()));
                        if(_loc4_ || param1)
                        {
                           §§pop().setVisibility(false);
                           addr82:
                           §§push(this.§_-s0§.getItemByName("AvatarSavedAnimation"));
                        }
                        _loc2_ = §§pop() as §_-k6§;
                        if(!(_loc3_ && _loc2_))
                        {
                           _loc2_.setVisibility(true);
                           if(_loc3_ && this)
                           {
                           }
                           §§goto(addr108);
                        }
                        _loc2_.mClip.gotoAndPlay(1);
                        §§goto(addr108);
                     }
                  }
               }
               §§goto(addr82);
            }
            addr108:
            return;
         }
         §§goto(addr82);
      }
      
      public function §_-8U§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            §_-xe§.§_-0Ec§.§_-8U§(param1);
         }
         do
         {
            this.§_-0-5§();
         }
         while(_loc2_);
         
      }
      
      public function §_-BX§(param1:String) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc4_:§_-059§ = null;
         var _loc5_:Object = null;
         var _loc6_:Item = null;
         var _loc2_:Item = §_-xe§.§_-eA§().§_-yf§(param1);
         var _loc3_:§_-059§ = §_-xe§.§_-0Ec§;
         if(!_loc10_)
         {
            if(_loc2_)
            {
               if(_loc9_)
               {
                  §§push(_loc2_.§_-4k§);
                  if(_loc9_ || _loc2_)
                  {
                     §§push(§§pop().toUpperCase() == "CATEGORYBIRDS");
                     if(_loc9_)
                     {
                        if(§§pop())
                        {
                           if(_loc9_)
                           {
                              §§pop();
                              addr77:
                              if(_loc9_ || param1)
                              {
                                 addr70:
                                 §§push(_loc3_.§_-SZ§().§_-1h§ == _loc2_.§_-1h§);
                                 if(_loc9_)
                                 {
                                    addr75:
                                    §§push(!§§pop());
                                 }
                              }
                              (_loc4_ = §_-08§.§_-071§(_loc2_.§_-1h§,_loc2_.sId,_loc2_.§_-4k§,§_-017§,110,174)).§_-mI§();
                              if(_loc9_ || _loc2_)
                              {
                                 _loc4_.§_-QZ§(_loc2_);
                                 if(!(_loc10_ && _loc2_))
                                 {
                                    if(_loc3_)
                                    {
                                       addr111:
                                       for each(_loc6_ in _loc3_.§_-fm§)
                                       {
                                          §§push(_loc6_.category);
                                          if(!(_loc10_ && _loc3_))
                                          {
                                             if(§§pop().toUpperCase() == "CATEGORYBIRDS")
                                             {
                                                continue;
                                             }
                                             if(!(_loc9_ || _loc2_))
                                             {
                                                continue;
                                             }
                                             §§push(_loc6_.category);
                                          }
                                          if(§§pop().toUpperCase() == "CATEGORYBACKGROUNDS")
                                          {
                                             if(!(_loc9_ || _loc2_))
                                             {
                                                continue;
                                             }
                                             §_-08§.§_-07f§(_loc6_.§_-1h§);
                                             if(_loc10_ && _loc3_)
                                             {
                                                continue;
                                             }
                                          }
                                          _loc4_.§_-QZ§(_loc6_);
                                       }
                                    }
                                    if((_loc5_ = _loc4_.§_-02n§("CATEGORYBACKGROUNDS")) == null)
                                    {
                                       if(!_loc10_)
                                       {
                                          _loc4_.§_-QZ§(§_-xe§.§_-eA§().§_-yf§("Backgrounds1"));
                                          if(_loc9_)
                                          {
                                             addr268:
                                             this.§_-0-5§();
                                             addr201:
                                             addr255:
                                          }
                                       }
                                       return;
                                    }
                                    §§goto(addr201);
                                 }
                              }
                              §§goto(addr111);
                           }
                           §§goto(addr75);
                        }
                        if(§§pop())
                        {
                           §§goto(addr77);
                        }
                        else
                        {
                           if(_loc2_.§_-4k§.toUpperCase() == "CATEGORYBACKGROUNDS")
                           {
                              if(_loc9_ || _loc2_)
                              {
                                 §_-08§.§_-07f§(_loc2_.§_-1h§);
                                 if(!(_loc10_ && param1))
                                 {
                                    §§push(§_-xe§.§_-0Ec§);
                                    if(!_loc10_)
                                    {
                                       §§pop().§_-QZ§(_loc2_);
                                       if(!_loc9_)
                                       {
                                       }
                                    }
                                    else
                                    {
                                       addr246:
                                       §§pop().§_-QZ§(_loc2_);
                                       if(_loc9_ || param1)
                                       {
                                       }
                                    }
                                    §§goto(addr268);
                                 }
                              }
                              §§goto(addr255);
                           }
                           else
                           {
                              §§push(§_-xe§.§_-0Ec§);
                           }
                           §§goto(addr246);
                        }
                     }
                     §§goto(addr75);
                  }
               }
               §§goto(addr70);
            }
            else
            {
               §§push(§_-FK§);
               §§push("[Warining!] Trying to select item that dosen\'t exit. Item id:");
               if(_loc9_ || this)
               {
                  §§push(§§pop() + param1);
               }
               §§pop().log(§§pop());
            }
            §§goto(addr268);
         }
         §§goto(addr77);
      }
      
      private function §_-0-5§() : void
      {
         var _loc19_:Boolean = true;
         var _loc20_:Boolean = false;
         var _loc4_:§_-044§ = null;
         var _loc5_:Item = null;
         var _loc10_:Array = null;
         var _loc11_:* = null;
         var _loc12_:Array = null;
         var _loc13_:* = null;
         var _loc14_:§_-0-w§ = null;
         var _loc15_:§_-0-w§ = null;
         var _loc16_:* = 0;
         var _loc1_:* = 0;
         var _loc2_:Boolean = false;
         §§push((AngryBirdsFP11.sUserProgress as §_-09d§).avatarString);
         if(_loc19_ || _loc1_)
         {
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         if(!(_loc20_ && this))
         {
            §§push(_loc3_);
            if(_loc19_ || _loc3_)
            {
               §§push(§§pop() == null);
               if(!_loc20_)
               {
                  §§push(!§§pop());
                  if(_loc19_)
                  {
                     if(§§pop())
                     {
                        if(!(_loc20_ && _loc3_))
                        {
                           addr91:
                           §§pop();
                           if(!_loc20_)
                           {
                              addr94:
                              §§push(_loc3_);
                              if(_loc19_)
                              {
                                 addr97:
                                 §§push("");
                                 if(!_loc20_)
                                 {
                                    §§push(§§pop() == §§pop());
                                    if(_loc19_)
                                    {
                                       addr104:
                                       addr103:
                                       if(!§§pop())
                                       {
                                          addr107:
                                          _loc10_ = _loc3_.split("-");
                                          addr106:
                                          addr105:
                                          §§push(§_-xe§.§_-0Ec§.§_-Fa§());
                                          if(!_loc20_)
                                          {
                                             §§push(§§pop());
                                             if(_loc19_)
                                             {
                                                §§push(_loc11_ = §§pop());
                                             }
                                          }
                                          _loc12_ = §§pop().split("-");
                                          if(_loc19_)
                                          {
                                             if(_loc10_.length != _loc12_.length)
                                             {
                                                if(!(_loc20_ && this))
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
                                             if(!_loc20_)
                                             {
                                                _loc13_ = §§pop();
                                                if(!(_loc19_ || _loc1_))
                                                {
                                                   continue;
                                                }
                                                §§push(_loc3_);
                                             }
                                             if(§§pop().indexOf(_loc13_) == -1)
                                             {
                                                if(_loc19_ || this)
                                                {
                                                   _loc2_ = true;
                                                }
                                             }
                                          }
                                       }
                                       §§push(0);
                                       if(!_loc20_)
                                       {
                                          _loc17_ = §§pop();
                                          if(_loc19_ || _loc2_)
                                          {
                                             _loc18_ = §_-xe§.§_-eA§().§_-05v§;
                                             loop1:
                                             while(true)
                                             {
                                                §§push(§§hasnext(_loc18_,_loc17_));
                                                if(!_loc20_)
                                                {
                                                   if(§§pop())
                                                   {
                                                      continue;
                                                   }
                                                   if(!_loc20_)
                                                   {
                                                      if(_loc19_)
                                                      {
                                                         if(_loc19_)
                                                         {
                                                            this.§_-UY§ = [];
                                                            if(_loc19_)
                                                            {
                                                               §§push(0);
                                                               if(!_loc20_)
                                                               {
                                                                  _loc17_ = §§pop();
                                                                  if(_loc19_)
                                                                  {
                                                                     addr237:
                                                                     _loc18_ = §_-xe§.§_-0Ec§.§_-fm§;
                                                                     while(true)
                                                                     {
                                                                        §§push(§§hasnext(_loc18_,_loc17_));
                                                                        break loop1;
                                                                     }
                                                                     addr339:
                                                                     if(_loc19_)
                                                                     {
                                                                        §§push(this.§_-s0§);
                                                                        while(true)
                                                                        {
                                                                           §§push("Button_Share");
                                                                           loop55:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop().getItemByName(§§pop()));
                                                                              loop52:
                                                                              while(true)
                                                                              {
                                                                                 §§push(false);
                                                                                 loop53:
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop().setVisibility(§§pop());
                                                                                    loop54:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc1_);
                                                                                       addr920:
                                                                                       loop71:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(0);
                                                                                          loop72:
                                                                                          while(true)
                                                                                          {
                                                                                             if(§§pop() <= §§pop())
                                                                                             {
                                                                                                §§push(this.§_-s0§);
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push("BuyTheseButton");
                                                                                                   loop74:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop().getItemByName(§§pop()));
                                                                                                      loop75:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(false);
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§pop().setVisibility(§§pop());
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(this.§_-s0§);
                                                                                                               loop78:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push("Textfield_Price");
                                                                                                                  loop79:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc19_ || this)
                                                                                                                     {
                                                                                                                        §§push(§§pop().getItemByName(§§pop()));
                                                                                                                        if(_loc19_ || _loc3_)
                                                                                                                        {
                                                                                                                           §§push(false);
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(_loc19_ || _loc2_)
                                                                                                                              {
                                                                                                                                 if(!(_loc20_ && this))
                                                                                                                                 {
                                                                                                                                    §§pop().setVisibility(§§pop());
                                                                                                                                    loop81:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(_loc19_ || _loc2_)
                                                                                                                                       {
                                                                                                                                          §§push(this.§_-s0§);
                                                                                                                                          if(!(_loc20_ && _loc3_))
                                                                                                                                          {
                                                                                                                                             §§push("SetAvatarProfileButton");
                                                                                                                                             loop82:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop().getItemByName(§§pop()));
                                                                                                                                                loop83:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(true);
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(!(_loc20_ && this))
                                                                                                                                                      {
                                                                                                                                                         §§pop().setVisibility(§§pop());
                                                                                                                                                         continue loop81;
                                                                                                                                                      }
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§pop().setVisibility(§§pop());
                                                                                                                                                         addr917:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(this.§_-s0§);
                                                                                                                                                            loop12:
                                                                                                                                                            for(; !(_loc20_ && _loc1_); if(!(_loc19_ || _loc2_))
                                                                                                                                                            {
                                                                                                                                                               continue;
                                                                                                                                                            },§§goto(addr751),§§push("SetFacebookProfileButton"))
                                                                                                                                                            {
                                                                                                                                                               §§push("SetAvatarProfileButton");
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop().getItemByName(§§pop()));
                                                                                                                                                                  loop14:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(false);
                                                                                                                                                                     addr894:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§pop().setVisibility(§§pop());
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(this.§_-0CP§);
                                                                                                                                                                              loop18:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!§§pop())
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc1_);
                                                                                                                                                                                    if(!(_loc19_ || _loc2_))
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop71;
                                                                                                                                                                                    }
                                                                                                                                                                                    §§push(0);
                                                                                                                                                                                    if(!(_loc19_ || _loc3_))
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop72;
                                                                                                                                                                                    }
                                                                                                                                                                                    if(§§pop() <= §§pop())
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(this.§_-s0§);
                                                                                                                                                                                       if(_loc19_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push("SetFacebookProfileButton");
                                                                                                                                                                                          loop19:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc19_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc20_ && this)
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue loop82;
                                                                                                                                                                                                }
                                                                                                                                                                                                if(!_loc19_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue loop74;
                                                                                                                                                                                                }
                                                                                                                                                                                                §§push(§§pop().getItemByName(§§pop()));
                                                                                                                                                                                                if(_loc19_ || _loc2_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!(_loc20_ && _loc3_))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc19_ || _loc2_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr648:
                                                                                                                                                                                                         if(_loc19_ || _loc2_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            (§§pop() as §_-Mu§).setComponentState(§_-rR§.COMPONENT_STATE_ACTIVE_DEFAULT);
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(_loc2_);
                                                                                                                                                                                                               if(_loc20_ && this)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  break;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               if(!§§pop())
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(this.§_-s0§);
                                                                                                                                                                                                                  loop21:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!_loc20_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(!_loc20_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push("SetAvatarProfileButton");
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(_loc19_ || this)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(_loc19_ || _loc1_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(§§pop().getItemByName(§§pop()));
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(!_loc20_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(_loc20_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             break;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          (§§pop() as §_-Mu§).setComponentState(§_-rR§.§_-K1§);
                                                                                                                                                                                                                                          loop24:
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(!(_loc20_ && _loc2_))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(this.§_-s0§);
                                                                                                                                                                                                                                                continue loop21;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             loop28:
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(!(_loc19_ || _loc3_))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   continue loop24;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                if(!_loc20_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(_loc20_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      continue loop81;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      addr379:
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(this.§_-Oj§);
                                                                                                                                                                                                                                                         addr382:
                                                                                                                                                                                                                                                         while(§§pop() == null)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               this.§_-Oj§ = new §_-zA§();
                                                                                                                                                                                                                                                               continue loop28;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         addr940:
                                                                                                                                                                                                                                                         break loop28;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(!_loc20_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(!_loc19_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            continue loop54;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(this.§_-s0§);
                                                                                                                                                                                                                                                            addr709:
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push("SetAvatarProfileButton");
                                                                                                                                                                                                                                                               if(!(_loc20_ && _loc1_))
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(_loc20_ && _loc1_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     continue loop79;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§push(§§pop().getItemByName(§§pop()));
                                                                                                                                                                                                                                                                  loop36:
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     (§§pop() as §_-Mu§).setComponentState(§_-rR§.COMPONENT_STATE_ACTIVE_DEFAULT);
                                                                                                                                                                                                                                                                     addr730:
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(this.§_-s0§);
                                                                                                                                                                                                                                                                        addr664:
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push("SetFacebookProfileButton");
                                                                                                                                                                                                                                                                           addr665:
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(§§pop().getItemByName(§§pop()));
                                                                                                                                                                                                                                                                              if(_loc19_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 continue loop36;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              addr944:
                                                                                                                                                                                                                                                                              addr944:
                                                                                                                                                                                                                                                                              addr944:
                                                                                                                                                                                                                                                                              addr944:
                                                                                                                                                                                                                                                                              addr944:
                                                                                                                                                                                                                                                                              var _loc6_:§_-Mu§ = §§pop() as §_-Mu§;
                                                                                                                                                                                                                                                                              if(_loc19_ || _loc3_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 addr969:
                                                                                                                                                                                                                                                                                 if(_loc6_.mClip.SetAvatarHolder.numChildren > 0)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    _loc6_.mClip.SetAvatarHolder.removeChildAt(0);
                                                                                                                                                                                                                                                                                    if(_loc19_ || _loc3_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§goto(addr969);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§push(§_-xe§.§_-0Ec§.§_-Fa§());
                                                                                                                                                                                                                                                                              if(!(_loc20_ && this))
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(§§pop());
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              var _loc7_:* = §§pop();
                                                                                                                                                                                                                                                                              var _loc8_:Bitmap;
                                                                                                                                                                                                                                                                              (_loc8_ = new Bitmap(this.§_-Oj§.render(_loc7_,null))).x = -8;
                                                                                                                                                                                                                                                                              if(!_loc20_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 _loc8_.y = -12;
                                                                                                                                                                                                                                                                                 if(_loc19_ || _loc1_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    _loc6_.mClip.SetAvatarHolder.addChild(_loc8_);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              var _loc9_:§_-Ny§;
                                                                                                                                                                                                                                                                              if(_loc9_ = this.§_-s0§.getItemByName(this.§_-s0§.§_-0ER§("Repeater_Items")) as §_-Ny§)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(_loc19_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(this.§_-s0§);
                                                                                                                                                                                                                                                                                    if(_loc19_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§push("Page ");
                                                                                                                                                                                                                                                                                       if(_loc19_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§push(_loc9_.§_-TW§);
                                                                                                                                                                                                                                                                                          if(!_loc20_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(§§pop() + (§§pop() + 1).toString());
                                                                                                                                                                                                                                                                                             if(_loc19_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§push("/");
                                                                                                                                                                                                                                                                                                if(!(_loc20_ && this))
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                   if(!_loc20_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      addr1061:
                                                                                                                                                                                                                                                                                                      §§push(§§pop() + _loc9_.§_-ep§);
                                                                                                                                                                                                                                                                                                      if(!(_loc20_ && _loc1_))
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         addr1070:
                                                                                                                                                                                                                                                                                                         §§pop().setText(§§pop(),"Textfield_PageNumber");
                                                                                                                                                                                                                                                                                                         if(_loc19_ || this)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            if(_loc9_.§_-ep§ != 1)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               addr1187:
                                                                                                                                                                                                                                                                                                               §§push(this.§_-s0§);
                                                                                                                                                                                                                                                                                                               if(_loc19_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  addr1190:
                                                                                                                                                                                                                                                                                                                  §§push(§§pop().getItemByName("Textfield_PageNumber"));
                                                                                                                                                                                                                                                                                                                  §§push(true);
                                                                                                                                                                                                                                                                                                                  if(!_loc20_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§pop().setVisibility(§§pop());
                                                                                                                                                                                                                                                                                                                     addr1195:
                                                                                                                                                                                                                                                                                                                     §§push(this.§_-s0§);
                                                                                                                                                                                                                                                                                                                     if(_loc19_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        if(!_loc20_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           addr1144:
                                                                                                                                                                                                                                                                                                                           §§push("Button_Scroll1");
                                                                                                                                                                                                                                                                                                                           if(_loc19_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              if(_loc19_ || _loc1_)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 addr1154:
                                                                                                                                                                                                                                                                                                                                 §§push(§§pop().getItemByName(§§pop()));
                                                                                                                                                                                                                                                                                                                                 if(_loc19_ || this)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    if(!_loc20_)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       addr1164:
                                                                                                                                                                                                                                                                                                                                       §§push(true);
                                                                                                                                                                                                                                                                                                                                       if(!(_loc20_ && _loc2_))
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          if(!(_loc20_ && _loc1_))
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             §§pop().setVisibility(§§pop());
                                                                                                                                                                                                                                                                                                                                             addr1179:
                                                                                                                                                                                                                                                                                                                                             if(_loc19_)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                §§push(this.§_-s0§);
                                                                                                                                                                                                                                                                                                                                                if(_loc19_ || _loc1_)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   §§push("Button_Scroll2");
                                                                                                                                                                                                                                                                                                                                                   if(!(_loc20_ && this))
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      if(!(_loc20_ && _loc1_))
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         if(!(_loc20_ && _loc2_))
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            §§push(§§pop().getItemByName(§§pop()));
                                                                                                                                                                                                                                                                                                                                                            if(!_loc20_)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               if(!_loc20_)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  §§push(true);
                                                                                                                                                                                                                                                                                                                                                                  if(_loc19_)
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     §§pop().setVisibility(§§pop());
                                                                                                                                                                                                                                                                                                                                                                     if(_loc19_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        if(_loc20_)
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr1195);
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                        if(_loc20_)
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           addr1232:
                                                                                                                                                                                                                                                                                                                                                                           if(!_loc20_)
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              addr1241:
                                                                                                                                                                                                                                                                                                                                                                              if(!_loc20_)
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 addr1243:
                                                                                                                                                                                                                                                                                                                                                                                 §§push(this.§_-s0§);
                                                                                                                                                                                                                                                                                                                                                                                 if(!_loc20_)
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    addr1203:
                                                                                                                                                                                                                                                                                                                                                                                    addr1202:
                                                                                                                                                                                                                                                                                                                                                                                    §§push(§§pop().getItemByName("Button_Scroll2"));
                                                                                                                                                                                                                                                                                                                                                                                    if(!(_loc20_ && _loc2_))
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       addr1221:
                                                                                                                                                                                                                                                                                                                                                                                       §§push(false);
                                                                                                                                                                                                                                                                                                                                                                                       if(_loc20_)
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          addr1231:
                                                                                                                                                                                                                                                                                                                                                                                          §§pop().setVisibility(§§pop());
                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr1232);
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                       §§pop().setVisibility(§§pop());
                                                                                                                                                                                                                                                                                                                                                                                       return;
                                                                                                                                                                                                                                                                                                                                                                                       addr1079:
                                                                                                                                                                                                                                                                                                                                                                                       addr1224:
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    addr1246:
                                                                                                                                                                                                                                                                                                                                                                                    §§pop().setVisibility(false);
                                                                                                                                                                                                                                                                                                                                                                                    addr1230:
                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr1231);
                                                                                                                                                                                                                                                                                                                                                                                    §§push(this.§_-s0§.getItemByName("Button_Scroll1"));
                                                                                                                                                                                                                                                                                                                                                                                    §§push(false);
                                                                                                                                                                                                                                                                                                                                                                                    addr1245:
                                                                                                                                                                                                                                                                                                                                                                                    addr1247:
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr1245);
                                                                                                                                                                                                                                                                                                                                                                                 §§push(§§pop().getItemByName("Textfield_PageNumber"));
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr1243);
                                                                                                                                                                                                                                                                                                                                                                              §§push(this.§_-s0§);
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr1247);
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr1079);
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr1179);
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr1164);
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               §§goto(addr1230);
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            §§goto(addr1154);
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         §§goto(addr1230);
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      §§goto(addr1190);
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   §§goto(addr1144);
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                §§goto(addr1195);
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             §§goto(addr1224);
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          §§goto(addr1246);
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       §§goto(addr1190);
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    §§goto(addr1203);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§goto(addr1190);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §§goto(addr1243);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§goto(addr1202);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§goto(addr1203);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr1187);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr1221);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr1243);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr1241);
                                                                                                                                                                                                                                                                                                            addr1078:
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr1195);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr1203);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr1154);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr1070);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr1203);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr1061);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr1154);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr1144);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr1078);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr1221);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        continue loop36;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               addr943:
                                                                                                                                                                                                                                                               §§goto(addr944);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(this.§_-s0§);
                                                                                                                                                                                                                                                            addr782:
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push("SetAvatarProfileButton");
                                                                                                                                                                                                                                                               addr783:
                                                                                                                                                                                                                                                               addr925:
                                                                                                                                                                                                                                                               while(!_loc20_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(§§pop().getItemByName(§§pop()));
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     (§§pop() as §_-Mu§).setComponentState(§_-rR§.COMPONENT_STATE_ACTIVE_DEFAULT);
                                                                                                                                                                                                                                                                     addr791:
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(_loc19_ || this)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(this.§_-s0§);
                                                                                                                                                                                                                                                                           if(!_loc19_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              break loop28;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           if(!(_loc20_ && _loc1_))
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              continue loop12;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           continue loop78;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        addr922:
                                                                                                                                                                                                                                                                        addr922:
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(this.§_-s0§);
                                                                                                                                                                                                                                                                           break loop12;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     continue loop12;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(_loc20_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     continue loop55;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§push(§§pop().getItemByName(§§pop()));
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(true);
                                                                                                                                                                                                                                                                     addr929:
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(!_loc19_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           continue loop53;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§pop().setVisibility(§§pop());
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr648);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         addr780:
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr932);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   addr703:
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             addr942:
                                                                                                                                                                                                                                             §§goto(addr943);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§goto(addr786);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr791);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    continue loop14;
                                                                                                                                                                                                                                    addr547:
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr783);
                                                                                                                                                                                                                                 §§goto(addr786);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              else
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§goto(addr665);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              if(_loc19_ || _loc2_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 continue loop19;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr782);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr664);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr574);
                                                                                                                                                                                                               if(_loc20_ && this)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§push(this.§_-Oj§);
                                                                                                                                                                                                               if(!(_loc20_ && _loc3_))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§pop().§_-Cs§();
                                                                                                                                                                                                                  if(!(_loc20_ && _loc3_))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!_loc20_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(!(_loc20_ && _loc3_))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!(_loc20_ && _loc2_))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(false)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§goto(addr379);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr940);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr730);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§goto(addr417);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        addr596:
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr384);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr388);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr382);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            continue loop18;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr928);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr915);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   else
                                                                                                                                                                                                   {
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc20_ && _loc3_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue loop83;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         if(_loc20_ && _loc3_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue loop75;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         if(!_loc19_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue loop52;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         (§§pop() as §_-Mu§).setComponentState(§_-rR§.§_-K1§);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      continue loop83;
                                                                                                                                                                                                      addr752:
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr773);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr944);
                                                                                                                                                                                             }
                                                                                                                                                                                             else
                                                                                                                                                                                             {
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                }
                                                                                                                                                                                                addr751:
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr752);
                                                                                                                                                                                          }
                                                                                                                                                                                          continue loop82;
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr942);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr703);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr780);
                                                                                                                                                                              }
                                                                                                                                                                              continue loop71;
                                                                                                                                                                              addr827:
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  if(_loc20_ && _loc3_)
                                                                                                                                                                  {
                                                                                                                                                                     continue;
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr591);
                                                                                                                                                                  §§push(§§pop().getItemByName(§§pop()));
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr925);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr942);
                                                                                                                                       }
                                                                                                                                       §§goto(addr917);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr929);
                                                                                                                              }
                                                                                                                              §§goto(addr894);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr944);
                                                                                                                     }
                                                                                                                     §§goto(addr914);
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr922);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr447);
                                                                     addr338:
                                                                     addr336:
                                                                  }
                                                                  §§goto(addr339);
                                                               }
                                                               §§goto(addr920);
                                                            }
                                                            §§goto(addr922);
                                                         }
                                                         §§goto(addr707);
                                                      }
                                                      §§goto(addr237);
                                                   }
                                                   §§goto(addr338);
                                                }
                                                break;
                                             }
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   _loc5_ = §§nextvalue(_loc17_,_loc18_);
                                                   _loc15_ = this.§_-s0§.getItemByName(_loc5_.category.toUpperCase()) as §_-0-w§;
                                                   if(_loc19_ || _loc3_)
                                                   {
                                                      §§push(§_-iY§(_loc5_.§_-1h§));
                                                      while(true)
                                                      {
                                                         §§push(int(§§pop()));
                                                         addr334:
                                                         while(true)
                                                         {
                                                            _loc16_ = §§pop();
                                                         }
                                                         addr271:
                                                         if(_loc20_ && this)
                                                         {
                                                            continue;
                                                         }
                                                         §§push(_loc16_);
                                                         if(_loc19_)
                                                         {
                                                            addr283:
                                                            §§push(int(§§pop() + §§pop()));
                                                            if(!(_loc20_ && this))
                                                            {
                                                               if(!_loc20_)
                                                               {
                                                                  _loc1_ = §§pop();
                                                                  if(!_loc20_)
                                                                  {
                                                                     if(_loc19_ || this)
                                                                     {
                                                                        if(false)
                                                                        {
                                                                           loop62:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc16_);
                                                                              addr306:
                                                                              while(true)
                                                                              {
                                                                                 §§push(0);
                                                                                 addr307:
                                                                                 while(true)
                                                                                 {
                                                                                    if(§§pop() > §§pop())
                                                                                    {
                                                                                       while(_loc19_ || _loc3_)
                                                                                       {
                                                                                          this.§_-UY§.push(_loc5_);
                                                                                          while(!_loc20_)
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc1_);
                                                                                                if(!_loc20_)
                                                                                                {
                                                                                                   §§goto(addr271);
                                                                                                }
                                                                                                §§goto(addr283);
                                                                                             }
                                                                                             §§goto(addr334);
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             continue loop62;
                                                                                          }
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          _loc15_.§_-0v§(_loc5_.§_-1h§,_loc16_);
                                                                                          §§goto(addr328);
                                                                                       }
                                                                                       addr308:
                                                                                       addr335:
                                                                                    }
                                                                                    §§goto(addr267);
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr336);
                                                                     }
                                                                     §§goto(addr308);
                                                                  }
                                                                  §§goto(addr319);
                                                               }
                                                               §§goto(addr334);
                                                            }
                                                            §§goto(addr306);
                                                         }
                                                         §§goto(addr307);
                                                      }
                                                   }
                                                   §§goto(addr335);
                                                }
                                                §§goto(addr237);
                                             }
                                          }
                                          §§goto(addr237);
                                       }
                                       §§goto(addr920);
                                    }
                                    §§goto(addr104);
                                 }
                                 §§goto(addr107);
                              }
                              §§goto(addr106);
                           }
                           §§goto(addr105);
                        }
                        §§goto(addr103);
                     }
                     §§goto(addr104);
                  }
               }
               §§goto(addr91);
            }
            §§goto(addr97);
         }
         §§goto(addr94);
      }
   }
}
