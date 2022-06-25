package §`M§
{
   import §1n§.§ C§;
   import §6z§.§[g§;
   import §=R§.§&W§;
   import §=R§.§5!a§;
   import §=R§.§6!M§;
   import §=R§.§7!"§;
   import com.rovio.assets.§9!N§;
   import flash.display.*;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §[A§ extends §9!#§
   {
      
      public static const §,N§:int = 0;
      
      public static const §%P§:int = 1;
      
      public static const §;!r§:int = 2;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && §[A§))
         {
            §,N§ = 0;
            while(true)
            {
               §%P§ = 1;
               §§goto(addr57);
            }
         }
         addr57:
         while(true)
         {
            §;!r§ = 2;
            if(!(_loc1_ && _loc1_))
            {
               if(_loc2_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public var §]!0§:String;
      
      public var §3&§:Class;
      
      public var §<!$§:String = null;
      
      public var §&z§:Vector.<§6!M§>;
      
      public var §+!n§:int;
      
      public var §@^§:Number;
      
      public var §?!B§:Number;
      
      public var §#!I§:Number;
      
      public var §%F§:Number;
      
      public var §<p§:Number;
      
      public var §@!l§:Number;
      
      public var §1!n§:Number;
      
      public var § !$§:Number;
      
      public var mButtonMarginX2:Number;
      
      public var mButtonMarginY2:Number;
      
      public var §8f§:int;
      
      public var § !P§:Number;
      
      public var §[N§:String = "";
      
      public var §,[§:int;
      
      public var §""§:int;
      
      public var § !Q§:GlowFilter;
      
      public var §=b§:Boolean = true;
      
      public var §>! §:int;
      
      public var §<!Z§:int;
      
      public var §``§:Number = 0;
      
      public var §40§:Number = 0;
      
      public var §!f§:Number = 0;
      
      public var §''§:Number = 0;
      
      public var §`@§:Boolean = false;
      
      public var §5!Q§:Boolean = false;
      
      public var §<J§:MovieClip = null;
      
      public function §[A§(param1:XML, param2:§9!#§, param3:§ C§, param4:MovieClip = null)
      {
         /*
          * Decompilation error
          * Timeout (1 minute) was reached
          * Instruction count: 1316
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to timeout");
      }
      
      public function §@!+§(param1:Array = null, param2:Class = null) : void
      {
         var _loc19_:Boolean = false;
         var _loc20_:Boolean = true;
         var _loc4_:String = null;
         var _loc5_:MovieClip = null;
         var _loc6_:XML = null;
         var _loc7_:§"W§ = null;
         var _loc8_:§6!M§ = null;
         var _loc9_:* = 0;
         var _loc10_:* = 0;
         var _loc11_:* = 0;
         var _loc12_:XML = null;
         var _loc13_:§>g§ = null;
         var _loc14_:MovieClip = null;
         var _loc15_:* = 0;
         var _loc16_:* = 0;
         var _loc17_:int = 0;
         var _loc18_:* = 0;
         if(!(_loc19_ && _loc3_))
         {
            if(param2 == null)
            {
               if(_loc20_)
               {
                  param2 = §>g§;
                  §§goto(addr70);
               }
               §§goto(addr94);
            }
            addr70:
            this.§&z§ = new Vector.<§6!M§>();
            if(!_loc19_)
            {
               this.§!!5§();
               if(_loc20_)
               {
                  §§goto(addr82);
               }
               §§goto(addr102);
            }
            §§goto(addr82);
         }
         addr82:
         §§push(param1);
         if(!_loc19_)
         {
            if(§§pop() == null)
            {
               if(!(_loc19_ && _loc3_))
               {
                  addr94:
                  param1 = getParentView().getRepeaterDataXML(mName);
               }
               §§goto(addr102);
            }
            §§push(param1);
         }
         if(!§§pop())
         {
            addr102:
            param1 = new Array();
            §§goto(addr106);
         }
         addr106:
         var _loc3_:int = 0;
         loop0:
         while(true)
         {
            if(_loc3_ >= param1.length)
            {
               if(_loc20_)
               {
                  break;
               }
               §§goto(addr952);
            }
            §§push(mName + "_Tab_");
            if(!(_loc19_ && param2))
            {
               §§push(§§pop() + _loc3_);
            }
            _loc4_ = §§pop();
            if(!(_loc20_ || param2))
            {
               break;
            }
            _loc5_ = new MovieClip();
            (_loc6_ = <Container/>).@name = _loc4_;
            _loc7_ = new §"W§(_loc6_,this,null,_loc5_);
            if(!(_loc19_ && param1))
            {
               §0!i§.push(_loc7_);
            }
            _loc8_ = new §6!M§(this.§<!Z§,_loc4_);
            if(_loc20_ || param2)
            {
               this.§&z§.push(_loc8_);
               loop1:
               while(true)
               {
                  §§push(this.§<p§);
                  loop2:
                  while(true)
                  {
                     §§push(int(§§pop()));
                     addr313:
                     while(true)
                     {
                        _loc9_ = §§pop();
                        continue loop1;
                     }
                     addr233:
                     if(!(_loc19_ && this))
                     {
                        §§push(int(§§pop()));
                        loop11:
                        while(true)
                        {
                           _loc9_ = §§pop();
                           if(_loc20_ || param2)
                           {
                              if(_loc20_)
                              {
                                 loop12:
                                 while(true)
                                 {
                                    §§push(0);
                                    if(!_loc19_)
                                    {
                                       if(!_loc20_)
                                       {
                                          continue loop11;
                                       }
                                       if(_loc20_)
                                       {
                                          _loc11_ = §§pop();
                                          if(_loc20_ || param1)
                                          {
                                             if(!_loc19_)
                                             {
                                                if(false)
                                                {
                                                   loop9:
                                                   while(true)
                                                   {
                                                      §§push(this.§""§);
                                                      addr199:
                                                      while(true)
                                                      {
                                                         if(!_loc19_)
                                                         {
                                                            if(§§pop() != §,N§)
                                                            {
                                                               continue loop12;
                                                            }
                                                            if(_loc19_ && _loc3_)
                                                            {
                                                               continue loop0;
                                                            }
                                                            §§push(this.§#!I§);
                                                            if(!_loc19_)
                                                            {
                                                               §§push(_loc10_);
                                                               if(_loc20_)
                                                               {
                                                                  §§push(§§pop() - 1);
                                                                  if(_loc20_ || this)
                                                                  {
                                                                     §§push(§§pop() * this.§1!n§);
                                                                  }
                                                                  §§push(§§pop() - §§pop());
                                                                  if(_loc20_)
                                                                  {
                                                                     addr232:
                                                                     §§push(§§pop() / 2);
                                                                  }
                                                                  §§goto(addr233);
                                                               }
                                                            }
                                                            §§goto(addr232);
                                                         }
                                                         else
                                                         {
                                                            addr300:
                                                            while(_loc20_ || param1)
                                                            {
                                                               _loc10_ = §§pop();
                                                               while(true)
                                                               {
                                                                  continue loop9;
                                                               }
                                                            }
                                                            loop5:
                                                            while(true)
                                                            {
                                                               _loc10_ = §§pop();
                                                               addr301:
                                                               while(true)
                                                               {
                                                                  if(!(_loc19_ && _loc3_))
                                                                  {
                                                                     §§push(param1);
                                                                     if(_loc20_)
                                                                     {
                                                                        §§push(_loc3_);
                                                                        if(!_loc19_)
                                                                        {
                                                                           if((§§pop()[§§pop()] as Array).length >= _loc10_)
                                                                           {
                                                                              continue loop9;
                                                                           }
                                                                           if(!_loc19_)
                                                                           {
                                                                              §§push(param1);
                                                                              if(_loc20_)
                                                                              {
                                                                                 §§push(_loc3_);
                                                                                 if(!_loc19_)
                                                                                 {
                                                                                    §§push(int((§§pop()[§§pop()] as Array).length));
                                                                                    continue loop5;
                                                                                 }
                                                                              }
                                                                              break;
                                                                           }
                                                                           §§goto(addr286);
                                                                        }
                                                                        addr331:
                                                                        _loc12_ = ((§§pop()[§§pop()] as Array)[_loc11_] as Array)[0] as XML;
                                                                        if(_loc20_ || _loc3_)
                                                                        {
                                                                           if(((param1[_loc3_] as Array)[_loc11_] as Array)[2])
                                                                           {
                                                                              if(_loc20_ || this)
                                                                              {
                                                                                 addr370:
                                                                                 _loc7_.§0!i§.push(new param2(_loc12_,_loc7_,((param1[_loc3_] as Array)[_loc11_] as Array)[2] as MovieClip));
                                                                                 if(_loc20_ || _loc3_)
                                                                                 {
                                                                                 }
                                                                              }
                                                                              addr409:
                                                                              _loc13_ = _loc7_.§0!i§[_loc7_.§0!i§.length - 1] as §>g§;
                                                                              if(!_loc19_)
                                                                              {
                                                                                 §§push(param1);
                                                                                 if(!(_loc19_ && param2))
                                                                                 {
                                                                                    §§push(_loc3_);
                                                                                    if(_loc20_ || _loc3_)
                                                                                    {
                                                                                       if(((§§pop()[§§pop()] as Array)[_loc11_] as Array)[1] != null)
                                                                                       {
                                                                                          if(_loc20_)
                                                                                          {
                                                                                             _loc14_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[1] as MovieClip;
                                                                                             addr453:
                                                                                             if(!_loc19_)
                                                                                             {
                                                                                                _loc13_.setIcon(_loc14_,this.§<!$§);
                                                                                                §§push(this.§,[§);
                                                                                                if(!_loc19_)
                                                                                                {
                                                                                                   addr554:
                                                                                                   if(§§pop() == §%P§)
                                                                                                   {
                                                                                                      addr538:
                                                                                                      §§push(2);
                                                                                                   }
                                                                                                   §§push(this.§8f§);
                                                                                                   if(_loc20_ || param1)
                                                                                                   {
                                                                                                      §§push(1);
                                                                                                      if(!_loc19_)
                                                                                                      {
                                                                                                         if(§§pop() == §§pop())
                                                                                                         {
                                                                                                            if(_loc20_)
                                                                                                            {
                                                                                                               _loc13_.x = _loc9_ + _loc11_ * this.§1!n§;
                                                                                                               if(!(_loc19_ && this))
                                                                                                               {
                                                                                                                  §§push(_loc13_);
                                                                                                                  §§push(this.§@!l§);
                                                                                                                  if(!_loc19_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() + _loc11_ * this.§ !$§);
                                                                                                                  }
                                                                                                                  §§pop().y = §§pop();
                                                                                                                  addr596:
                                                                                                                  _loc8_.§=v§(_loc13_);
                                                                                                                  addr891:
                                                                                                                  if(_loc20_ || _loc3_)
                                                                                                                  {
                                                                                                                     if(!(_loc19_ && _loc3_))
                                                                                                                     {
                                                                                                                        if(_loc20_)
                                                                                                                        {
                                                                                                                           _loc11_++;
                                                                                                                           if(!(_loc19_ && this))
                                                                                                                           {
                                                                                                                              if(false)
                                                                                                                              {
                                                                                                                                 §§goto(addr596);
                                                                                                                              }
                                                                                                                              addr892:
                                                                                                                              §§push(_loc11_);
                                                                                                                              break loop12;
                                                                                                                           }
                                                                                                                           §§goto(addr596);
                                                                                                                           addr616:
                                                                                                                        }
                                                                                                                        addr687:
                                                                                                                        if(_loc20_ || param2)
                                                                                                                        {
                                                                                                                           if(_loc20_ || param2)
                                                                                                                           {
                                                                                                                              §§goto(addr596);
                                                                                                                           }
                                                                                                                           addr867:
                                                                                                                           §§push(_loc11_);
                                                                                                                           if(_loc20_ || param2)
                                                                                                                           {
                                                                                                                              if(_loc20_ || this)
                                                                                                                              {
                                                                                                                                 §§push(_loc16_);
                                                                                                                                 if(!(_loc19_ && param1))
                                                                                                                                 {
                                                                                                                                    if(_loc20_)
                                                                                                                                    {
                                                                                                                                       §§push(this.§+!n§);
                                                                                                                                       if(_loc20_ || param1)
                                                                                                                                       {
                                                                                                                                          if(!_loc19_)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                             if(!(_loc19_ && _loc3_))
                                                                                                                                             {
                                                                                                                                                §§push(this.§8f§);
                                                                                                                                                if(_loc20_)
                                                                                                                                                {
                                                                                                                                                   addr793:
                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                   if(!(_loc19_ && this))
                                                                                                                                                   {
                                                                                                                                                      if(!(_loc19_ && param1))
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() - §§pop());
                                                                                                                                                         if(!_loc19_)
                                                                                                                                                         {
                                                                                                                                                            if(_loc20_)
                                                                                                                                                            {
                                                                                                                                                               §§push(this.§+!n§);
                                                                                                                                                               if(_loc20_)
                                                                                                                                                               {
                                                                                                                                                                  addr817:
                                                                                                                                                                  §§push(§§pop() % §§pop());
                                                                                                                                                                  if(!_loc19_)
                                                                                                                                                                  {
                                                                                                                                                                     if(!(_loc19_ && this))
                                                                                                                                                                     {
                                                                                                                                                                        addr827:
                                                                                                                                                                        §§push(int(§§pop()));
                                                                                                                                                                        if(_loc20_ || param1)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc20_)
                                                                                                                                                                           {
                                                                                                                                                                              addr836:
                                                                                                                                                                              _loc18_ = §§pop();
                                                                                                                                                                              addr837:
                                                                                                                                                                              if(this.§=b§)
                                                                                                                                                                              {
                                                                                                                                                                                 addr706:
                                                                                                                                                                                 if(_loc20_ || param1)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc20_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc13_);
                                                                                                                                                                                       §§push(_loc9_ + _loc18_ * this.§1!n§);
                                                                                                                                                                                       if(!(_loc19_ && param2))
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc16_ * this.§+!n§);
                                                                                                                                                                                          if(_loc20_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop() * this.§1!n§);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                                                                       }
                                                                                                                                                                                       §§pop().x = §§pop();
                                                                                                                                                                                       addr740:
                                                                                                                                                                                       if(!_loc19_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc13_);
                                                                                                                                                                                          §§push(this.§@!l§);
                                                                                                                                                                                          if(_loc20_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop() + _loc17_ * this.mButtonMarginY2);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§pop().y = §§pop();
                                                                                                                                                                                          §§goto(addr687);
                                                                                                                                                                                          addr742:
                                                                                                                                                                                       }
                                                                                                                                                                                       §§push(_loc11_);
                                                                                                                                                                                       if(_loc20_ || this)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr851:
                                                                                                                                                                                          addr850:
                                                                                                                                                                                          addr848:
                                                                                                                                                                                          §§push(_loc16_ * this.§+!n§);
                                                                                                                                                                                          if(_loc20_ || _loc3_)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr866:
                                                                                                                                                                                             _loc17_ = (§§pop() - §§pop() * this.§8f§) / this.§+!n§;
                                                                                                                                                                                             §§goto(addr867);
                                                                                                                                                                                          }
                                                                                                                                                                                          addr876:
                                                                                                                                                                                          §§push(int(§§pop() / §§pop()));
                                                                                                                                                                                       }
                                                                                                                                                                                       _loc16_ = §§pop();
                                                                                                                                                                                       addr879:
                                                                                                                                                                                       §§goto(addr879);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr891);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr837);
                                                                                                                                                                              }
                                                                                                                                                                              _loc13_.x = _loc9_ + _loc17_ * this.mButtonMarginX2;
                                                                                                                                                                              addr667:
                                                                                                                                                                              if(!(_loc19_ && param2))
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc13_);
                                                                                                                                                                                 §§push(this.§@!l§);
                                                                                                                                                                                 if(!_loc19_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc18_);
                                                                                                                                                                                    if(!_loc19_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop() * this.§ !$§);
                                                                                                                                                                                       if(_loc20_ || _loc3_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                                                                          if(!_loc19_)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr654:
                                                                                                                                                                                             addr640:
                                                                                                                                                                                             §§push(_loc16_ * this.§+!n§);
                                                                                                                                                                                             if(!(_loc19_ && _loc3_))
                                                                                                                                                                                             {
                                                                                                                                                                                                addr650:
                                                                                                                                                                                                §§push(§§pop() * this.§ !$§);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§pop().y = §§pop() + §§pop();
                                                                                                                                                                                             §§goto(addr596);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr654);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr650);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr640);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr654);
                                                                                                                                                                                 addr674:
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr740);
                                                                                                                                                                           }
                                                                                                                                                                           addr875:
                                                                                                                                                                           §§goto(addr876);
                                                                                                                                                                           §§push(this.§+!n§ * this.§8f§);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr866);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr876);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr817);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr851);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr866);
                                                                                                                                             }
                                                                                                                                             §§goto(addr793);
                                                                                                                                          }
                                                                                                                                          §§goto(addr875);
                                                                                                                                       }
                                                                                                                                       §§goto(addr850);
                                                                                                                                    }
                                                                                                                                    §§goto(addr875);
                                                                                                                                 }
                                                                                                                                 §§goto(addr848);
                                                                                                                              }
                                                                                                                              §§goto(addr740);
                                                                                                                           }
                                                                                                                           §§goto(addr827);
                                                                                                                        }
                                                                                                                        §§goto(addr706);
                                                                                                                     }
                                                                                                                     §§goto(addr667);
                                                                                                                  }
                                                                                                                  §§goto(addr654);
                                                                                                               }
                                                                                                               §§goto(addr674);
                                                                                                            }
                                                                                                            §§goto(addr837);
                                                                                                         }
                                                                                                         §§goto(addr875);
                                                                                                         §§push(_loc11_);
                                                                                                      }
                                                                                                      §§goto(addr851);
                                                                                                   }
                                                                                                   §§goto(addr836);
                                                                                                }
                                                                                                _loc15_ = §§pop();
                                                                                                addr540:
                                                                                                if(_loc20_ || this)
                                                                                                {
                                                                                                   addr520:
                                                                                                   _loc14_.y -= _loc14_.height / 2;
                                                                                                   addr530:
                                                                                                   if(this.§<!$§ == null)
                                                                                                   {
                                                                                                      if(_loc20_ || _loc3_)
                                                                                                      {
                                                                                                         if(!(_loc19_ && param2))
                                                                                                         {
                                                                                                            if(!(_loc19_ && param1))
                                                                                                            {
                                                                                                               _loc14_.y -= _loc15_;
                                                                                                               addr511:
                                                                                                               if(!(_loc19_ && this))
                                                                                                               {
                                                                                                                  if(false)
                                                                                                                  {
                                                                                                                     §§goto(addr520);
                                                                                                                  }
                                                                                                                  §§goto(addr554);
                                                                                                               }
                                                                                                               §§goto(addr538);
                                                                                                            }
                                                                                                            §§goto(addr540);
                                                                                                         }
                                                                                                         §§goto(addr530);
                                                                                                      }
                                                                                                      §§goto(addr511);
                                                                                                   }
                                                                                                   §§goto(addr554);
                                                                                                   addr547:
                                                                                                }
                                                                                                addr553:
                                                                                                §§goto(addr553);
                                                                                             }
                                                                                             §§goto(addr547);
                                                                                          }
                                                                                          §§goto(addr742);
                                                                                       }
                                                                                       §§goto(addr554);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr453);
                                                                              }
                                                                              §§goto(addr616);
                                                                           }
                                                                           _loc7_.§0!i§.push(new param2(_loc12_,_loc7_,new this.§3&§() as MovieClip));
                                                                           §§goto(addr409);
                                                                        }
                                                                        §§goto(addr370);
                                                                     }
                                                                     break;
                                                                  }
                                                                  continue loop1;
                                                               }
                                                               addr330:
                                                               §§goto(addr331);
                                                            }
                                                            addr278:
                                                            addr300:
                                                         }
                                                      }
                                                      continue loop2;
                                                   }
                                                }
                                                §§goto(addr892);
                                             }
                                             §§goto(addr286);
                                          }
                                          addr902:
                                          _loc8_.§`?§("");
                                          if(!_loc20_)
                                          {
                                             addr907:
                                             break loop11;
                                          }
                                          _loc7_.§'"§(this.§+!n§,this.§@^§,this.§?!B§,this.§>! § * this.§1!n§,this.§>! § * this.§ !$§,this.§8f§,this.§>! §);
                                          if(!_loc19_)
                                          {
                                             break loop11;
                                          }
                                          continue loop0;
                                       }
                                       §§goto(addr199);
                                    }
                                    break;
                                 }
                                 if(§§pop() < (param1[_loc3_] as Array).length)
                                 {
                                    §§goto(addr330);
                                    §§push(param1);
                                 }
                                 if(!_loc19_)
                                 {
                                    §§goto(addr902);
                                 }
                                 §§goto(addr907);
                              }
                              §§goto(addr301);
                           }
                           break;
                        }
                        addr941:
                        _loc3_++;
                        continue loop0;
                     }
                  }
               }
            }
            §§goto(addr941);
         }
         if(param1.length > 1)
         {
         }
         addr952:
      }
      
      public function get §3!D§() : int
      {
         return this.§+!n§;
      }
      
      public function get §@<§() : int
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§3!D§);
            if(_loc1_ || _loc1_)
            {
               if(§§pop() == 0)
               {
                  if(!(_loc2_ && _loc2_))
                  {
                     §§goto(addr57);
                  }
               }
               §§push(this.§1l§(this.§[N§).§2m§.length / this.§3!D§);
               if(!(_loc2_ && _loc2_))
               {
                  return §§pop() + 1;
               }
            }
            §§goto(addr57);
         }
         addr57:
         return 0;
      }
      
      override public function containerEventOccured(param1:int, param2:String, param3:§7!"§) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:§6!M§ = null;
         var _loc4_:§"W§ = getItemByName(this.§[N§) as §"W§;
         if(!(_loc6_ && this))
         {
            §§push(param2);
            loop0:
            while(§§pop().toUpperCase() != "SCROLL_LEFT")
            {
               §§push(param2);
               while(true)
               {
                  if(!(_loc7_ || param1))
                  {
                     continue loop0;
                  }
                  if(§§pop().toUpperCase() != "SCROLL_RIGHT")
                  {
                     continue;
                  }
                  if(_loc7_)
                  {
                     if(!(_loc6_ && param3))
                     {
                        if(_loc4_)
                        {
                           addr205:
                           if(_loc7_ || param1)
                           {
                              _loc4_.§=!_§(_loc4_.§7O§ + 1);
                              this.§%E§();
                              if(!_loc7_)
                              {
                                 addr243:
                                 §§push(Boolean(_loc5_ = this.§1l§((param3 as §&W§).mParentContainer.mName.toUpperCase())));
                                 if(_loc7_)
                                 {
                                    if(§§pop())
                                    {
                                       if(_loc7_)
                                       {
                                          addr271:
                                          §§pop();
                                          if(!(_loc6_ && param1))
                                          {
                                             addr282:
                                             if(param3 is §>g§)
                                             {
                                                if(!_loc6_)
                                                {
                                                   _loc5_.§`?§((param3 as §&W§).mName.toUpperCase());
                                                   break;
                                                }
                                                break;
                                             }
                                             break;
                                          }
                                          break;
                                       }
                                    }
                                    §§goto(addr282);
                                 }
                                 §§goto(addr271);
                              }
                              addr218:
                           }
                           else
                           {
                              addr222:
                              break;
                              addr222:
                           }
                        }
                        break;
                     }
                     addr297:
                     addr229:
                     _loc4_.§=!_§(_loc4_.§7O§ - 1);
                     if(!_loc6_)
                     {
                        this.§%E§();
                     }
                     addr297:
                     return;
                     §§goto(addr222);
                  }
                  §§goto(addr297);
               }
               super.containerEventOccured(param1,param2,param3);
               §§goto(addr297);
            }
         }
         if(_loc4_)
         {
            §§goto(addr229);
         }
         §§goto(addr222);
      }
      
      public function § !%§(param1:String, param2:int) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§"W§ = getItemByName(param1) as §"W§;
         if(_loc5_ || param2)
         {
            if(_loc3_)
            {
               do
               {
                  _loc3_.§=!_§(param2);
                  do
                  {
                     this.§%E§();
                  }
                  while(!_loc5_);
                  
               }
               while(_loc4_ && param2);
               
               addr71:
            }
            return;
         }
         §§goto(addr71);
      }
      
      public function §1l§(param1:String) : §6!M§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = 0;
         do
         {
            if(_loc2_ >= this.§&z§.length)
            {
               if(!(_loc4_ && _loc3_))
               {
                  return null;
               }
               loop1:
               while(_loc4_ && param1)
               {
                  while(true)
                  {
                     _loc2_++;
                     continue loop1;
                  }
               }
               continue;
            }
            if(param1.toUpperCase() == (this.§&z§[_loc2_] as §6!M§).mName.toUpperCase())
            {
               break;
            }
            §§goto(addr46);
         }
         while(_loc3_);
         
         return this.§&z§[_loc2_] as §6!M§;
      }
      
      public function §69§(param1:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.§[N§ = param1;
         }
         var _loc2_:int = 0;
         loop0:
         while(true)
         {
            if(_loc2_ >= §0!i§.length)
            {
               if(!(_loc3_ && this))
               {
                  if(!_loc3_)
                  {
                     if(_loc4_ || _loc3_)
                     {
                        if(_loc4_)
                        {
                           if(!(_loc3_ && this))
                           {
                              if(_loc4_)
                              {
                                 this.§%E§();
                                 addr63:
                                 if(_loc4_)
                                 {
                                    break;
                                 }
                                 continue;
                              }
                              loop1:
                              while(true)
                              {
                                 if(!_loc3_)
                                 {
                                    this.§<J§.x = (§0!i§[_loc2_] as §"W§).x + this.§!f§;
                                    loop2:
                                    while(true)
                                    {
                                       this.§<J§.width = (§0!i§[_loc2_] as §"W§).width + this.§``§;
                                       addr147:
                                       while(true)
                                       {
                                          if(!(_loc3_ && param1))
                                          {
                                             loop6:
                                             while(true)
                                             {
                                                §§push(this.§5!Q§);
                                                if(_loc3_)
                                                {
                                                   addr66:
                                                   break;
                                                }
                                                if(§§pop())
                                                {
                                                   while(true)
                                                   {
                                                      if(!_loc4_)
                                                      {
                                                         continue loop2;
                                                      }
                                                      this.§<J§.y = (§0!i§[_loc2_] as §"W§).y + this.§''§;
                                                      while(true)
                                                      {
                                                         this.§<J§.height = (§0!i§[_loc2_] as §"W§).height + this.§40§;
                                                         addr110:
                                                         while(true)
                                                         {
                                                            if(_loc3_)
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(this.§`@§);
                                                                  break loop6;
                                                               }
                                                               addr216:
                                                            }
                                                         }
                                                      }
                                                   }
                                                   addr119:
                                                }
                                                _loc2_++;
                                                continue loop0;
                                             }
                                             loop5:
                                             while(true)
                                             {
                                                if(_loc3_ && param1)
                                                {
                                                   while(§§pop())
                                                   {
                                                      while(true)
                                                      {
                                                         if((§0!i§[_loc2_] as §"W§).mName.toUpperCase() == param1.toUpperCase())
                                                         {
                                                            while(true)
                                                            {
                                                               (§0!i§[_loc2_] as §"W§).setActiveStatus(true);
                                                            }
                                                            addr209:
                                                         }
                                                         else
                                                         {
                                                            (§0!i§[_loc2_] as §"W§).setActiveStatus(false);
                                                            while(true)
                                                            {
                                                               if(!(_loc3_ && param1))
                                                               {
                                                                  break loop5;
                                                               }
                                                               §§goto(addr133);
                                                            }
                                                            addr79:
                                                         }
                                                         §§goto(addr216);
                                                      }
                                                   }
                                                   break;
                                                   addr198:
                                                }
                                                if(§§pop())
                                                {
                                                   continue loop1;
                                                }
                                                §§goto(addr113);
                                                §§goto(addr133);
                                             }
                                             addr113:
                                             §§goto(addr66);
                                          }
                                          §§goto(addr199);
                                       }
                                    }
                                 }
                                 §§goto(addr209);
                              }
                           }
                           §§goto(addr147);
                        }
                        §§goto(addr119);
                     }
                     §§goto(addr110);
                  }
                  §§goto(addr79);
               }
               §§goto(addr63);
            }
            else
            {
               §§push(§0!i§[_loc2_] is §"W§);
            }
            §§goto(addr198);
         }
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§6!M§ = null;
         if(_loc6_ || this)
         {
            super.setEnabled(param1);
         }
         for each(_loc2_ in this.§&z§)
         {
            if(_loc6_ || _loc2_)
            {
               _loc2_.setEnabled(param1);
            }
         }
      }
      
      public function §%E§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(getItemByName("Button_Scroll1") == null);
            if(_loc3_)
            {
               if(§§pop())
               {
                  if(_loc3_ || _loc3_)
                  {
                     addr35:
                     §§pop();
                     addr52:
                     if(_loc3_)
                     {
                        §§push(getItemByName("Button_Scroll2") == null);
                     }
                     var _loc1_:§"W§ = getItemByName(this.§[N§) as §"W§;
                     if(!(_loc2_ && _loc2_))
                     {
                        if(_loc1_)
                        {
                           if(!(_loc2_ && _loc3_))
                           {
                              §§push(_loc1_.§7O§);
                              loop5:
                              while(true)
                              {
                                 §§push(0);
                                 loop6:
                                 while(true)
                                 {
                                    if(§§pop() <= §§pop())
                                    {
                                       (getItemByName("Button_Scroll1") as §,c§).setComponentState(§5!a§.§-n§);
                                       loop7:
                                       while(true)
                                       {
                                          if(!(_loc2_ && _loc1_))
                                          {
                                             loop4:
                                             while(true)
                                             {
                                                §§push(_loc1_.§7O§);
                                                if(!_loc3_)
                                                {
                                                   continue loop5;
                                                }
                                                §§push(_loc1_.§<!Y§);
                                                if(!_loc3_)
                                                {
                                                   continue loop6;
                                                }
                                                if(§§pop() >= §§pop() - 1)
                                                {
                                                   (getItemByName("Button_Scroll2") as §,c§).setComponentState(§5!a§.§-n§);
                                                   while(true)
                                                   {
                                                      if(_loc2_)
                                                      {
                                                         while(true)
                                                         {
                                                            if(!_loc3_)
                                                            {
                                                               continue loop7;
                                                            }
                                                            addr147:
                                                            (getItemByName("Button_Scroll2") as §,c§).setComponentState(§5!a§.COMPONENT_STATE_ACTIVE_DEFAULT);
                                                            while(_loc2_ && this)
                                                            {
                                                               while(true)
                                                               {
                                                                  (getItemByName("Button_Scroll1") as §,c§).setComponentState(§5!a§.COMPONENT_STATE_ACTIVE_DEFAULT);
                                                                  break loop4;
                                                               }
                                                               §§goto(addr147);
                                                            }
                                                         }
                                                         addr145:
                                                      }
                                                      §§goto(addr68);
                                                   }
                                                   addr131:
                                                }
                                                §§goto(addr145);
                                                continue loop7;
                                             }
                                             addr134:
                                          }
                                          while(true)
                                          {
                                             §§goto(addr134);
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                           §§goto(addr205);
                        }
                        else
                        {
                           (getItemByName("Button_Scroll1") as §,c§).setComponentState(§5!a§.§-n§);
                           while(!(_loc2_ && _loc2_))
                           {
                              (getItemByName("Button_Scroll2") as §,c§).setComponentState(§5!a§.§-n§);
                              if(!(_loc2_ && this))
                              {
                                 if(_loc2_)
                                 {
                                    §§goto(addr155);
                                 }
                                 addr68:
                                 return;
                              }
                           }
                        }
                        §§goto(addr131);
                     }
                     §§goto(addr162);
                  }
               }
               if(§§pop())
               {
                  if(_loc3_ || this)
                  {
                     return;
                  }
                  §§goto(addr52);
               }
               §§goto(addr52);
            }
         }
         §§goto(addr35);
      }
      
      public function §!!5§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§"W§ = null;
         var _loc1_:* = int(§0!i§.length - 1);
         loop0:
         while(_loc1_ >= 0)
         {
            _loc2_ = §0!i§[_loc1_] as §"W§;
            if(!(_loc3_ && _loc1_))
            {
               if(_loc2_)
               {
                  while(true)
                  {
                     _loc2_.clear();
                     addr91:
                     while(true)
                     {
                        addr81:
                        while(true)
                        {
                           §0!i§.splice(_loc1_,1);
                           addr86:
                           while(true)
                           {
                           }
                        }
                     }
                     addr72:
                     if(_loc3_ && _loc2_)
                     {
                        continue;
                     }
                     while(false)
                     {
                        §§goto(addr81);
                     }
                     continue loop0;
                     addr79:
                  }
               }
               while(true)
               {
                  §§push(_loc1_);
                  if(!_loc3_)
                  {
                     §§push(§§pop() - 1);
                  }
                  _loc1_ = §§pop();
                  if(!_loc4_)
                  {
                     continue;
                  }
                  if(!_loc3_)
                  {
                     §§goto(addr72);
                  }
                  §§goto(addr91);
               }
            }
            §§goto(addr79);
         }
         if(_loc4_)
         {
            this.§69§("");
         }
      }
      
      public function §6!m§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§6!M§ = null;
         for each(_loc1_ in this.§&z§)
         {
            if(_loc5_)
            {
               _loc1_.§6!m§();
            }
         }
      }
      
      public function §^!q§() : Array
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §§push(this.§1l§(this.§[N§));
            while(§§pop() != null)
            {
               §§push(this.§1l§(this.§[N§));
               if(!_loc1_)
               {
                  return §§pop().§'<§();
               }
            }
            §[g§.log("ERROR! Tried to get selections for noninited repeater!");
         }
         return new Array();
      }
      
      public function §@!1§(param1:Array) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§1l§(this.§[N§).§@!1§(param1);
         }
      }
      
      public function §4U§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§1l§(this.§[N§).§4U§(param1);
         }
      }
      
      override public function clear() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.clear();
            loop0:
            while(true)
            {
               this.§3&§ = null;
               while(true)
               {
                  this.§&z§ = null;
                  while(!(_loc1_ && _loc2_))
                  {
                     if(_loc2_)
                     {
                        this.§ !Q§ = null;
                        if(_loc2_ || this)
                        {
                           return;
                           addr55:
                        }
                        continue;
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr55);
      }
   }
}
