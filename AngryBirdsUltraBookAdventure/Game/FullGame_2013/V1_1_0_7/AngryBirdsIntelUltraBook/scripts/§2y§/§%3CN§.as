package §2y§
{
   import §1!B§.§<m§;
   import §>f§.§&!G§;
   import §@!&§.§'!o§;
   import §@!&§.§-0§;
   import §@!&§.§7!>§;
   import §@!&§.§7W§;
   import com.rovio.assets.§,!j§;
   import flash.display.*;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §<N§ extends §^! §
   {
      
      public static const §!k§:int = 0;
      
      public static const §`f§:int = 1;
      
      public static const §>e§:int = 2;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §!k§ = 0;
         }
         do
         {
            §`f§ = 1;
            do
            {
               §>e§ = 2;
            }
            while(!(_loc2_ || §<N§));
            
         }
         while(!(_loc2_ || _loc1_));
         
      }
      
      public var §<!s§:String;
      
      public var §default§:Class;
      
      public var §4!§:String = null;
      
      public var §3,§:Vector.<§7W§>;
      
      public var §+Y§:int;
      
      public var § <§:Number;
      
      public var §-!f§:Number;
      
      public var §'!;§:Number;
      
      public var §7!`§:Number;
      
      public var §@!a§:Number;
      
      public var § g§:Number;
      
      public var §`m§:Number;
      
      public var §;! §:Number;
      
      public var mButtonMarginX2:Number;
      
      public var mButtonMarginY2:Number;
      
      public var §-a§:int;
      
      public var §;"#§:Number;
      
      public var §]E§:String = "";
      
      public var §]N§:int;
      
      public var §-!Z§:int;
      
      public var §2!G§:GlowFilter;
      
      public var §^!'§:Boolean = true;
      
      public var §@!X§:int;
      
      public var §3!f§:int;
      
      public var §true §:Number = 0;
      
      public var § t§:Number = 0;
      
      public var §&=§:Number = 0;
      
      public var §5E§:Number = 0;
      
      public var §5!E§:Boolean = false;
      
      public var §=j§:Boolean = false;
      
      public var §;f§:MovieClip = null;
      
      public function §<N§(param1:XML, param2:§^! §, param3:§&!G§, param4:MovieClip = null)
      {
         /*
          * Decompilation error
          * Timeout (1 minute) was reached
          * Instruction count: 1316
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to timeout");
      }
      
      public function §>k§(param1:Array = null, param2:Class = null) : void
      {
         var _loc19_:Boolean = true;
         var _loc20_:Boolean = false;
         var _loc4_:String = null;
         var _loc5_:MovieClip = null;
         var _loc6_:XML = null;
         var _loc7_:§;!=§ = null;
         var _loc8_:§7W§ = null;
         var _loc9_:* = 0;
         var _loc10_:* = 0;
         var _loc11_:* = 0;
         var _loc12_:XML = null;
         var _loc13_:§8!k§ = null;
         var _loc14_:MovieClip = null;
         var _loc15_:int = 0;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         var _loc18_:* = 0;
         if(!(_loc20_ && param1))
         {
            if(param2 == null)
            {
               if(!_loc20_)
               {
                  param2 = §8!k§;
                  addr69:
                  this.§3,§ = new Vector.<§7W§>();
                  if(!(_loc20_ && param2))
                  {
                     this.§+!%§();
                     if(!_loc20_)
                     {
                        §§goto(addr86);
                     }
                  }
               }
               §§goto(addr111);
            }
            §§goto(addr69);
         }
         addr86:
         §§push(param1);
         if(_loc19_ || param2)
         {
            if(§§pop() == null)
            {
               if(_loc19_ || this)
               {
                  param1 = getParentView().getRepeaterDataXML(mName);
               }
               §§goto(addr111);
            }
            §§push(param1);
         }
         if(!§§pop())
         {
            addr111:
            param1 = new Array();
            §§goto(addr115);
         }
         addr115:
         var _loc3_:int = 0;
         loop0:
         while(true)
         {
            if(_loc3_ >= param1.length)
            {
               if(!_loc20_)
               {
                  break;
               }
               §§goto(addr966);
            }
            §§push(mName + "_Tab_");
            if(_loc19_ || this)
            {
               §§push(§§pop() + _loc3_);
            }
            _loc4_ = §§pop();
            if(_loc20_ && param1)
            {
               break;
            }
            _loc5_ = new MovieClip();
            (_loc6_ = <Container/>).@name = _loc4_;
            _loc7_ = new §;!=§(_loc6_,this,null,_loc5_);
            if(_loc19_)
            {
               §&O§.push(_loc7_);
            }
            _loc8_ = new §7W§(this.§3!f§,_loc4_);
            if(_loc19_ || _loc3_)
            {
               this.§3,§.push(_loc8_);
               loop1:
               while(true)
               {
                  §§push(this.§@!a§);
                  loop2:
                  while(true)
                  {
                     §§push(int(§§pop()));
                     loop3:
                     while(true)
                     {
                        _loc9_ = §§pop();
                        loop4:
                        while(true)
                        {
                           §§push(this.§+Y§);
                           loop5:
                           while(true)
                           {
                              §§push(int(§§pop()));
                              loop6:
                              while(true)
                              {
                                 _loc10_ = §§pop();
                                 loop7:
                                 while(true)
                                 {
                                    if(_loc19_)
                                    {
                                       §§push(param1);
                                       if(_loc19_)
                                       {
                                          §§push(_loc3_);
                                          if(!(_loc20_ && param1))
                                          {
                                             if((§§pop()[§§pop()] as Array).length >= _loc10_)
                                             {
                                                loop8:
                                                while(true)
                                                {
                                                   §§push(this.§-!Z§);
                                                   if(!_loc20_)
                                                   {
                                                      if(_loc19_)
                                                      {
                                                         if(§§pop() != §!k§)
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(0);
                                                               if(_loc19_ || param1)
                                                               {
                                                                  if(_loc20_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  _loc11_ = §§pop();
                                                                  if(_loc19_)
                                                                  {
                                                                     if(_loc19_)
                                                                     {
                                                                        if(false)
                                                                        {
                                                                           continue loop8;
                                                                        }
                                                                        §§goto(addr902);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr248);
                                                                     }
                                                                  }
                                                                  §§goto(addr955);
                                                               }
                                                            }
                                                            continue loop3;
                                                            addr180:
                                                         }
                                                         if(_loc19_ || param1)
                                                         {
                                                            §§push(this.§'!;§);
                                                            if(_loc19_)
                                                            {
                                                               §§push(_loc10_);
                                                               if(_loc19_)
                                                               {
                                                                  §§push(§§pop() - 1);
                                                                  if(!_loc20_)
                                                                  {
                                                                     §§push(§§pop() * this.§`m§);
                                                                  }
                                                                  §§push(§§pop() - §§pop());
                                                                  if(!(_loc20_ && this))
                                                                  {
                                                                     continue loop2;
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  addr243:
                                                                  §§push(§§pop() / §§pop());
                                                               }
                                                            }
                                                            §§push(int(§§pop()));
                                                            if(!_loc20_)
                                                            {
                                                               _loc9_ = §§pop();
                                                               while(_loc19_)
                                                               {
                                                                  continue loop1;
                                                               }
                                                               continue loop7;
                                                               addr248:
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr902);
                                                            }
                                                         }
                                                         §§goto(addr916);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr304);
                                                      }
                                                   }
                                                }
                                                continue loop6;
                                                addr198:
                                             }
                                             if(_loc19_ || param1)
                                             {
                                                §§push(param1);
                                                if(!(_loc20_ && param1))
                                                {
                                                   §§push(_loc3_);
                                                   if(_loc19_ || param1)
                                                   {
                                                      addr299:
                                                      §§push(int((§§pop()[§§pop()] as Array).length));
                                                      while(true)
                                                      {
                                                         if(_loc19_ || param2)
                                                         {
                                                            continue loop5;
                                                         }
                                                         continue loop6;
                                                      }
                                                      addr304:
                                                   }
                                                   else
                                                   {
                                                      addr350:
                                                      _loc12_ = ((§§pop()[§§pop()] as Array)[_loc11_] as Array)[0] as XML;
                                                      if(!(_loc20_ && _loc3_))
                                                      {
                                                         if(((param1[_loc3_] as Array)[_loc11_] as Array)[2])
                                                         {
                                                            if(_loc19_)
                                                            {
                                                               addr384:
                                                               _loc7_.§&O§.push(new param2(_loc12_,_loc7_,((param1[_loc3_] as Array)[_loc11_] as Array)[2] as MovieClip));
                                                               if(_loc20_ && param1)
                                                               {
                                                               }
                                                            }
                                                            addr423:
                                                            _loc13_ = _loc7_.§&O§[_loc7_.§&O§.length - 1] as §8!k§;
                                                            if(!(_loc20_ && this))
                                                            {
                                                               §§push(param1);
                                                               if(!_loc20_)
                                                               {
                                                                  §§push(_loc3_);
                                                                  if(!_loc20_)
                                                                  {
                                                                     if(((§§pop()[§§pop()] as Array)[_loc11_] as Array)[1] != null)
                                                                     {
                                                                        if(_loc19_)
                                                                        {
                                                                           _loc14_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[1] as MovieClip;
                                                                           addr462:
                                                                           if(!_loc20_)
                                                                           {
                                                                              _loc13_.setIcon(_loc14_,this.§4!§);
                                                                              addr557:
                                                                              §§push(this.§]N§);
                                                                              if(_loc19_ || this)
                                                                              {
                                                                                 if(§§pop() == §`f§)
                                                                                 {
                                                                                    if(!_loc20_)
                                                                                    {
                                                                                       addr550:
                                                                                       _loc15_ = 2;
                                                                                    }
                                                                                    addr524:
                                                                                    _loc14_.y -= _loc14_.height / 2;
                                                                                    addr534:
                                                                                    addr551:
                                                                                    if(this.§4!§ == null)
                                                                                    {
                                                                                       if(!(_loc20_ && this))
                                                                                       {
                                                                                          if(_loc19_)
                                                                                          {
                                                                                             addr502:
                                                                                             _loc14_.y -= _loc15_;
                                                                                             addr508:
                                                                                             if(!(_loc20_ && this))
                                                                                             {
                                                                                                if(_loc19_ || this)
                                                                                                {
                                                                                                   if(false)
                                                                                                   {
                                                                                                      §§goto(addr524);
                                                                                                   }
                                                                                                   addr558:
                                                                                                   §§push(this.§-a§);
                                                                                                   if(!(_loc20_ && this))
                                                                                                   {
                                                                                                      §§push(1);
                                                                                                      if(!(_loc20_ && param1))
                                                                                                      {
                                                                                                         if(§§pop() == §§pop())
                                                                                                         {
                                                                                                            if(!(_loc20_ && this))
                                                                                                            {
                                                                                                               _loc13_.x = _loc9_ + _loc11_ * this.§`m§;
                                                                                                               if(_loc19_)
                                                                                                               {
                                                                                                                  §§push(_loc13_);
                                                                                                                  §§push(this.§ g§);
                                                                                                                  if(!(_loc20_ && _loc3_))
                                                                                                                  {
                                                                                                                     §§push(§§pop() + _loc11_ * this.§;! §);
                                                                                                                  }
                                                                                                                  §§pop().y = §§pop();
                                                                                                                  addr623:
                                                                                                                  _loc8_.§ get§(_loc13_);
                                                                                                                  addr900:
                                                                                                                  if(!(_loc20_ && this))
                                                                                                                  {
                                                                                                                     _loc11_++;
                                                                                                                     if(_loc19_ || param2)
                                                                                                                     {
                                                                                                                        if(_loc19_ || this)
                                                                                                                        {
                                                                                                                           if(!_loc20_)
                                                                                                                           {
                                                                                                                              if(_loc19_ || _loc3_)
                                                                                                                              {
                                                                                                                                 if(_loc19_)
                                                                                                                                 {
                                                                                                                                    if(false)
                                                                                                                                    {
                                                                                                                                       §§goto(addr623);
                                                                                                                                    }
                                                                                                                                    addr902:
                                                                                                                                    if(_loc11_ < (param1[_loc3_] as Array).length)
                                                                                                                                    {
                                                                                                                                       §§push(param1);
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                    if(_loc19_)
                                                                                                                                    {
                                                                                                                                       _loc8_.§@G§("");
                                                                                                                                       if(_loc19_)
                                                                                                                                       {
                                                                                                                                          _loc7_.§@!n§(this.§+Y§,this.§ <§,this.§-!f§,this.§@!X§ * this.§`m§,this.§@!X§ * this.§;! §,this.§-a§,this.§@!X§);
                                                                                                                                          addr916:
                                                                                                                                          if(!(_loc20_ && _loc3_))
                                                                                                                                          {
                                                                                                                                             addr955:
                                                                                                                                             _loc3_++;
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    continue loop0;
                                                                                                                                 }
                                                                                                                                 addr864:
                                                                                                                                 §§push(_loc11_);
                                                                                                                                 if(_loc19_ || param1)
                                                                                                                                 {
                                                                                                                                    if(!_loc20_)
                                                                                                                                    {
                                                                                                                                       if(_loc19_)
                                                                                                                                       {
                                                                                                                                          §§push(_loc16_);
                                                                                                                                          if(_loc19_)
                                                                                                                                          {
                                                                                                                                             §§push(this.§+Y§);
                                                                                                                                             if(_loc19_ || param2)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                if(_loc19_)
                                                                                                                                                {
                                                                                                                                                   §§push(this.§-a§);
                                                                                                                                                   if(!_loc20_)
                                                                                                                                                   {
                                                                                                                                                      addr780:
                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                      if(!(_loc20_ && param2))
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() - §§pop());
                                                                                                                                                         if(_loc19_ || this)
                                                                                                                                                         {
                                                                                                                                                            if(!(_loc20_ && _loc3_))
                                                                                                                                                            {
                                                                                                                                                               if(!(_loc20_ && param1))
                                                                                                                                                               {
                                                                                                                                                                  §§push(this.§+Y§);
                                                                                                                                                                  if(_loc19_ || param2)
                                                                                                                                                                  {
                                                                                                                                                                     addr819:
                                                                                                                                                                     §§push(int(§§pop() % §§pop()));
                                                                                                                                                                     if(!(_loc20_ && _loc3_))
                                                                                                                                                                     {
                                                                                                                                                                        _loc18_ = §§pop();
                                                                                                                                                                        addr828:
                                                                                                                                                                        if(this.§^!'§)
                                                                                                                                                                        {
                                                                                                                                                                           addr710:
                                                                                                                                                                           if(!_loc20_)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc19_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc19_ || _loc3_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr721:
                                                                                                                                                                                    §§push(_loc13_);
                                                                                                                                                                                    §§push(_loc9_ + _loc18_ * this.§`m§);
                                                                                                                                                                                    if(_loc19_ || param1)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc16_ * this.§+Y§);
                                                                                                                                                                                       if(!_loc20_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() * this.§`m§);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                                                                    }
                                                                                                                                                                                    §§pop().x = §§pop();
                                                                                                                                                                                    §§push(_loc13_);
                                                                                                                                                                                    §§push(this.§ g§);
                                                                                                                                                                                    if(_loc19_ || _loc3_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop() + _loc17_ * this.mButtonMarginY2);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§pop().y = §§pop();
                                                                                                                                                                                    §§goto(addr623);
                                                                                                                                                                                    addr746:
                                                                                                                                                                                    addr705:
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr900);
                                                                                                                                                                              }
                                                                                                                                                                              addr883:
                                                                                                                                                                              §§push(_loc11_);
                                                                                                                                                                              §§push(_loc16_);
                                                                                                                                                                              if(!(_loc20_ && this))
                                                                                                                                                                              {
                                                                                                                                                                                 addr841:
                                                                                                                                                                                 addr839:
                                                                                                                                                                                 §§push(this.§+Y§);
                                                                                                                                                                                 if(_loc19_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                    if(_loc19_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr849:
                                                                                                                                                                                       addr848:
                                                                                                                                                                                       §§push(§§pop() * this.§-a§);
                                                                                                                                                                                       if(_loc19_ || _loc3_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() - §§pop());
                                                                                                                                                                                          if(!_loc20_)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr863:
                                                                                                                                                                                             _loc17_ = §§pop() / this.§+Y§;
                                                                                                                                                                                             addr862:
                                                                                                                                                                                             §§goto(addr864);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr862);
                                                                                                                                                                                       }
                                                                                                                                                                                       _loc16_ = §§pop() / §§pop();
                                                                                                                                                                                       §§goto(addr883);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr849);
                                                                                                                                                                                 }
                                                                                                                                                                                 addr879:
                                                                                                                                                                                 §§goto(addr849);
                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr879);
                                                                                                                                                                              §§push(this.§-a§);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr828);
                                                                                                                                                                        }
                                                                                                                                                                        _loc13_.x = _loc9_ + _loc17_ * this.mButtonMarginX2;
                                                                                                                                                                        addr685:
                                                                                                                                                                        if(!_loc20_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc13_);
                                                                                                                                                                           §§push(this.§ g§);
                                                                                                                                                                           if(!_loc20_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc18_);
                                                                                                                                                                              if(_loc19_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() * this.§;! §);
                                                                                                                                                                                 if(!(_loc20_ && this))
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                                                                    if(!(_loc20_ && this))
                                                                                                                                                                                    {
                                                                                                                                                                                       addr663:
                                                                                                                                                                                       §§push(_loc16_ * this.§+Y§);
                                                                                                                                                                                       if(!_loc20_)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr671:
                                                                                                                                                                                          §§push(§§pop() + §§pop() * this.§;! §);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr671);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§pop().y = §§pop();
                                                                                                                                                                                    addr673:
                                                                                                                                                                                    §§goto(addr623);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr671);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr663);
                                                                                                                                                                           addr687:
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr710);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr883);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr862);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr849);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr862);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr819);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr849);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr848);
                                                                                                                                                }
                                                                                                                                                §§goto(addr780);
                                                                                                                                             }
                                                                                                                                             §§goto(addr841);
                                                                                                                                          }
                                                                                                                                          §§goto(addr883);
                                                                                                                                       }
                                                                                                                                       §§goto(addr849);
                                                                                                                                    }
                                                                                                                                    §§goto(addr863);
                                                                                                                                 }
                                                                                                                                 §§goto(addr819);
                                                                                                                              }
                                                                                                                              §§goto(addr746);
                                                                                                                           }
                                                                                                                           §§goto(addr685);
                                                                                                                        }
                                                                                                                        §§goto(addr673);
                                                                                                                     }
                                                                                                                     §§goto(addr623);
                                                                                                                  }
                                                                                                                  §§goto(addr705);
                                                                                                               }
                                                                                                               §§goto(addr828);
                                                                                                            }
                                                                                                            §§goto(addr721);
                                                                                                         }
                                                                                                         §§push(_loc11_);
                                                                                                         if(!(_loc20_ && this))
                                                                                                         {
                                                                                                            §§goto(addr883);
                                                                                                            §§push(this.§+Y§);
                                                                                                         }
                                                                                                         §§goto(addr849);
                                                                                                      }
                                                                                                      §§goto(addr839);
                                                                                                   }
                                                                                                   §§goto(addr863);
                                                                                                }
                                                                                                §§goto(addr557);
                                                                                             }
                                                                                             §§goto(addr534);
                                                                                          }
                                                                                          §§goto(addr551);
                                                                                       }
                                                                                       §§goto(addr508);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr558);
                                                                              }
                                                                              §§goto(addr550);
                                                                           }
                                                                           §§goto(addr502);
                                                                        }
                                                                        §§goto(addr623);
                                                                     }
                                                                     §§goto(addr558);
                                                                  }
                                                               }
                                                               §§goto(addr462);
                                                            }
                                                            §§goto(addr687);
                                                         }
                                                         _loc7_.§&O§.push(new param2(_loc12_,_loc7_,new this.§default§() as MovieClip));
                                                         §§goto(addr423);
                                                      }
                                                      §§goto(addr384);
                                                   }
                                                }
                                                break;
                                             }
                                             §§goto(addr955);
                                             §§goto(addr902);
                                          }
                                          §§goto(addr299);
                                       }
                                       break;
                                    }
                                    continue loop4;
                                 }
                                 §§goto(addr350);
                              }
                           }
                        }
                     }
                  }
               }
            }
            while(true)
            {
               §§goto(addr180);
            }
         }
         if(param1.length > 1)
         {
         }
         addr966:
      }
      
      public function get §>!w§() : int
      {
         return this.§+Y§;
      }
      
      public function get §+1§() : int
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§>!w§);
            if(!_loc1_)
            {
               if(§§pop() == 0)
               {
                  if(_loc2_)
                  {
                     §§goto(addr38);
                  }
               }
               §§push(this.§1!@§(this.§]E§).§3w§.length / this.§>!w§);
               if(_loc2_)
               {
                  return §§pop() + 1;
               }
            }
            §§goto(addr38);
         }
         addr38:
         return 0;
      }
      
      override public function containerEventOccured(param1:int, param2:String, param3:§'!o§) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:§7W§ = null;
         var _loc4_:§;!=§ = getItemByName(this.§]E§) as §;!=§;
         if(_loc7_)
         {
            §§push(param2);
            loop0:
            while(§§pop().toUpperCase() != "SCROLL_LEFT")
            {
               §§push(param2);
               while(§§pop().toUpperCase() != "SCROLL_RIGHT")
               {
                  §§push(param2);
                  if(!(_loc6_ && param2))
                  {
                     if(_loc6_ && param1)
                     {
                        continue loop0;
                     }
                     §§push(§§pop().length > 0);
                     loop2:
                     while(true)
                     {
                        §§push(§§pop());
                        loop3:
                        while(true)
                        {
                           if(§§pop())
                           {
                              loop4:
                              while(true)
                              {
                                 §§pop();
                                 loop5:
                                 while(true)
                                 {
                                    if(!_loc6_)
                                    {
                                       if(!_loc6_)
                                       {
                                          if(_loc6_)
                                          {
                                             break loop0;
                                          }
                                          loop6:
                                          while(true)
                                          {
                                             §§push(param1);
                                             loop7:
                                             while(true)
                                             {
                                                §§push(§§pop() == §'!o§.LISTENER_EVENT_MOUSE_DOWN);
                                                while(true)
                                                {
                                                   §§push(§§pop());
                                                   loop9:
                                                   while(true)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         loop10:
                                                         while(true)
                                                         {
                                                            if(_loc7_)
                                                            {
                                                               §§pop();
                                                               if(!_loc6_)
                                                               {
                                                                  if(_loc6_)
                                                                  {
                                                                     continue loop5;
                                                                  }
                                                                  if(!_loc6_)
                                                                  {
                                                                     §§push(param1);
                                                                     if(_loc6_ && this)
                                                                     {
                                                                        continue loop7;
                                                                     }
                                                                     §§push(§§pop() == §'!o§.LISTENER_EVENT_MOUSE_UP);
                                                                     if(_loc7_)
                                                                     {
                                                                        if(!_loc7_)
                                                                        {
                                                                           continue;
                                                                        }
                                                                        if(!_loc7_)
                                                                        {
                                                                           break loop9;
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop());
                                                                           if(!_loc7_)
                                                                           {
                                                                              continue loop9;
                                                                           }
                                                                           if(_loc6_ && param3)
                                                                           {
                                                                              continue loop3;
                                                                           }
                                                                           if(§§pop())
                                                                           {
                                                                              if(!_loc6_)
                                                                              {
                                                                                 if(_loc7_)
                                                                                 {
                                                                                    §§pop();
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       if(!_loc6_)
                                                                                       {
                                                                                          if(!(_loc6_ && param2))
                                                                                          {
                                                                                             if(_loc7_ || param2)
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   if(false)
                                                                                                   {
                                                                                                      continue loop6;
                                                                                                   }
                                                                                                   addr190:
                                                                                                   if(param3 is §7!>§)
                                                                                                   {
                                                                                                      if(!(_loc6_ && param2))
                                                                                                      {
                                                                                                         break loop10;
                                                                                                      }
                                                                                                      §§goto(addr252);
                                                                                                   }
                                                                                                }
                                                                                                addr84:
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr174);
                                                                                             }
                                                                                             §§goto(addr247);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr170);
                                                                                          }
                                                                                       }
                                                                                       break;
                                                                                    }
                                                                                    break loop10;
                                                                                 }
                                                                                 continue loop2;
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr170);
                                                                     }
                                                                     §§goto(addr190);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr164);
                                                                  }
                                                               }
                                                               break;
                                                            }
                                                            continue loop4;
                                                         }
                                                         §§push(Boolean(_loc5_ = this.§1!@§((param3 as §7!>§).mParentContainer.mName.toUpperCase())));
                                                         if(!(_loc6_ && this))
                                                         {
                                                            if(§§pop())
                                                            {
                                                               if(_loc7_)
                                                               {
                                                                  addr231:
                                                                  §§pop();
                                                                  if(!_loc6_)
                                                                  {
                                                                     addr237:
                                                                     if(param3 is §8!k§)
                                                                     {
                                                                        if(!_loc6_)
                                                                        {
                                                                           addr240:
                                                                           _loc5_.§@G§((param3 as §7!>§).mName.toUpperCase());
                                                                        }
                                                                     }
                                                                     §§goto(addr252);
                                                                  }
                                                                  §§goto(addr240);
                                                               }
                                                            }
                                                            §§goto(addr237);
                                                         }
                                                         §§goto(addr231);
                                                      }
                                                      §§goto(addr49);
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr155);
                                    }
                                    §§goto(addr186);
                                 }
                              }
                           }
                           §§goto(addr49);
                        }
                     }
                     continue loop0;
                  }
               }
               if(_loc7_ || param3)
               {
                  if(_loc4_)
                  {
                     addr164:
                     _loc4_.§`4§(_loc4_.§<#§ + 1);
                     this.§[s§();
                     addr170:
                  }
               }
               else
               {
                  addr181:
                  _loc4_.§`4§(_loc4_.§<#§ - 1);
                  this.§[s§();
                  addr174:
                  addr186:
               }
               super.containerEventOccured(param1,param2,param3);
               return;
            }
            if(!_loc4_)
            {
            }
            §§goto(addr181);
         }
         §§goto(addr84);
      }
      
      public function §-!n§(param1:String, param2:int) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§;!=§ = getItemByName(param1) as §;!=§;
         if(!_loc4_)
         {
            if(_loc3_)
            {
               do
               {
                  _loc3_.§`4§(param2);
                  do
                  {
                     this.§[s§();
                  }
                  while(!(_loc5_ || param2));
                  
               }
               while(!(_loc5_ || _loc3_));
               
               addr68:
            }
            return;
         }
         §§goto(addr68);
      }
      
      public function §1!@§(param1:String) : §7W§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = 0;
         do
         {
            if(_loc2_ >= this.§3,§.length)
            {
               if(_loc3_ || _loc3_)
               {
                  return null;
               }
               loop1:
               while(_loc4_)
               {
                  while(true)
                  {
                     _loc2_++;
                     continue loop1;
                  }
               }
               continue;
            }
            if(param1.toUpperCase() == (this.§3,§[_loc2_] as §7W§).mName.toUpperCase())
            {
               break;
            }
            §§goto(addr46);
         }
         while(!(_loc4_ && this));
         
         return this.§3,§[_loc2_] as §7W§;
      }
      
      public function §-U§(param1:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param1))
         {
            this.§]E§ = param1;
         }
         var _loc2_:int = 0;
         loop0:
         while(true)
         {
            if(_loc2_ >= §&O§.length)
            {
               if(_loc4_)
               {
                  if(!_loc3_)
                  {
                     this.§[s§();
                     addr45:
                     if(_loc4_ || this)
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           if(!(_loc3_ && param1))
                           {
                              break;
                           }
                           this.§;f§.height = (§&O§[_loc2_] as §;!=§).height + this.§ t§;
                           addr146:
                        }
                        addr77:
                        while(true)
                        {
                           _loc2_++;
                           addr87:
                        }
                        continue;
                        addr67:
                     }
                     while(true)
                     {
                        if(!(_loc3_ && param1))
                        {
                           continue loop0;
                        }
                        §§goto(addr87);
                        §§goto(addr67);
                     }
                  }
                  else
                  {
                     loop1:
                     while(true)
                     {
                        §§push(this.§5!E§);
                        loop2:
                        while(true)
                        {
                           if(!§§pop())
                           {
                              continue;
                           }
                           if(_loc4_ || _loc2_)
                           {
                              if(!_loc3_)
                              {
                                 this.§;f§.x = (§&O§[_loc2_] as §;!=§).x + this.§&=§;
                              }
                              else
                              {
                                 while(true)
                                 {
                                    (§&O§[_loc2_] as §;!=§).setActiveStatus(true);
                                    continue loop1;
                                 }
                                 addr224:
                              }
                           }
                           while(true)
                           {
                              this.§;f§.width = (§&O§[_loc2_] as §;!=§).width + this.§true §;
                              addr160:
                              while(_loc4_ || _loc2_)
                              {
                                 continue loop2;
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr77);
               }
               §§goto(addr45);
            }
            else
            {
               §§push(§&O§[_loc2_] is §;!=§);
            }
            §§goto(addr211);
         }
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§7W§ = null;
         if(_loc6_)
         {
            super.setEnabled(param1);
         }
         for each(_loc2_ in this.§3,§)
         {
            if(!(_loc5_ && param1))
            {
               _loc2_.setEnabled(param1);
            }
         }
      }
      
      public function §[s§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            §§push(getItemByName("Button_Scroll1") == null);
            if(_loc3_ || _loc2_)
            {
               if(§§pop())
               {
                  if(_loc3_)
                  {
                     §§goto(addr40);
                  }
               }
               §§goto(addr53);
            }
            addr40:
            §§pop();
            if(!(_loc2_ && _loc2_))
            {
               addr53:
               addr48:
               if(getItemByName("Button_Scroll2") == null)
               {
                  if(_loc3_ || _loc2_)
                  {
                     §§goto(addr61);
                  }
               }
               var _loc1_:§;!=§ = getItemByName(this.§]E§) as §;!=§;
               if(!(_loc2_ && _loc1_))
               {
                  if(!_loc1_)
                  {
                     (getItemByName("Button_Scroll1") as §[!i§).setComponentState(§-0§.§6!q§);
                     do
                     {
                        (getItemByName("Button_Scroll2") as §[!i§).setComponentState(§-0§.§6!q§);
                     }
                     while(!_loc3_);
                     
                     if(_loc3_ || _loc2_)
                     {
                        if(_loc3_)
                        {
                           if(_loc2_ && _loc1_)
                           {
                              loop1:
                              while(true)
                              {
                                 loop2:
                                 while(true)
                                 {
                                    §§push(_loc1_.§<#§);
                                    if(!(_loc2_ && this))
                                    {
                                       §§push(_loc1_.§7!=§);
                                       if(!(_loc2_ && _loc1_))
                                       {
                                          if(§§pop() >= §§pop() - 1)
                                          {
                                             (getItemByName("Button_Scroll2") as §[!i§).setComponentState(§-0§.§6!q§);
                                             while(_loc3_)
                                             {
                                                if(!(_loc2_ && _loc3_))
                                                {
                                                   addr78:
                                                   return;
                                                   addr120:
                                                }
                                             }
                                             addr206:
                                             §§goto(addr120);
                                             addr206:
                                             addr143:
                                          }
                                          while(true)
                                          {
                                             if(!(_loc3_ || this))
                                             {
                                                break loop2;
                                             }
                                             if(_loc3_ || this)
                                             {
                                                (getItemByName("Button_Scroll2") as §[!i§).setComponentState(§-0§.COMPONENT_STATE_ACTIVE_DEFAULT);
                                                §§goto(addr206);
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                   §§push(_loc1_.§<#§);
                                                   addr223:
                                                   while(true)
                                                   {
                                                      §§push(0);
                                                   }
                                                }
                                                addr221:
                                             }
                                          }
                                       }
                                       while(true)
                                       {
                                          if(§§pop() > §§pop())
                                          {
                                             break loop2;
                                          }
                                          (getItemByName("Button_Scroll1") as §[!i§).setComponentState(§-0§.§6!q§);
                                          continue loop2;
                                       }
                                    }
                                    §§goto(addr223);
                                 }
                                 while(true)
                                 {
                                    (getItemByName("Button_Scroll1") as §[!i§).setComponentState(§-0§.COMPONENT_STATE_ACTIVE_DEFAULT);
                                    continue loop1;
                                 }
                              }
                           }
                           §§goto(addr78);
                        }
                        §§goto(addr218);
                     }
                     §§goto(addr143);
                  }
                  §§goto(addr221);
               }
               §§goto(addr206);
            }
            addr61:
            return;
         }
         §§goto(addr48);
      }
      
      public function §+!%§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§;!=§ = null;
         var _loc1_:* = int(§&O§.length - 1);
         loop0:
         for(; _loc1_ >= 0; if(true)
         {
            continue;
         },§§goto(addr67))
         {
            _loc2_ = §&O§[_loc1_] as §;!=§;
            if(_loc4_)
            {
               if(_loc2_)
               {
                  loop1:
                  while(true)
                  {
                     _loc2_.clear();
                     addr86:
                     loop5:
                     while(true)
                     {
                        addr67:
                        while(true)
                        {
                           §&O§.splice(_loc1_,1);
                           addr72:
                           addr81:
                           while(true)
                           {
                              if(_loc4_)
                              {
                                 continue loop1;
                              }
                              continue loop5;
                           }
                           addr81:
                           continue loop5;
                        }
                     }
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
                  if(_loc4_)
                  {
                     continue loop0;
                  }
                  §§goto(addr72);
                  §§goto(addr81);
               }
               continue;
            }
            §§goto(addr86);
         }
         if(!_loc3_)
         {
            this.§-U§("");
         }
      }
      
      public function §;!Y§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§7W§ = null;
         for each(_loc1_ in this.§3,§)
         {
            if(_loc4_)
            {
               _loc1_.§;!Y§();
            }
         }
      }
      
      public function §!!!§() : Array
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §§push(this.§1!@§(this.§]E§));
            while(§§pop() != null)
            {
               §§push(this.§1!@§(this.§]E§));
               if(!(_loc2_ && _loc2_))
               {
                  return §§pop().§^"#§();
               }
            }
            if(!(_loc2_ && _loc1_))
            {
               addr85:
               §<m§.log("ERROR! Tried to get selections for noninited repeater!");
            }
            return new Array();
         }
         §§goto(addr85);
      }
      
      public function §,!§(param1:Array) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§1!@§(this.§]E§).§,!§(param1);
         }
      }
      
      public function §1!^§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§1!@§(this.§]E§).§1!^§(param1);
         }
      }
      
      override public function clear() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.clear();
            do
            {
               this.§default§ = null;
               do
               {
                  this.§3,§ = null;
                  do
                  {
                     this.§2!G§ = null;
                  }
                  while(!(_loc1_ || _loc2_));
                  
               }
               while(!_loc1_);
               
            }
            while(_loc2_ && _loc2_);
            
         }
      }
   }
}
