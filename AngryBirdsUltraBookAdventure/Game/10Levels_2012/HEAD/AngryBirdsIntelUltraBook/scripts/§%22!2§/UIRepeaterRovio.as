package §"!2§
{
   import §'N§.Log;
   import §>!<§.UIButtonGroupRovio;
   import §>!<§.UIComponentInteractiveRovio;
   import §>!<§.UIComponentRovio;
   import §>!<§.UIEventListenerRovio;
   import §@!H§.§-!H§;
   import com.rovio.assets.AssetCache;
   import flash.display.*;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class UIRepeaterRovio extends UIContainerRovio
   {
      
      public static const §9P§:int = 0;
      
      public static const §+f§:int = 1;
      
      public static const §-!6§:int = 2;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §9P§ = 0;
         }
         while(true)
         {
            §+f§ = 1;
            while(!_loc2_)
            {
               §-!6§ = 2;
               if(_loc1_ || _loc2_)
               {
                  return;
               }
            }
         }
      }
      
      public var §[N§:String;
      
      public var §]f§:Class;
      
      public var §1v§:String = null;
      
      public var §5@§:Vector.<UIButtonGroupRovio>;
      
      public var §#u§:int;
      
      public var §7!`§:Number;
      
      public var §2#§:Number;
      
      public var §9!$§:Number;
      
      public var §%!<§:Number;
      
      public var §<v§:Number;
      
      public var §^z§:Number;
      
      public var §+r§:Number;
      
      public var §>D§:Number;
      
      public var mButtonMarginX2:Number;
      
      public var mButtonMarginY2:Number;
      
      public var §,,§:int;
      
      public var §<W§:Number;
      
      public var §;!=§:String = "";
      
      public var §^!X§:int;
      
      public var §!I§:int;
      
      public var §@!]§:GlowFilter;
      
      public var §2!!§:Boolean = true;
      
      public var §32§:int;
      
      public var §9!1§:int;
      
      public var §^!e§:Number = 0;
      
      public var §^!D§:Number = 0;
      
      public var §>!#§:Number = 0;
      
      public var §,l§:Number = 0;
      
      public var §@+§:Boolean = false;
      
      public var §5!3§:Boolean = false;
      
      public var §6!X§:MovieClip = null;
      
      public function UIRepeaterRovio(param1:XML, param2:UIContainerRovio, param3:§-!H§, param4:MovieClip = null)
      {
         /*
          * Decompilation error
          * Timeout (1 minute) was reached
          * Instruction count: 1489
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to timeout");
      }
      
      public function §>!0§(param1:Array = null, param2:Class = null) : void
      {
         var _loc19_:Boolean = false;
         var _loc20_:Boolean = true;
         var _loc4_:String = null;
         var _loc5_:MovieClip = null;
         var _loc6_:XML = null;
         var _loc7_:UIRepeaterTabRovio = null;
         var _loc8_:UIButtonGroupRovio = null;
         var _loc9_:* = 0;
         var _loc10_:* = 0;
         var _loc11_:* = 0;
         var _loc12_:XML = null;
         var _loc13_:UIRepeaterButtonRovio = null;
         var _loc14_:MovieClip = null;
         var _loc15_:* = 0;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         var _loc18_:* = 0;
         if(!_loc19_)
         {
            if(param2 == null)
            {
               if(_loc20_ || param1)
               {
                  param2 = UIRepeaterButtonRovio;
                  addr71:
                  this.§5@§ = new Vector.<UIButtonGroupRovio>();
                  if(!(_loc19_ && _loc3_))
                  {
                     this.§'e§();
                     if(_loc20_)
                     {
                        §§goto(addr91);
                     }
                     §§goto(addr98);
                  }
                  §§goto(addr108);
               }
               addr91:
               §§push(param1);
               if(_loc20_)
               {
                  if(§§pop() == null)
                  {
                     if(_loc20_)
                     {
                        addr98:
                        param1 = getParentView().getRepeaterDataXML(mName);
                     }
                     §§goto(addr108);
                  }
                  §§push(param1);
               }
               if(!§§pop())
               {
                  addr108:
                  param1 = new Array();
                  §§goto(addr112);
               }
               addr112:
               §§push(0);
               if(_loc20_)
               {
                  §§push(int(§§pop()));
               }
               var _loc3_:* = §§pop();
               loop0:
               while(true)
               {
                  if(_loc3_ >= param1.length)
                  {
                     if(!(_loc19_ && _loc3_))
                     {
                        break;
                     }
                     §§goto(addr1056);
                  }
                  §§push(mName + "_Tab_");
                  if(!_loc19_)
                  {
                     §§push(§§pop() + _loc3_);
                  }
                  _loc4_ = §§pop();
                  if(!(_loc20_ || param2))
                  {
                     break;
                  }
                  _loc5_ = new MovieClip();
                  _loc6_ = <Container/>;
                  if(!_loc19_)
                  {
                     _loc6_.@name = _loc4_;
                  }
                  _loc7_ = new UIRepeaterTabRovio(_loc6_,this,null,_loc5_);
                  if(!(_loc19_ && this))
                  {
                     § !]§.push(_loc7_);
                  }
                  _loc8_ = new UIButtonGroupRovio(this.§9!1§,_loc4_);
                  if(_loc20_)
                  {
                     this.§5@§.push(_loc8_);
                     loop1:
                     while(true)
                     {
                        §§push(this.§<v§);
                        loop2:
                        while(true)
                        {
                           §§push(int(§§pop()));
                           loop3:
                           while(true)
                           {
                              _loc9_ = §§pop();
                              if(_loc20_)
                              {
                                 §§push(this.§#u§);
                                 loop4:
                                 while(true)
                                 {
                                    §§push(int(§§pop()));
                                    loop5:
                                    while(!_loc19_)
                                    {
                                       _loc10_ = §§pop();
                                       while(!_loc19_)
                                       {
                                          §§push(param1);
                                          if(!_loc19_)
                                          {
                                             §§push(_loc3_);
                                             if(_loc20_ || this)
                                             {
                                                if((§§pop()[§§pop()] as Array).length < _loc10_)
                                                {
                                                   loop7:
                                                   while(_loc20_)
                                                   {
                                                      §§push(param1);
                                                      if(_loc20_)
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(_loc3_);
                                                            if(_loc20_ || param2)
                                                            {
                                                               §§push(int((§§pop()[§§pop()] as Array).length));
                                                               if(_loc20_ || _loc3_)
                                                               {
                                                                  _loc10_ = §§pop();
                                                                  loop12:
                                                                  while(true)
                                                                  {
                                                                     addr212:
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§!I§);
                                                                        if(!_loc19_)
                                                                        {
                                                                           if(!_loc20_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           if(§§pop() == §9P§)
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 if(_loc20_ || param1)
                                                                                 {
                                                                                    §§push(this.§9!$§);
                                                                                    if(_loc20_ || param1)
                                                                                    {
                                                                                       continue loop2;
                                                                                    }
                                                                                    addr273:
                                                                                    §§push(int(§§pop() / 2));
                                                                                    if(!(_loc20_ || param2))
                                                                                    {
                                                                                       addr1040:
                                                                                       break;
                                                                                       addr982:
                                                                                       addr1033:
                                                                                    }
                                                                                    _loc9_ = §§pop();
                                                                                    if(!(_loc19_ && param1))
                                                                                    {
                                                                                       if(!_loc20_)
                                                                                       {
                                                                                          continue loop7;
                                                                                       }
                                                                                    }
                                                                                    _loc8_.§!>§("");
                                                                                    if(!(_loc19_ && param2))
                                                                                    {
                                                                                       addr993:
                                                                                       _loc7_.§#K§(this.§#u§,this.§7!`§,this.§2#§,this.§32§ * this.§+r§,this.§32§ * this.§>D§,this.§,,§,this.§32§);
                                                                                       if(!(_loc20_ || _loc3_))
                                                                                       {
                                                                                          continue loop0;
                                                                                       }
                                                                                    }
                                                                                    §§push(_loc3_);
                                                                                    if(!_loc19_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    _loc3_ = §§pop();
                                                                                    continue loop0;
                                                                                 }
                                                                                 continue loop12;
                                                                              }
                                                                              addr1036:
                                                                              §§push(§§pop() + 1);
                                                                              if(_loc20_)
                                                                              {
                                                                                 §§push(int(§§pop()));
                                                                              }
                                                                              §§goto(addr1040);
                                                                              addr222:
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§push(0);
                                                                              if(_loc19_ && param1)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              continue loop4;
                                                                           }
                                                                           addr972:
                                                                           if(§§pop() < (param1[_loc3_] as Array).length)
                                                                           {
                                                                              addr369:
                                                                              _loc12_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[0] as XML;
                                                                              if(!(_loc19_ && this))
                                                                              {
                                                                                 if(((param1[_loc3_] as Array)[_loc11_] as Array)[2])
                                                                                 {
                                                                                    if(!(_loc19_ && _loc3_))
                                                                                    {
                                                                                       _loc7_.§ !]§.push(new param2(_loc12_,_loc7_,((param1[_loc3_] as Array)[_loc11_] as Array)[2] as MovieClip));
                                                                                       if(!_loc19_)
                                                                                       {
                                                                                          addr454:
                                                                                          _loc13_ = _loc7_.§ !]§[_loc7_.§ !]§.length - 1] as UIRepeaterButtonRovio;
                                                                                          if(!_loc19_)
                                                                                          {
                                                                                             §§push(param1);
                                                                                             if(_loc20_ || this)
                                                                                             {
                                                                                                §§push(_loc3_);
                                                                                                if(!_loc19_)
                                                                                                {
                                                                                                   if(((§§pop()[§§pop()] as Array)[_loc11_] as Array)[1] != null)
                                                                                                   {
                                                                                                      if(!_loc19_)
                                                                                                      {
                                                                                                         _loc14_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[1] as MovieClip;
                                                                                                         addr497:
                                                                                                         addr496:
                                                                                                         if(!(_loc19_ && param1))
                                                                                                         {
                                                                                                            _loc13_.setIcon(_loc14_,this.§1v§);
                                                                                                         }
                                                                                                         §§push(this.§^!X§);
                                                                                                         if(_loc20_ || _loc3_)
                                                                                                         {
                                                                                                            addr606:
                                                                                                            if(§§pop() == §+f§)
                                                                                                            {
                                                                                                               addr588:
                                                                                                               §§push(2);
                                                                                                               if(!(_loc19_ && this))
                                                                                                               {
                                                                                                                  §§push(int(§§pop()));
                                                                                                               }
                                                                                                            }
                                                                                                            §§push(this.§,,§);
                                                                                                            if(!(_loc19_ && _loc3_))
                                                                                                            {
                                                                                                               §§push(1);
                                                                                                               if(!_loc19_)
                                                                                                               {
                                                                                                                  if(§§pop() == §§pop())
                                                                                                                  {
                                                                                                                     if(!(_loc19_ && param2))
                                                                                                                     {
                                                                                                                        _loc13_.x = _loc9_ + _loc11_ * this.§+r§;
                                                                                                                        if(_loc20_ || param2)
                                                                                                                        {
                                                                                                                           §§push(_loc13_);
                                                                                                                           §§push(this.§^z§);
                                                                                                                           if(_loc20_)
                                                                                                                           {
                                                                                                                              §§push(§§pop() + _loc11_ * this.§>D§);
                                                                                                                           }
                                                                                                                           §§pop().y = §§pop();
                                                                                                                        }
                                                                                                                        addr683:
                                                                                                                        _loc8_.§2!d§(_loc13_);
                                                                                                                        addr968:
                                                                                                                        if(_loc20_)
                                                                                                                        {
                                                                                                                           if(!_loc19_)
                                                                                                                           {
                                                                                                                              §§push(_loc11_);
                                                                                                                              if(!(_loc19_ && param2))
                                                                                                                              {
                                                                                                                                 §§push(§§pop() + 1);
                                                                                                                                 if(!_loc19_)
                                                                                                                                 {
                                                                                                                                    addr654:
                                                                                                                                    if(_loc20_)
                                                                                                                                    {
                                                                                                                                       if(!(_loc19_ && this))
                                                                                                                                       {
                                                                                                                                          if(_loc20_)
                                                                                                                                          {
                                                                                                                                             addr666:
                                                                                                                                             §§push(int(§§pop()));
                                                                                                                                             if(_loc20_ || param2)
                                                                                                                                             {
                                                                                                                                                addr673:
                                                                                                                                                _loc11_ = §§pop();
                                                                                                                                                if(!(_loc19_ && this))
                                                                                                                                                {
                                                                                                                                                   if(false)
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr683);
                                                                                                                                                   }
                                                                                                                                                   addr969:
                                                                                                                                                   §§push(_loc11_);
                                                                                                                                                   if(_loc20_)
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr972);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1036);
                                                                                                                                                }
                                                                                                                                                §§goto(addr683);
                                                                                                                                             }
                                                                                                                                             addr893:
                                                                                                                                             if(!(_loc19_ && _loc3_))
                                                                                                                                             {
                                                                                                                                                _loc18_ = §§pop();
                                                                                                                                                addr901:
                                                                                                                                                if(!(_loc19_ && _loc3_))
                                                                                                                                                {
                                                                                                                                                   if(this.§2!!§)
                                                                                                                                                   {
                                                                                                                                                      addr789:
                                                                                                                                                      §§push(_loc13_);
                                                                                                                                                      §§push(_loc9_ + _loc18_ * this.§+r§);
                                                                                                                                                      if(_loc20_ || this)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc16_ * this.§#u§);
                                                                                                                                                         if(_loc20_ || this)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() * this.§+r§);
                                                                                                                                                         }
                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                      }
                                                                                                                                                      §§pop().x = §§pop();
                                                                                                                                                      if(!_loc19_)
                                                                                                                                                      {
                                                                                                                                                         if(!_loc19_)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc13_);
                                                                                                                                                            §§push(this.§^z§);
                                                                                                                                                            if(!(_loc19_ && _loc3_))
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() + _loc17_ * this.mButtonMarginY2);
                                                                                                                                                            }
                                                                                                                                                            §§pop().y = §§pop();
                                                                                                                                                            addr777:
                                                                                                                                                            if(!(_loc19_ && _loc3_))
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr683);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr789);
                                                                                                                                                            addr823:
                                                                                                                                                         }
                                                                                                                                                         addr956:
                                                                                                                                                         §§push(_loc11_);
                                                                                                                                                         if(_loc20_)
                                                                                                                                                         {
                                                                                                                                                            addr914:
                                                                                                                                                            §§push(_loc16_);
                                                                                                                                                            if(!(_loc19_ && this))
                                                                                                                                                            {
                                                                                                                                                               addr929:
                                                                                                                                                               §§push(§§pop() * this.§#u§);
                                                                                                                                                               if(_loc20_)
                                                                                                                                                               {
                                                                                                                                                                  addr928:
                                                                                                                                                                  §§push(§§pop() * this.§,,§);
                                                                                                                                                               }
                                                                                                                                                               if(_loc20_)
                                                                                                                                                               {
                                                                                                                                                                  addr934:
                                                                                                                                                                  §§push((§§pop() - §§pop()) / this.§#u§);
                                                                                                                                                                  if(!(_loc19_ && this))
                                                                                                                                                                  {
                                                                                                                                                                     addr943:
                                                                                                                                                                     _loc17_ = §§pop();
                                                                                                                                                                     §§push(_loc11_);
                                                                                                                                                                     §§push(_loc16_);
                                                                                                                                                                     if(!(_loc19_ && this))
                                                                                                                                                                     {
                                                                                                                                                                        §§push(this.§#u§);
                                                                                                                                                                        if(_loc20_ || this)
                                                                                                                                                                        {
                                                                                                                                                                           if(!(_loc19_ && param2))
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                              if(_loc20_ || this)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!_loc19_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(this.§,,§);
                                                                                                                                                                                    if(_loc20_ || param2)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr870:
                                                                                                                                                                                       §§push(§§pop() - §§pop() * §§pop());
                                                                                                                                                                                       if(_loc20_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!(_loc19_ && param2))
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!_loc19_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(this.§#u§);
                                                                                                                                                                                                if(!(_loc19_ && this))
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr892:
                                                                                                                                                                                                   §§goto(addr893);
                                                                                                                                                                                                   §§push(int(§§pop() % §§pop()));
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr934);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr892);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr928);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr929);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr870);
                                                                                                                                                                           }
                                                                                                                                                                           addr955:
                                                                                                                                                                           _loc16_ = §§pop() / (§§pop() * §§pop());
                                                                                                                                                                           addr954:
                                                                                                                                                                           §§goto(addr956);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr929);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr914);
                                                                                                                                                                     addr944:
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr954);
                                                                                                                                                            }
                                                                                                                                                            addr950:
                                                                                                                                                            §§goto(addr954);
                                                                                                                                                            §§push(this.§,,§);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr943);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr901);
                                                                                                                                                   }
                                                                                                                                                   _loc13_.x = _loc9_ + _loc17_ * this.mButtonMarginX2;
                                                                                                                                                   addr750:
                                                                                                                                                   if(!(_loc19_ && param1))
                                                                                                                                                   {
                                                                                                                                                      if(!_loc19_)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc13_);
                                                                                                                                                         §§push(this.§^z§);
                                                                                                                                                         if(_loc20_)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc18_);
                                                                                                                                                            if(_loc20_)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() * this.§>D§);
                                                                                                                                                               if(_loc20_ || param1)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                                                                  if(_loc20_)
                                                                                                                                                                  {
                                                                                                                                                                     addr730:
                                                                                                                                                                     addr716:
                                                                                                                                                                     §§push(_loc16_ * this.§#u§);
                                                                                                                                                                     if(_loc20_ || this)
                                                                                                                                                                     {
                                                                                                                                                                        addr726:
                                                                                                                                                                        §§push(§§pop() * this.§>D§);
                                                                                                                                                                     }
                                                                                                                                                                     §§pop().y = §§pop() + §§pop();
                                                                                                                                                                     if(_loc20_ || param2)
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr683);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr750);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr730);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr726);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr716);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr730);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr789);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr777);
                                                                                                                                                   addr908:
                                                                                                                                                }
                                                                                                                                                §§goto(addr968);
                                                                                                                                             }
                                                                                                                                             §§goto(addr950);
                                                                                                                                             §§push(this.§#u§);
                                                                                                                                          }
                                                                                                                                          §§goto(addr955);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr943);
                                                                                                                                 }
                                                                                                                                 §§goto(addr666);
                                                                                                                              }
                                                                                                                              §§goto(addr654);
                                                                                                                           }
                                                                                                                           §§goto(addr944);
                                                                                                                        }
                                                                                                                        §§goto(addr730);
                                                                                                                     }
                                                                                                                     §§goto(addr943);
                                                                                                                  }
                                                                                                                  §§goto(addr666);
                                                                                                                  §§push(_loc11_);
                                                                                                               }
                                                                                                               §§goto(addr929);
                                                                                                            }
                                                                                                            §§goto(addr673);
                                                                                                         }
                                                                                                         _loc15_ = §§pop();
                                                                                                         addr557:
                                                                                                         _loc14_.y -= _loc14_.height / 2;
                                                                                                         addr605:
                                                                                                         if(!(_loc19_ && this))
                                                                                                         {
                                                                                                            if(this.§1v§ == null)
                                                                                                            {
                                                                                                               if(!(_loc19_ && _loc3_))
                                                                                                               {
                                                                                                                  if(!_loc19_)
                                                                                                                  {
                                                                                                                     _loc14_.y -= _loc15_;
                                                                                                                     addr551:
                                                                                                                     if(!_loc19_)
                                                                                                                     {
                                                                                                                        if(_loc20_)
                                                                                                                        {
                                                                                                                           if(false)
                                                                                                                           {
                                                                                                                              §§goto(addr557);
                                                                                                                           }
                                                                                                                           §§goto(addr606);
                                                                                                                        }
                                                                                                                        §§goto(addr605);
                                                                                                                     }
                                                                                                                     §§goto(addr557);
                                                                                                                  }
                                                                                                                  §§goto(addr588);
                                                                                                               }
                                                                                                               §§goto(addr551);
                                                                                                            }
                                                                                                            §§goto(addr606);
                                                                                                         }
                                                                                                         addr598:
                                                                                                         §§goto(addr598);
                                                                                                      }
                                                                                                      §§goto(addr823);
                                                                                                   }
                                                                                                   §§goto(addr606);
                                                                                                }
                                                                                                §§goto(addr497);
                                                                                             }
                                                                                             §§goto(addr496);
                                                                                          }
                                                                                          §§goto(addr908);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr454);
                                                                                 }
                                                                                 _loc7_.§ !]§.push(new param2(_loc12_,_loc7_,new this.§]f§() as MovieClip));
                                                                              }
                                                                              §§goto(addr454);
                                                                           }
                                                                           if(!_loc19_)
                                                                           {
                                                                              §§goto(addr982);
                                                                           }
                                                                           §§goto(addr993);
                                                                        }
                                                                        §§goto(addr1036);
                                                                     }
                                                                     continue loop5;
                                                                  }
                                                               }
                                                               §§goto(addr972);
                                                            }
                                                            §§goto(addr369);
                                                         }
                                                         addr318:
                                                      }
                                                      §§goto(addr369);
                                                   }
                                                   continue;
                                                }
                                                §§goto(addr212);
                                             }
                                             §§goto(addr369);
                                          }
                                          §§goto(addr318);
                                       }
                                       continue loop1;
                                    }
                                    continue loop3;
                                 }
                              }
                              §§goto(addr1040);
                           }
                        }
                     }
                  }
                  §§goto(addr993);
               }
               if(param1.length > 1)
               {
               }
               addr1056:
               return;
            }
            §§goto(addr71);
         }
         §§goto(addr108);
      }
      
      public function get §'f§() : int
      {
         return this.§#u§;
      }
      
      public function get § a§() : int
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§'f§);
            if(!_loc1_)
            {
               if(§§pop() == 0)
               {
                  if(_loc2_ || _loc2_)
                  {
                     §§push(0);
                  }
                  else
                  {
                     §§goto(addr54);
                  }
               }
               §§goto(addr54);
            }
            return §§pop();
         }
         addr54:
         §§push(this.§+'§(this.§;!=§).§8!G§.length / this.§'f§);
         if(_loc2_ || _loc1_)
         {
            return §§pop() + 1;
         }
      }
      
      override public function containerEventOccured(param1:int, param2:String, param3:UIEventListenerRovio) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:UIButtonGroupRovio = null;
         var _loc4_:UIRepeaterTabRovio = getItemByName(this.§;!=§) as UIRepeaterTabRovio;
         if(!_loc7_)
         {
            §§push(param2);
            loop0:
            for(; §§pop().toUpperCase() != "SCROLL_LEFT"; if(_loc7_ && param2)
            {
               continue;
            },§§push(§§pop().length > 0),if(!_loc7_)
            {
               §§push(Boolean(§§pop()));
               loop2:
               while(true)
               {
                  §§push(§§pop());
                  loop3:
                  while(true)
                  {
                     §§push(Boolean(§§pop()));
                     loop4:
                     while(true)
                     {
                        if(§§pop())
                        {
                           loop5:
                           while(true)
                           {
                              §§pop();
                              if(!(_loc7_ && this))
                              {
                                 if(!_loc7_)
                                 {
                                    while(true)
                                    {
                                       §§push(param1);
                                       loop7:
                                       while(true)
                                       {
                                          §§push(§§pop() == UIEventListenerRovio.LISTENER_EVENT_MOUSE_DOWN);
                                          if(_loc6_)
                                          {
                                             if(_loc6_ || param3)
                                             {
                                                §§push(Boolean(§§pop()));
                                                loop8:
                                                while(true)
                                                {
                                                   §§push(§§pop());
                                                   if(_loc6_ || param3)
                                                   {
                                                      §§push(Boolean(§§pop()));
                                                   }
                                                   loop9:
                                                   for(; !_loc7_; if(!(_loc6_ || this))
                                                   {
                                                      continue;
                                                   },§§goto(addr70),§§push(Boolean(§§pop())))
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         if(_loc6_ || param2)
                                                         {
                                                            while(true)
                                                            {
                                                               §§pop();
                                                               if(!_loc7_)
                                                               {
                                                                  §§push(param1);
                                                                  if(!(_loc6_ || this))
                                                                  {
                                                                     continue loop7;
                                                                  }
                                                                  §§push(§§pop() == UIEventListenerRovio.LISTENER_EVENT_MOUSE_UP);
                                                                  if(!_loc6_)
                                                                  {
                                                                     continue loop8;
                                                                  }
                                                                  if(!(_loc6_ || param2))
                                                                  {
                                                                     continue loop5;
                                                                  }
                                                                  if(!_loc6_)
                                                                  {
                                                                     continue loop2;
                                                                  }
                                                                  §§push(Boolean(§§pop()));
                                                                  if(!_loc7_)
                                                                  {
                                                                     addr58:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop());
                                                                        if(!_loc7_)
                                                                        {
                                                                           continue loop9;
                                                                        }
                                                                        addr70:
                                                                        if(_loc7_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        if(§§pop())
                                                                        {
                                                                           if(_loc6_ || param3)
                                                                           {
                                                                              continue loop8;
                                                                           }
                                                                           addr259:
                                                                           addr259:
                                                                           addr259:
                                                                           §§push(Boolean(§§pop()));
                                                                        }
                                                                     }
                                                                     continue loop3;
                                                                     addr58:
                                                                  }
                                                                  §§goto(addr260);
                                                               }
                                                               break;
                                                            }
                                                            addr339:
                                                            super.containerEventOccured(param1,param2,param3);
                                                            return;
                                                            addr129:
                                                         }
                                                         §§goto(addr259);
                                                      }
                                                      §§goto(addr58);
                                                   }
                                                   continue loop4;
                                                }
                                             }
                                             else
                                             {
                                                §§goto(addr199);
                                             }
                                             §§goto(addr133);
                                          }
                                          §§goto(addr129);
                                       }
                                    }
                                 }
                                 §§goto(addr200);
                              }
                              §§goto(addr339);
                           }
                        }
                        §§goto(addr58);
                     }
                  }
               }
            },§§goto(addr259))
            {
               §§push(param2);
               while(true)
               {
                  if(§§pop().toUpperCase() != "SCROLL_RIGHT")
                  {
                     §§push(param2);
                     if(!_loc7_)
                     {
                        continue loop0;
                     }
                     continue;
                  }
                  if(_loc6_ || param2)
                  {
                     addr199:
                     if(_loc4_)
                     {
                        §§goto(addr200);
                     }
                     §§goto(addr133);
                  }
                  addr200:
                  if(!(_loc6_ || param2))
                  {
                     break loop0;
                  }
                  _loc4_.§3f§(_loc4_.§?f§ + 1);
                  if(_loc6_ || param1)
                  {
                     if(!_loc7_)
                     {
                        this.§1k§();
                        addr180:
                        if(!_loc6_)
                        {
                           this.§1k§();
                           if(!_loc6_)
                           {
                              addr263:
                              _loc5_ = this.§+'§((param3 as UIComponentRovio).mParentContainer.mName.toUpperCase());
                              if(!_loc7_)
                              {
                                 §§push(Boolean(_loc5_));
                                 if(!_loc7_)
                                 {
                                    §§push(§§pop());
                                    if(_loc6_ || param1)
                                    {
                                       §§push(Boolean(§§pop()));
                                    }
                                    if(§§pop())
                                    {
                                       if(!(_loc7_ && param2))
                                       {
                                          §§pop();
                                          if(!_loc7_)
                                          {
                                             addr300:
                                             §§push(param3 is UIRepeaterButtonRovio);
                                             if(_loc6_ || param2)
                                             {
                                             }
                                             addr322:
                                             if(§§pop())
                                             {
                                                if(!(_loc7_ && param3))
                                                {
                                                   _loc5_.§!>§((param3 as UIComponentRovio).mName.toUpperCase());
                                                }
                                             }
                                          }
                                          §§goto(addr339);
                                       }
                                       §§push(Boolean(§§pop()));
                                    }
                                 }
                                 §§goto(addr322);
                              }
                              §§goto(addr300);
                           }
                           else
                           {
                              addr183:
                           }
                           addr252:
                        }
                        else
                        {
                           addr133:
                        }
                        §§goto(addr339);
                     }
                     else
                     {
                        addr245:
                        _loc4_.§3f§(_loc4_.§?f§ - 1);
                     }
                     §§goto(addr252);
                  }
                  §§goto(addr339);
               }
               if(§§pop())
               {
                  if(_loc6_)
                  {
                     §§goto(addr263);
                  }
               }
               §§goto(addr339);
            }
            §§push(Boolean(_loc4_));
            if(_loc6_ || param2)
            {
               if(§§pop())
               {
                  §§goto(addr245);
               }
               §§goto(addr183);
            }
            else
            {
               §§goto(addr260);
            }
         }
         §§goto(addr339);
      }
      
      public function §`!!§(param1:String, param2:int) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:UIRepeaterTabRovio = getItemByName(param1) as UIRepeaterTabRovio;
         if(_loc4_ || this)
         {
            if(_loc3_)
            {
               do
               {
                  _loc3_.§3f§(param2);
                  do
                  {
                     this.§1k§();
                  }
                  while(_loc5_ && param2);
                  
               }
               while(_loc5_);
               
               addr69:
            }
            return;
         }
         §§goto(addr69);
      }
      
      public function §+'§(param1:String) : UIButtonGroupRovio
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(0);
         if(_loc3_ || param1)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         do
         {
            §§push(_loc2_);
            if(_loc3_)
            {
               if(!(_loc4_ && this))
               {
                  if(_loc3_)
                  {
                     if(§§pop() >= this.§5@§.length)
                     {
                        if(!(_loc4_ && this))
                        {
                           return null;
                        }
                        loop1:
                        while(_loc4_ && this)
                        {
                           while(true)
                           {
                              _loc2_ = §§pop();
                              continue loop1;
                           }
                        }
                        continue;
                     }
                     if(param1.toUpperCase() == (this.§5@§[_loc2_] as UIButtonGroupRovio).mName.toUpperCase())
                     {
                        break;
                     }
                     while(true)
                     {
                        §§push(_loc2_);
                     }
                  }
                  while(true)
                  {
                     §§push(§§pop() + 1);
                  }
               }
               while(true)
               {
               }
            }
            §§goto(addr69);
         }
         while(!_loc4_);
         
         return this.§5@§[_loc2_] as UIButtonGroupRovio;
      }
      
      public function §!+§(param1:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§;!=§ = param1;
         }
         §§push(0);
         if(!(_loc3_ && param1))
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         loop0:
         while(true)
         {
            §§push(_loc2_);
            if(_loc4_)
            {
               if(§§pop() >= § !]§.length)
               {
                  if(!(_loc3_ && _loc3_))
                  {
                     if(!_loc3_)
                     {
                        if(_loc4_)
                        {
                           if(_loc4_ || param1)
                           {
                              this.§1k§();
                              addr66:
                              if(_loc4_ || this)
                              {
                                 break;
                              }
                              loop14:
                              while(true)
                              {
                                 if(_loc4_)
                                 {
                                    addr190:
                                    loop8:
                                    while(true)
                                    {
                                       §§push(this.§5!3§);
                                       if(!(_loc3_ && param1))
                                       {
                                          if(§§pop())
                                          {
                                             loop9:
                                             while(true)
                                             {
                                                if(!_loc3_)
                                                {
                                                   this.§6!X§.y = (§ !]§[_loc2_] as UIRepeaterTabRovio).y + this.§,l§;
                                                   while(true)
                                                   {
                                                      this.§6!X§.height = (§ !]§[_loc2_] as UIRepeaterTabRovio).height + this.§^!D§;
                                                      addr142:
                                                      addr96:
                                                      while(!_loc4_)
                                                      {
                                                         continue loop9;
                                                      }
                                                      while(true)
                                                      {
                                                         addr74:
                                                         loop11:
                                                         while(true)
                                                         {
                                                            §§push(_loc2_);
                                                            if(_loc4_ || _loc2_)
                                                            {
                                                               addr87:
                                                               §§push(§§pop() + 1);
                                                               if(!_loc4_)
                                                               {
                                                               }
                                                               while(true)
                                                               {
                                                                  _loc2_ = §§pop();
                                                                  addr88:
                                                                  loop13:
                                                                  while(!(_loc4_ || _loc3_))
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        if(!(_loc3_ && _loc2_))
                                                                        {
                                                                           continue loop11;
                                                                        }
                                                                        §§goto(addr142);
                                                                        continue loop13;
                                                                     }
                                                                  }
                                                                  continue loop0;
                                                               }
                                                               addr87:
                                                            }
                                                            §§goto(addr87);
                                                         }
                                                      }
                                                   }
                                                   addr172:
                                                }
                                                else
                                                {
                                                   loop4:
                                                   while(_loc4_)
                                                   {
                                                      if(_loc4_ || _loc2_)
                                                      {
                                                         this.§6!X§.x = (§ !]§[_loc2_] as UIRepeaterTabRovio).x + this.§>!#§;
                                                         while(true)
                                                         {
                                                            this.§6!X§.width = (§ !]§[_loc2_] as UIRepeaterTabRovio).width + this.§^!e§;
                                                            continue loop14;
                                                         }
                                                         §§goto(addr190);
                                                         addr220:
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                            if((§ !]§[_loc2_] as UIRepeaterTabRovio).mName.toUpperCase() == param1.toUpperCase())
                                                            {
                                                               while(true)
                                                               {
                                                                  (§ !]§[_loc2_] as UIRepeaterTabRovio).setActiveStatus(true);
                                                                  break loop4;
                                                               }
                                                               addr253:
                                                            }
                                                            else
                                                            {
                                                               (§ !]§[_loc2_] as UIRepeaterTabRovio).setActiveStatus(false);
                                                               §§goto(addr109);
                                                            }
                                                         }
                                                         addr241:
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(this.§@+§);
                                                      break loop8;
                                                   }
                                                   addr197:
                                                }
                                                §§goto(addr109);
                                             }
                                          }
                                          §§goto(addr96);
                                       }
                                       break;
                                    }
                                    while(true)
                                    {
                                       if(_loc4_)
                                       {
                                          if(!§§pop())
                                          {
                                             continue;
                                          }
                                          §§goto(addr197);
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                §§goto(addr241);
                                             }
                                          }
                                          addr240:
                                       }
                                       §§goto(addr74);
                                    }
                                    addr145:
                                 }
                                 §§goto(addr220);
                              }
                           }
                           §§goto(addr253);
                        }
                        §§goto(addr172);
                     }
                     §§goto(addr88);
                  }
                  §§goto(addr66);
               }
               else
               {
                  §§push(§ !]§[_loc2_] is UIRepeaterTabRovio);
               }
               §§goto(addr240);
            }
            §§goto(addr87);
         }
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:UIButtonGroupRovio = null;
         if(!_loc6_)
         {
            super.setEnabled(param1);
         }
         var _loc3_:int = 0;
         for each(_loc2_ in this.§5@§)
         {
            if(_loc5_ || _loc3_)
            {
               _loc2_.setEnabled(param1);
            }
         }
      }
      
      public function §1k§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(getItemByName("Button_Scroll1") == null);
            if(!(_loc3_ && _loc1_))
            {
               §§push(Boolean(§§pop()));
               if(_loc2_ || _loc1_)
               {
                  §§push(§§pop());
                  if(!(_loc3_ && _loc3_))
                  {
                     §§push(Boolean(§§pop()));
                  }
                  if(§§pop())
                  {
                     if(!_loc3_)
                     {
                        addr50:
                        §§pop();
                        addr70:
                        if(!_loc3_)
                        {
                           §§push(getItemByName("Button_Scroll2") == null);
                           if(_loc2_)
                           {
                              addr60:
                              §§push(Boolean(§§pop()));
                           }
                        }
                        var _loc1_:UIRepeaterTabRovio = getItemByName(this.§;!=§) as UIRepeaterTabRovio;
                        if(_loc2_)
                        {
                           if(_loc1_)
                           {
                              if(!_loc3_)
                              {
                                 §§push(_loc1_.§?f§);
                                 loop5:
                                 while(true)
                                 {
                                    §§push(0);
                                    loop6:
                                    while(true)
                                    {
                                       if(§§pop() > §§pop())
                                       {
                                          while(true)
                                          {
                                             (getItemByName("Button_Scroll1") as UIButtonRovio).setComponentState(UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT);
                                             addr252:
                                             while(true)
                                             {
                                             }
                                          }
                                          addr241:
                                       }
                                       else
                                       {
                                          (getItemByName("Button_Scroll1") as UIButtonRovio).setComponentState(UIComponentInteractiveRovio.§,a§);
                                          addr209:
                                          while(true)
                                          {
                                             §§goto(addr209);
                                          }
                                          addr231:
                                       }
                                       while(true)
                                       {
                                          §§push(_loc1_.§?f§);
                                          if(_loc2_ || _loc2_)
                                          {
                                             §§push(_loc1_.§7J§);
                                             if(_loc2_)
                                             {
                                                break;
                                             }
                                             continue loop6;
                                          }
                                          continue loop5;
                                       }
                                       if(§§pop() < §§pop() - 1)
                                       {
                                          addr195:
                                          (getItemByName("Button_Scroll2") as UIButtonRovio).setComponentState(UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT);
                                          addr206:
                                       }
                                       else
                                       {
                                          (getItemByName("Button_Scroll2") as UIButtonRovio).setComponentState(UIComponentInteractiveRovio.§,a§);
                                          addr177:
                                       }
                                       §§goto(addr82);
                                    }
                                 }
                              }
                           }
                           else
                           {
                              (getItemByName("Button_Scroll1") as UIButtonRovio).setComponentState(UIComponentInteractiveRovio.§,a§);
                              for(; _loc2_; (getItemByName("Button_Scroll2") as UIButtonRovio).setComponentState(UIComponentInteractiveRovio.§,a§),if(!(_loc2_ || _loc2_))
                              {
                                 continue;
                              },if(_loc2_)
                              {
                                 if(!(_loc3_ && _loc1_))
                                 {
                                    if(!(_loc2_ || _loc1_))
                                    {
                                       §§goto(addr231);
                                    }
                                    addr82:
                                    return;
                                 }
                                 §§goto(addr206);
                              },§§goto(addr177))
                              {
                                 if(!(_loc3_ && _loc1_))
                                 {
                                    if(!(_loc3_ && _loc2_))
                                    {
                                       continue;
                                    }
                                    §§goto(addr241);
                                 }
                              }
                              §§goto(addr195);
                           }
                           §§goto(addr252);
                        }
                        §§goto(addr195);
                     }
                  }
                  if(§§pop())
                  {
                     if(_loc2_ || _loc3_)
                     {
                        return;
                     }
                     §§goto(addr70);
                  }
                  §§goto(addr70);
               }
               §§goto(addr50);
            }
            §§goto(addr60);
         }
         §§goto(addr50);
      }
      
      public function §'e§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:UIRepeaterTabRovio = null;
         var _loc1_:* = int(§ !]§.length - 1);
         loop0:
         while(_loc1_ >= 0)
         {
            _loc2_ = § !]§[_loc1_] as UIRepeaterTabRovio;
            if(_loc4_)
            {
               if(_loc2_)
               {
                  if(_loc4_)
                  {
                     _loc2_.clear();
                  }
                  while(true)
                  {
                     addr86:
                     addr72:
                     while(true)
                     {
                        § !]§.splice(_loc1_,1);
                        addr93:
                        while(true)
                        {
                        }
                     }
                     if(!_loc4_)
                     {
                        continue;
                     }
                     while(false)
                     {
                        §§goto(addr86);
                     }
                     continue loop0;
                     addr84:
                  }
               }
               while(true)
               {
                  §§push(_loc1_);
                  if(!_loc3_)
                  {
                     §§push(§§pop() - 1);
                     if(_loc4_ || _loc3_)
                     {
                        §§push(int(§§pop()));
                     }
                  }
                  _loc1_ = §§pop();
                  if(_loc3_ && _loc2_)
                  {
                     continue;
                  }
                  §§goto(addr72);
               }
            }
            §§goto(addr84);
         }
         if(_loc4_)
         {
            this.§!+§("");
         }
      }
      
      public function §catch§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:UIButtonGroupRovio = null;
         for each(_loc1_ in this.§5@§)
         {
            if(_loc4_ || this)
            {
               _loc1_.§catch§();
            }
         }
      }
      
      public function §&!Y§() : Array
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §§push(this.§+'§(this.§;!=§));
         }
         else
         {
            do
            {
               §§push(this.§+'§(this.§;!=§));
            }
            while(_loc1_ && _loc2_);
            
            return §§pop().§-;§();
            addr25:
         }
         while(§§pop() != null)
         {
            §§goto(addr25);
         }
         if(_loc2_)
         {
            Log.log("ERROR! Tried to get selections for noninited repeater!");
         }
         return new Array();
      }
      
      public function §4!B§(param1:Array) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§+'§(this.§;!=§).§4!B§(param1);
         }
      }
      
      public function §6!B§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§+'§(this.§;!=§).§6!B§(param1);
         }
      }
      
      override public function clear() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super.clear();
         }
         loop0:
         while(true)
         {
            this.§]f§ = null;
            while(true)
            {
               this.§5@§ = null;
               while(_loc2_ || _loc1_)
               {
                  continue loop0;
                  this.§@!]§ = null;
                  if(!(_loc1_ && this))
                  {
                     return;
                  }
               }
            }
         }
      }
   }
}
