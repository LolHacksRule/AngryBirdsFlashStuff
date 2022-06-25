package §6a§
{
   import §0!Q§.UIButtonGroupRovio;
   import §0!Q§.UIComponentInteractiveRovio;
   import §0!Q§.UIComponentRovio;
   import §0!Q§.UIEventListenerRovio;
   import §<u§.Log;
   import §=!5§.§`X§;
   import com.rovio.assets.AssetCache;
   import flash.display.*;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class UIRepeaterRovio extends UIContainerRovio
   {
      
      public static const §=G§:int = 0;
      
      public static const §^!B§:int = 1;
      
      public static const §-!@§:int = 2;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §=G§ = 0;
            while(true)
            {
               §^!B§ = 1;
               while(_loc2_)
               {
                  §-!@§ = 2;
                  if(_loc2_ || _loc2_)
                  {
                     return;
                     addr45:
                  }
               }
            }
         }
         §§goto(addr45);
      }
      
      public var §&!J§:String;
      
      public var §8y§:Class;
      
      public var §7Y§:String = null;
      
      public var §<1§:Vector.<UIButtonGroupRovio>;
      
      public var §+!M§:int;
      
      public var §%<§:Number;
      
      public var §9!9§:Number;
      
      public var §-n§:Number;
      
      public var §&<§:Number;
      
      public var §#!M§:Number;
      
      public var §]!7§:Number;
      
      public var §+R§:Number;
      
      public var §7J§:Number;
      
      public var mButtonMarginX2:Number;
      
      public var mButtonMarginY2:Number;
      
      public var §,C§:int;
      
      public var § x§:Number;
      
      public var § !5§:String = "";
      
      public var §+r§:int;
      
      public var §8x§:int;
      
      public var §+Q§:GlowFilter;
      
      public var §0!]§:Boolean = true;
      
      public var §9Y§:int;
      
      public var §#!I§:int;
      
      public var §<!X§:Number = 0;
      
      public var §%!j§:Number = 0;
      
      public var §'!P§:Number = 0;
      
      public var §7!h§:Number = 0;
      
      public var §#!%§:Boolean = false;
      
      public var §8P§:Boolean = false;
      
      public var §9!b§:MovieClip = null;
      
      public function UIRepeaterRovio(param1:XML, param2:UIContainerRovio, param3:§`X§, param4:MovieClip = null)
      {
         /*
          * Decompilation error
          * Timeout (1 minute) was reached
          * Instruction count: 1574
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to timeout");
      }
      
      public function §2!,§(param1:Array = null, param2:Class = null) : void
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
         var _loc17_:* = 0;
         var _loc18_:* = 0;
         if(!_loc19_)
         {
            if(param2 == null)
            {
               if(_loc20_)
               {
                  param2 = UIRepeaterButtonRovio;
               }
               §§goto(addr108);
            }
            this.§<1§ = new Vector.<UIButtonGroupRovio>();
            if(_loc20_ || param2)
            {
               this.§%z§();
               if(!_loc19_)
               {
                  §§push(param1);
                  if(!(_loc19_ && _loc3_))
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
                        if(_loc20_)
                        {
                           break;
                        }
                        §§goto(addr1041);
                     }
                     §§push(mName + "_Tab_");
                     if(_loc20_ || param2)
                     {
                        §§push(§§pop() + _loc3_);
                     }
                     _loc4_ = §§pop();
                     if(_loc19_ && param2)
                     {
                        break;
                     }
                     _loc5_ = new MovieClip();
                     _loc6_ = <Container/>;
                     if(_loc20_ || _loc3_)
                     {
                        _loc6_.@name = _loc4_;
                     }
                     _loc7_ = new UIRepeaterTabRovio(_loc6_,this,null,_loc5_);
                     if(!(_loc19_ && param1))
                     {
                        §]6§.push(_loc7_);
                     }
                     _loc8_ = new UIButtonGroupRovio(this.§#!I§,_loc4_);
                     if(!_loc19_)
                     {
                        this.§<1§.push(_loc8_);
                        loop1:
                        while(true)
                        {
                           §§push(this.§#!M§);
                           loop2:
                           while(true)
                           {
                              §§push(int(§§pop()));
                              while(true)
                              {
                                 _loc9_ = §§pop();
                                 if(!_loc19_)
                                 {
                                    if(!_loc20_)
                                    {
                                       break;
                                    }
                                    §§push(this.§+!M§);
                                    loop4:
                                    while(true)
                                    {
                                       §§push(int(§§pop()));
                                       loop5:
                                       while(true)
                                       {
                                          _loc10_ = §§pop();
                                          loop6:
                                          while(true)
                                          {
                                             §§push(param1);
                                             if(_loc20_ || param1)
                                             {
                                                §§push(_loc3_);
                                                if(_loc20_)
                                                {
                                                   if((§§pop()[§§pop()] as Array).length < _loc10_)
                                                   {
                                                      loop7:
                                                      while(true)
                                                      {
                                                         §§push(param1);
                                                         if(!(_loc19_ && _loc3_))
                                                         {
                                                            §§push(_loc3_);
                                                            if(_loc20_)
                                                            {
                                                               loop11:
                                                               while(true)
                                                               {
                                                                  §§push(int((§§pop()[§§pop()] as Array).length));
                                                                  if(_loc20_ || param1)
                                                                  {
                                                                     _loc10_ = §§pop();
                                                                     loop12:
                                                                     while(true)
                                                                     {
                                                                        addr214:
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§8x§);
                                                                           if(!_loc19_)
                                                                           {
                                                                              if(§§pop() == §=G§)
                                                                              {
                                                                                 if(!(_loc20_ || param2))
                                                                                 {
                                                                                    continue loop0;
                                                                                 }
                                                                                 §§push(this.§-n§);
                                                                                 if(!(_loc20_ || param1))
                                                                                 {
                                                                                    continue loop2;
                                                                                 }
                                                                                 §§push(_loc10_);
                                                                                 if(!_loc19_)
                                                                                 {
                                                                                    §§push(§§pop() - 1);
                                                                                    if(!_loc19_)
                                                                                    {
                                                                                       §§push(§§pop() * this.§+R§);
                                                                                    }
                                                                                    §§push(§§pop() - §§pop());
                                                                                    if(!_loc19_)
                                                                                    {
                                                                                       continue loop2;
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr259:
                                                                                    §§push(§§pop() / §§pop());
                                                                                 }
                                                                                 §§push(int(§§pop()));
                                                                              }
                                                                              else
                                                                              {
                                                                                 loop9:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(0);
                                                                                    if(_loc19_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    if(!(_loc19_ && param2))
                                                                                    {
                                                                                       §§push(int(§§pop()));
                                                                                       if(_loc20_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       addr1030:
                                                                                       _loc3_ = int(§§pop());
                                                                                       continue loop0;
                                                                                    }
                                                                                    addr261:
                                                                                    while(true)
                                                                                    {
                                                                                       if(!(_loc19_ && _loc3_))
                                                                                       {
                                                                                          continue loop4;
                                                                                       }
                                                                                       continue loop5;
                                                                                    }
                                                                                    addr292:
                                                                                    continue loop12;
                                                                                    while(true)
                                                                                    {
                                                                                       continue loop9;
                                                                                    }
                                                                                 }
                                                                                 _loc11_ = §§pop();
                                                                                 if(_loc19_)
                                                                                 {
                                                                                    continue loop0;
                                                                                 }
                                                                                 if(!_loc20_)
                                                                                 {
                                                                                    continue loop7;
                                                                                 }
                                                                                 if(!_loc20_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 if(false)
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 addr944:
                                                                                 §§push(_loc11_);
                                                                                 if(!(_loc19_ && this))
                                                                                 {
                                                                                    if(§§pop() < (param1[_loc3_] as Array).length)
                                                                                    {
                                                                                       §§push(param1);
                                                                                       break loop7;
                                                                                    }
                                                                                    if(!_loc19_)
                                                                                    {
                                                                                       _loc8_.§?!#§("");
                                                                                       if(_loc19_ && param2)
                                                                                       {
                                                                                          continue loop0;
                                                                                       }
                                                                                       _loc7_.§-W§(this.§+!M§,this.§%<§,this.§9!9§,this.§9Y§ * this.§+R§,this.§9Y§ * this.§7J§,this.§,C§,this.§9Y§);
                                                                                       if(!(_loc20_ || this))
                                                                                       {
                                                                                          continue loop0;
                                                                                       }
                                                                                    }
                                                                                    §§push(_loc3_);
                                                                                    if(_loc20_ || this)
                                                                                    {
                                                                                       break loop11;
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr1030);
                                                                              }
                                                                           }
                                                                           §§goto(addr261);
                                                                        }
                                                                        continue loop6;
                                                                     }
                                                                     addr337:
                                                                  }
                                                                  break;
                                                               }
                                                               §§push(§§pop() + 1);
                                                               if(_loc20_ || param2)
                                                               {
                                                               }
                                                               §§goto(addr1030);
                                                               addr323:
                                                            }
                                                            addr364:
                                                            _loc12_ = ((§§pop()[§§pop()] as Array)[_loc11_] as Array)[0] as XML;
                                                            if(!_loc19_)
                                                            {
                                                               if(((param1[_loc3_] as Array)[_loc11_] as Array)[2])
                                                               {
                                                                  if(!_loc19_)
                                                                  {
                                                                     _loc7_.§]6§.push(new param2(_loc12_,_loc7_,((param1[_loc3_] as Array)[_loc11_] as Array)[2] as MovieClip));
                                                                     if(_loc20_)
                                                                     {
                                                                        addr425:
                                                                     }
                                                                  }
                                                                  addr439:
                                                                  _loc13_ = _loc7_.§]6§[_loc7_.§]6§.length - 1] as UIRepeaterButtonRovio;
                                                                  if(!(_loc19_ && param2))
                                                                  {
                                                                     §§push(param1);
                                                                     if(!(_loc19_ && param2))
                                                                     {
                                                                        §§push(_loc3_);
                                                                        if(_loc20_ || this)
                                                                        {
                                                                           if(((§§pop()[§§pop()] as Array)[_loc11_] as Array)[1] != null)
                                                                           {
                                                                              if(!(_loc19_ && this))
                                                                              {
                                                                                 _loc14_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[1] as MovieClip;
                                                                                 addr497:
                                                                                 if(_loc20_)
                                                                                 {
                                                                                    _loc13_.setIcon(_loc14_,this.§7Y§);
                                                                                    addr595:
                                                                                    §§push(this.§+r§);
                                                                                    if(_loc20_)
                                                                                    {
                                                                                       if(§§pop() == §^!B§)
                                                                                       {
                                                                                          if(_loc20_ || this)
                                                                                          {
                                                                                             §§push(2);
                                                                                             if(!(_loc19_ && this))
                                                                                             {
                                                                                                addr586:
                                                                                                §§push(int(§§pop()));
                                                                                             }
                                                                                             _loc15_ = §§pop();
                                                                                             addr552:
                                                                                             _loc14_.y -= _loc14_.height / 2;
                                                                                             addr588:
                                                                                             addr562:
                                                                                             if(this.§7Y§ == null)
                                                                                             {
                                                                                                if(!_loc19_)
                                                                                                {
                                                                                                   if(!(_loc19_ && param1))
                                                                                                   {
                                                                                                      _loc14_.y -= _loc15_;
                                                                                                      addr546:
                                                                                                      if(_loc20_)
                                                                                                      {
                                                                                                         if(_loc20_)
                                                                                                         {
                                                                                                            if(false)
                                                                                                            {
                                                                                                               §§goto(addr552);
                                                                                                            }
                                                                                                            addr596:
                                                                                                            §§push(this.§,C§);
                                                                                                            if(_loc20_)
                                                                                                            {
                                                                                                               §§push(1);
                                                                                                               if(!_loc19_)
                                                                                                               {
                                                                                                                  if(§§pop() == §§pop())
                                                                                                                  {
                                                                                                                     if(!(_loc19_ && _loc3_))
                                                                                                                     {
                                                                                                                        _loc13_.x = _loc9_ + _loc11_ * this.§+R§;
                                                                                                                        if(!(_loc19_ && _loc3_))
                                                                                                                        {
                                                                                                                           §§push(_loc13_);
                                                                                                                           §§push(this.§]!7§);
                                                                                                                           if(!_loc19_)
                                                                                                                           {
                                                                                                                              §§push(§§pop() + _loc11_ * this.§7J§);
                                                                                                                           }
                                                                                                                           §§pop().y = §§pop();
                                                                                                                           addr677:
                                                                                                                           _loc8_.§"g§(_loc13_);
                                                                                                                           addr943:
                                                                                                                           if(_loc20_ || this)
                                                                                                                           {
                                                                                                                              §§push(_loc11_);
                                                                                                                              if(_loc20_ || _loc3_)
                                                                                                                              {
                                                                                                                                 if(_loc20_)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() + 1);
                                                                                                                                    if(_loc20_ || param2)
                                                                                                                                    {
                                                                                                                                       addr647:
                                                                                                                                       §§push(int(§§pop()));
                                                                                                                                       if(_loc20_)
                                                                                                                                       {
                                                                                                                                          _loc11_ = §§pop();
                                                                                                                                          if(_loc20_)
                                                                                                                                          {
                                                                                                                                             if(_loc20_ || param2)
                                                                                                                                             {
                                                                                                                                                if(_loc20_ || param2)
                                                                                                                                                {
                                                                                                                                                   if(_loc20_)
                                                                                                                                                   {
                                                                                                                                                      if(!(_loc19_ && this))
                                                                                                                                                      {
                                                                                                                                                         if(false)
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr677);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr944);
                                                                                                                                                      }
                                                                                                                                                      addr919:
                                                                                                                                                      §§push(_loc11_);
                                                                                                                                                      if(_loc20_)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc16_);
                                                                                                                                                         if(_loc20_)
                                                                                                                                                         {
                                                                                                                                                            §§push(this.§+!M§);
                                                                                                                                                            if(!(_loc19_ && this))
                                                                                                                                                            {
                                                                                                                                                               if(!(_loc19_ && param2))
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                  if(!_loc19_)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc20_ || _loc3_)
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc19_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(this.§,C§);
                                                                                                                                                                           if(!_loc19_)
                                                                                                                                                                           {
                                                                                                                                                                              addr847:
                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                              if(_loc20_ || this)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() - §§pop());
                                                                                                                                                                                 if(_loc20_ || this)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc20_ || param2)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(this.§+!M§);
                                                                                                                                                                                       if(!(_loc19_ && param1))
                                                                                                                                                                                       {
                                                                                                                                                                                          addr879:
                                                                                                                                                                                          §§push(§§pop() % §§pop());
                                                                                                                                                                                          if(_loc20_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc20_)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr884:
                                                                                                                                                                                                §§push(int(§§pop()));
                                                                                                                                                                                                if(_loc20_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!(_loc19_ && this))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      _loc18_ = §§pop();
                                                                                                                                                                                                      if(this.§0!]§)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr777:
                                                                                                                                                                                                         §§push(_loc13_);
                                                                                                                                                                                                         §§push(_loc9_ + _loc18_ * this.§+R§);
                                                                                                                                                                                                         if(!(_loc19_ && param1))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(_loc16_ * this.§+!M§);
                                                                                                                                                                                                            if(!_loc19_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop() * this.§+R§);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§push(§§pop() + §§pop());
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§pop().x = §§pop();
                                                                                                                                                                                                         addr802:
                                                                                                                                                                                                         if(_loc20_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc20_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(_loc13_);
                                                                                                                                                                                                               §§push(this.§]!7§);
                                                                                                                                                                                                               if(_loc20_ || _loc3_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(§§pop() + _loc17_ * this.mButtonMarginY2);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§pop().y = §§pop();
                                                                                                                                                                                                               addr765:
                                                                                                                                                                                                               if(!(_loc19_ && param2))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§goto(addr677);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr802);
                                                                                                                                                                                                               addr806:
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr943);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr897:
                                                                                                                                                                                                         §§push(_loc11_);
                                                                                                                                                                                                         §§push(_loc16_);
                                                                                                                                                                                                         if(_loc20_ || _loc3_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr916:
                                                                                                                                                                                                            addr915:
                                                                                                                                                                                                            addr914:
                                                                                                                                                                                                            addr912:
                                                                                                                                                                                                            addr911:
                                                                                                                                                                                                            addr910:
                                                                                                                                                                                                            addr908:
                                                                                                                                                                                                            addr907:
                                                                                                                                                                                                            addr905:
                                                                                                                                                                                                            §§push(int((§§pop() - §§pop() * this.§+!M§ * this.§,C§) / this.§+!M§));
                                                                                                                                                                                                            if(_loc20_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               _loc17_ = §§pop();
                                                                                                                                                                                                               §§goto(addr919);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§push(this.§+!M§);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         _loc16_ = §§pop() / (§§pop() * this.§,C§);
                                                                                                                                                                                                         addr931:
                                                                                                                                                                                                         §§goto(addr931);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      _loc13_.x = _loc9_ + _loc17_ * this.mButtonMarginX2;
                                                                                                                                                                                                      §§push(_loc13_);
                                                                                                                                                                                                      §§push(this.§]!7§);
                                                                                                                                                                                                      if(!(_loc19_ && this))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(_loc18_);
                                                                                                                                                                                                         if(!_loc19_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop() * this.§7J§);
                                                                                                                                                                                                            if(!(_loc19_ && _loc3_))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                                                                               if(!_loc19_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr718:
                                                                                                                                                                                                                  §§push(_loc16_ * this.§+!M§);
                                                                                                                                                                                                                  if(_loc20_ || this)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr728:
                                                                                                                                                                                                                     §§push(§§pop() * this.§7J§);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§pop().y = §§pop();
                                                                                                                                                                                                               addr733:
                                                                                                                                                                                                               if(!_loc19_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§goto(addr677);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr765);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr728);
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr718);
                                                                                                                                                                                                      addr894:
                                                                                                                                                                                                      addr747:
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr897);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr916);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr897);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr915);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr914);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr912);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr879);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr911);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr910);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr897);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr908);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr847);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr897);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr907);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr897);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr894);
                                                                                                                                                }
                                                                                                                                                §§goto(addr777);
                                                                                                                                             }
                                                                                                                                             §§goto(addr733);
                                                                                                                                          }
                                                                                                                                          §§goto(addr677);
                                                                                                                                       }
                                                                                                                                       §§goto(addr884);
                                                                                                                                    }
                                                                                                                                    §§goto(addr647);
                                                                                                                                 }
                                                                                                                                 §§goto(addr919);
                                                                                                                              }
                                                                                                                              §§goto(addr647);
                                                                                                                           }
                                                                                                                           §§goto(addr747);
                                                                                                                        }
                                                                                                                        §§goto(addr806);
                                                                                                                     }
                                                                                                                     §§goto(addr777);
                                                                                                                  }
                                                                                                                  §§goto(addr916);
                                                                                                                  §§push(_loc11_);
                                                                                                               }
                                                                                                               §§goto(addr905);
                                                                                                            }
                                                                                                            §§goto(addr777);
                                                                                                         }
                                                                                                         §§goto(addr595);
                                                                                                      }
                                                                                                      §§goto(addr588);
                                                                                                   }
                                                                                                   §§goto(addr562);
                                                                                                }
                                                                                                §§goto(addr546);
                                                                                             }
                                                                                             §§goto(addr596);
                                                                                          }
                                                                                          §§goto(addr552);
                                                                                       }
                                                                                       §§goto(addr596);
                                                                                    }
                                                                                    §§goto(addr586);
                                                                                 }
                                                                                 §§goto(addr552);
                                                                              }
                                                                              §§goto(addr677);
                                                                           }
                                                                           §§goto(addr596);
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr497);
                                                               }
                                                               _loc7_.§]6§.push(new param2(_loc12_,_loc7_,new this.§8y§() as MovieClip));
                                                               §§goto(addr439);
                                                            }
                                                            §§goto(addr425);
                                                         }
                                                         break;
                                                      }
                                                      addr363:
                                                      §§goto(addr364);
                                                      §§push(_loc3_);
                                                   }
                                                   §§goto(addr214);
                                                }
                                                §§goto(addr323);
                                             }
                                             §§goto(addr363);
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr973);
                              }
                              continue loop1;
                           }
                        }
                     }
                     §§goto(addr292);
                  }
                  if(param1.length > 1)
                  {
                  }
                  addr1041:
                  return;
               }
               §§goto(addr108);
            }
            §§goto(addr98);
         }
         §§goto(addr108);
      }
      
      public function get §%!6§() : int
      {
         return this.§+!M§;
      }
      
      public function get § !b§() : int
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§%!6§);
            if(_loc1_ || this)
            {
               if(§§pop() == 0)
               {
                  if(!_loc2_)
                  {
                     §§push(0);
                  }
                  else
                  {
                     §§goto(addr43);
                  }
               }
               §§goto(addr43);
            }
            return §§pop();
         }
         addr43:
         §§push(this.§;!W§(this.§ !5§).§9!'§.length / this.§%!6§);
         if(!_loc2_)
         {
            return §§pop() + 1;
         }
      }
      
      override public function containerEventOccured(param1:int, param2:String, param3:UIEventListenerRovio) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:UIButtonGroupRovio = null;
         var _loc4_:UIRepeaterTabRovio = getItemByName(this.§ !5§) as UIRepeaterTabRovio;
         if(_loc6_ || param2)
         {
            §§push(param2);
            loop0:
            while(true)
            {
               if(§§pop().toUpperCase() == "SCROLL_LEFT")
               {
                  if(_loc6_ || param2)
                  {
                     addr259:
                     if(_loc4_)
                     {
                        addr260:
                        _loc4_.§0!K§(_loc4_.§]Y§ - 1);
                        this.§?!U§();
                        addr267:
                     }
                     break;
                  }
                  §§goto(addr260);
               }
               else
               {
                  §§push(param2);
                  while(true)
                  {
                     if(_loc6_)
                     {
                        if(§§pop().toUpperCase() == "SCROLL_RIGHT")
                        {
                           break;
                        }
                        continue;
                     }
                     continue loop0;
                  }
                  while(true)
                  {
                     §§goto(addr228);
                  }
                  §§goto(addr179);
               }
            }
            super.containerEventOccured(param1,param2,param3);
            §§goto(addr355);
         }
         §§goto(addr240);
      }
      
      public function §2!1§(param1:String, param2:int) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:UIRepeaterTabRovio = getItemByName(param1) as UIRepeaterTabRovio;
         if(!(_loc5_ && this))
         {
            if(_loc3_)
            {
               if(_loc4_)
               {
                  _loc3_.§0!K§(param2);
                  do
                  {
                     this.§?!U§();
                  }
                  while(!_loc4_);
                  
                  addr72:
               }
               §§goto(addr72);
            }
            return;
         }
         §§goto(addr72);
      }
      
      public function §;!W§(param1:String) : UIButtonGroupRovio
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(0);
         if(!(_loc3_ && _loc3_))
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         while(true)
         {
            §§push(_loc2_);
            if(!_loc3_)
            {
               if(!_loc3_)
               {
                  if(_loc4_ || this)
                  {
                     if(§§pop() >= this.§<1§.length)
                     {
                        if(_loc4_)
                        {
                           break;
                        }
                        loop1:
                        while(!_loc4_)
                        {
                           while(true)
                           {
                              _loc2_ = §§pop();
                              continue loop1;
                           }
                        }
                        continue;
                     }
                     if(param1.toUpperCase() == (this.§<1§[_loc2_] as UIButtonGroupRovio).mName.toUpperCase())
                     {
                        §§goto(addr95);
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
            §§goto(addr77);
         }
         if(!_loc3_)
         {
            return null;
         }
         addr95:
         return this.§<1§[_loc2_] as UIButtonGroupRovio;
      }
      
      public function §>!K§(param1:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
            this.§ !5§ = param1;
         }
         §§push(0);
         if(_loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         while(true)
         {
            §§push(_loc2_);
            if(_loc3_)
            {
               if(_loc3_ || this)
               {
                  if(§§pop() >= §]6§.length)
                  {
                     if(_loc3_ || _loc3_)
                     {
                        if(_loc3_ || _loc2_)
                        {
                           this.§?!U§();
                           addr68:
                           if(!(_loc4_ && param1))
                           {
                              if(_loc3_ || param1)
                              {
                                 if(!(_loc4_ && _loc2_))
                                 {
                                    if(!(_loc4_ && _loc3_))
                                    {
                                       break;
                                    }
                                    while(true)
                                    {
                                       (§]6§[_loc2_] as UIRepeaterTabRovio).setActiveStatus(true);
                                       while(true)
                                       {
                                          §§push(this.§#!%§);
                                          while(true)
                                          {
                                             if(!§§pop())
                                             {
                                                continue;
                                             }
                                             while(true)
                                             {
                                                this.§9!b§.x = (§]6§[_loc2_] as UIRepeaterTabRovio).x + this.§'!P§;
                                             }
                                          }
                                       }
                                    }
                                 }
                                 while(true)
                                 {
                                    this.§9!b§.width = (§]6§[_loc2_] as UIRepeaterTabRovio).width + this.§<!X§;
                                    §§goto(addr201);
                                 }
                              }
                              §§goto(addr169);
                           }
                           §§goto(addr146);
                        }
                        §§goto(addr104);
                     }
                     §§goto(addr68);
                  }
                  else
                  {
                     §§push(§]6§[_loc2_] is UIRepeaterTabRovio);
                  }
                  §§goto(addr232);
               }
               §§goto(addr99);
            }
            §§goto(addr103);
         }
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:UIButtonGroupRovio = null;
         if(_loc6_)
         {
            super.setEnabled(param1);
         }
         for each(_loc2_ in this.§<1§)
         {
            if(!(_loc5_ && _loc2_))
            {
               _loc2_.setEnabled(param1);
            }
         }
      }
      
      public function §?!U§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            §§push(getItemByName("Button_Scroll1") == null);
            if(!_loc3_)
            {
               §§push(Boolean(§§pop()));
               if(_loc2_)
               {
                  §§push(§§pop());
                  if(_loc2_ || _loc3_)
                  {
                     §§push(Boolean(§§pop()));
                  }
                  if(§§pop())
                  {
                     if(!_loc3_)
                     {
                        §§pop();
                        addr70:
                        if(!_loc3_)
                        {
                           §§push(getItemByName("Button_Scroll2") == null);
                           if(_loc2_ || _loc2_)
                           {
                              addr60:
                              §§push(Boolean(§§pop()));
                           }
                        }
                        var _loc1_:UIRepeaterTabRovio = getItemByName(this.§ !5§) as UIRepeaterTabRovio;
                        if(_loc2_)
                        {
                           if(!_loc1_)
                           {
                              (getItemByName("Button_Scroll1") as UIButtonRovio).setComponentState(UIComponentInteractiveRovio.§#!K§);
                              loop0:
                              while(_loc2_)
                              {
                                 while(true)
                                 {
                                    (getItemByName("Button_Scroll2") as UIButtonRovio).setComponentState(UIComponentInteractiveRovio.§#!K§);
                                    if(_loc3_ && _loc3_)
                                    {
                                       continue loop0;
                                    }
                                    if(!_loc3_)
                                    {
                                       if(_loc2_ || _loc3_)
                                       {
                                          if(!_loc2_)
                                          {
                                             loop9:
                                             while(true)
                                             {
                                                (getItemByName("Button_Scroll2") as UIButtonRovio).setComponentState(UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT);
                                                addr199:
                                                loop10:
                                                while(true)
                                                {
                                                   if(!_loc3_)
                                                   {
                                                      if(_loc2_)
                                                      {
                                                         break;
                                                      }
                                                      addr232:
                                                      while(true)
                                                      {
                                                         §§push(_loc1_.§]Y§);
                                                         loop4:
                                                         while(true)
                                                         {
                                                            §§push(0);
                                                            loop5:
                                                            while(true)
                                                            {
                                                               if(§§pop() <= §§pop())
                                                               {
                                                                  (getItemByName("Button_Scroll1") as UIButtonRovio).setComponentState(UIComponentInteractiveRovio.§#!K§);
                                                                  loop6:
                                                                  while(true)
                                                                  {
                                                                     addr166:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc1_.§]Y§);
                                                                        if(_loc3_ && _loc3_)
                                                                        {
                                                                           continue loop4;
                                                                        }
                                                                        §§push(_loc1_.§"=§);
                                                                        if(_loc3_ && _loc1_)
                                                                        {
                                                                           continue loop5;
                                                                        }
                                                                        if(§§pop() < §§pop() - 1)
                                                                        {
                                                                           continue loop9;
                                                                        }
                                                                        addr158:
                                                                        (getItemByName("Button_Scroll2") as UIButtonRovio).setComponentState(UIComponentInteractiveRovio.§#!K§);
                                                                        while(true)
                                                                        {
                                                                           if(!(_loc3_ && _loc3_))
                                                                           {
                                                                              break loop10;
                                                                           }
                                                                           continue loop6;
                                                                        }
                                                                        continue loop6;
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                   addr236:
                                                   while(true)
                                                   {
                                                      (getItemByName("Button_Scroll1") as UIButtonRovio).setComponentState(UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT);
                                                      break loop0;
                                                   }
                                                }
                                             }
                                          }
                                          return;
                                       }
                                       §§goto(addr199);
                                    }
                                    §§goto(addr158);
                                 }
                              }
                              while(true)
                              {
                                 §§goto(addr166);
                                 §§goto(addr236);
                              }
                           }
                           §§goto(addr232);
                        }
                        §§goto(addr143);
                     }
                     §§goto(addr60);
                  }
                  if(§§pop())
                  {
                     if(!(_loc3_ && _loc3_))
                     {
                        return;
                     }
                     §§goto(addr70);
                  }
                  §§goto(addr70);
               }
            }
            §§goto(addr60);
         }
         §§goto(addr70);
      }
      
      public function §%z§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:UIRepeaterTabRovio = null;
         var _loc1_:* = int(§]6§.length - 1);
         while(_loc1_ >= 0)
         {
            _loc2_ = §]6§[_loc1_] as UIRepeaterTabRovio;
            if(!(_loc3_ && _loc2_))
            {
               if(_loc2_)
               {
                  addr109:
                  while(true)
                  {
                     _loc2_.clear();
                     addr112:
                     while(true)
                     {
                        addr98:
                        while(true)
                        {
                           §]6§.splice(_loc1_,1);
                           addr105:
                           while(true)
                           {
                           }
                        }
                     }
                  }
                  addr109:
               }
               while(true)
               {
                  §§push(_loc1_);
                  if(!(_loc3_ && _loc2_))
                  {
                     §§push(§§pop() - 1);
                     if(!_loc3_)
                     {
                        §§push(int(§§pop()));
                     }
                  }
                  _loc1_ = §§pop();
                  if(!_loc4_)
                  {
                     continue;
                  }
                  if(!(_loc3_ && _loc2_))
                  {
                     if(_loc4_ || this)
                     {
                        if(true)
                        {
                           break;
                        }
                     }
                     else
                     {
                        §§goto(addr109);
                     }
                     §§goto(addr98);
                  }
                  §§goto(addr112);
               }
               continue;
            }
            §§goto(addr109);
         }
         if(_loc4_)
         {
            this.§>!K§("");
         }
      }
      
      public function §67§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:UIButtonGroupRovio = null;
         for each(_loc1_ in this.§<1§)
         {
            if(!_loc4_)
            {
               _loc1_.§67§();
            }
         }
      }
      
      public function §;!E§() : Array
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§;!W§(this.§ !5§));
         }
         else
         {
            do
            {
               §§push(this.§;!W§(this.§ !5§));
            }
            while(!_loc2_);
            
            return §§pop().§[!c§();
            addr30:
         }
         while(§§pop() != null)
         {
            §§goto(addr30);
         }
         Log.log("ERROR! Tried to get selections for noninited repeater!");
         return new Array();
      }
      
      public function §1s§(param1:Array) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§;!W§(this.§ !5§).§1s§(param1);
         }
      }
      
      public function §!q§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§;!W§(this.§ !5§).§!q§(param1);
         }
      }
      
      override public function clear() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            super.clear();
            while(true)
            {
               this.§8y§ = null;
               loop1:
               while(_loc2_)
               {
                  while(true)
                  {
                     this.§<1§ = null;
                     do
                     {
                        this.§+Q§ = null;
                     }
                     while(!_loc2_);
                     
                     if(!(_loc1_ && this))
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr74);
      }
   }
}
