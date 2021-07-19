package §=!7§
{
   import §&!<§.§>!V§;
   import §6]§.§,"0§;
   import §@y§.§&a§;
   import §@y§.§0"4§;
   import §@y§.§0=§;
   import §@y§.§>!D§;
   import com.rovio.assets.§69§;
   import flash.display.*;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §3!b§ extends §6W§
   {
      
      public static const §""7§:int = 0;
      
      public static const §+!a§:int = 1;
      
      public static const §?!t§:int = 2;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §""7§ = 0;
         }
         while(true)
         {
            §+!a§ = 1;
            while(_loc1_)
            {
               §?!t§ = 2;
               if(_loc1_)
               {
                  return;
               }
            }
         }
      }
      
      public var §3"2§:String;
      
      public var §?!R§:Class;
      
      public var §%!`§:String = null;
      
      public var §9!1§:Vector.<§&a§>;
      
      public var §0!T§:int;
      
      public var §#!Z§:Number;
      
      public var §;!3§:Number;
      
      public var §5[§:Number;
      
      public var §5A§:Number;
      
      public var §6"§:Number;
      
      public var §2O§:Number;
      
      public var §"!"§:Number;
      
      public var §`O§:Number;
      
      public var mButtonMarginX2:Number;
      
      public var mButtonMarginY2:Number;
      
      public var §>$§:int;
      
      public var §9@§:Number;
      
      public var §]!G§:String = "";
      
      public var §3!U§:int;
      
      public var §'!G§:int;
      
      public var §9!K§:GlowFilter;
      
      public var §,"+§:Boolean = true;
      
      public var §!";§:int;
      
      public var §3>§:int;
      
      public var §?t§:Number = 0;
      
      public var §3a§:Number = 0;
      
      public var §[!A§:Number = 0;
      
      public var §2E§:Number = 0;
      
      public var §'+§:Boolean = false;
      
      public var §3!H§:Boolean = false;
      
      public var §>!^§:MovieClip = null;
      
      public function §3!b§(param1:XML, param2:§6W§, param3:§>!V§, param4:MovieClip = null)
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Deobfuscation is activated but decompilation still failed. If the file is NOT obfuscated, disable "Automatic deobfuscation" for better results.
          * Error type: ExecutionException (java.lang.StackOverflowError)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public function §&!'§(param1:Array = null, param2:Class = null) : void
      {
         var _loc19_:Boolean = false;
         var _loc20_:Boolean = true;
         var _loc4_:String = null;
         var _loc5_:MovieClip = null;
         var _loc6_:XML = null;
         var _loc7_:§7";§ = null;
         var _loc8_:§&a§ = null;
         var _loc9_:* = 0;
         var _loc10_:* = 0;
         var _loc11_:* = 0;
         var _loc12_:XML = null;
         var _loc13_:§#!n§ = null;
         var _loc14_:MovieClip = null;
         var _loc15_:* = 0;
         var _loc16_:int = 0;
         var _loc17_:* = 0;
         var _loc18_:* = 0;
         if(!_loc19_)
         {
            if(param2 == null)
            {
               if(_loc20_ || param2)
               {
                  param2 = §#!n§;
                  addr70:
                  this.§9!1§ = new Vector.<§&a§>();
                  if(!_loc19_)
                  {
                     addr78:
                     this.§5""§();
                     if(!(_loc19_ && _loc3_))
                     {
                        §§push(param1);
                        if(_loc20_)
                        {
                           if(§§pop() == null)
                           {
                              if(!(_loc19_ && param1))
                              {
                                 addr99:
                                 param1 = getParentView().getRepeaterDataXML(mName);
                              }
                              §§goto(addr107);
                           }
                           §§push(param1);
                        }
                        if(!§§pop())
                        {
                           addr107:
                           param1 = new Array();
                           §§goto(addr111);
                        }
                        addr111:
                        var _loc3_:int = 0;
                        loop0:
                        while(true)
                        {
                           if(_loc3_ >= param1.length)
                           {
                              if(_loc20_)
                              {
                                 if(param1.length > 1)
                                 {
                                 }
                                 break;
                              }
                              break;
                           }
                           §§push(mName + "_Tab_");
                           if(!_loc19_)
                           {
                              §§push(§§pop() + _loc3_);
                           }
                           _loc4_ = §§pop();
                           if(_loc19_)
                           {
                              break;
                           }
                           _loc5_ = new MovieClip();
                           (_loc6_ = <Container/>).@name = _loc4_;
                           _loc7_ = new §7";§(_loc6_,this,null,_loc5_);
                           if(_loc20_)
                           {
                              §[z§.push(_loc7_);
                           }
                           _loc8_ = new §&a§(this.§3>§,_loc4_);
                           if(!(_loc19_ && _loc3_))
                           {
                              this.§9!1§.push(_loc8_);
                              if(_loc20_ || this)
                              {
                                 §§push(this.§6"§);
                                 loop1:
                                 while(true)
                                 {
                                    §§push(int(§§pop()));
                                    loop2:
                                    while(true)
                                    {
                                       _loc9_ = §§pop();
                                       loop3:
                                       while(true)
                                       {
                                          §§push(this.§0!T§);
                                          if(!_loc19_)
                                          {
                                             §§push(int(§§pop()));
                                             loop4:
                                             while(true)
                                             {
                                                _loc10_ = §§pop();
                                                loop5:
                                                while(true)
                                                {
                                                   §§push(param1);
                                                   if(_loc20_)
                                                   {
                                                      §§push(_loc3_);
                                                      if(!(_loc19_ && this))
                                                      {
                                                         if((§§pop()[§§pop()] as Array).length < _loc10_)
                                                         {
                                                            if(!(_loc19_ && param1))
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(param1);
                                                                  if(!_loc19_)
                                                                  {
                                                                     §§push(_loc3_);
                                                                     if(!_loc19_)
                                                                     {
                                                                        §§push(int((§§pop()[§§pop()] as Array).length));
                                                                        loop8:
                                                                        while(true)
                                                                        {
                                                                           _loc10_ = §§pop();
                                                                           if(!(_loc19_ && this))
                                                                           {
                                                                              if(!(_loc20_ || param2))
                                                                              {
                                                                                 continue loop3;
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.§'!G§);
                                                                                 if(!(_loc19_ && this))
                                                                                 {
                                                                                    if(_loc19_)
                                                                                    {
                                                                                       continue loop8;
                                                                                    }
                                                                                    if(!_loc20_)
                                                                                    {
                                                                                       continue loop4;
                                                                                    }
                                                                                    if(_loc19_ && this)
                                                                                    {
                                                                                       continue loop2;
                                                                                    }
                                                                                    if(§§pop() == §""7§)
                                                                                    {
                                                                                       if(_loc20_ || this)
                                                                                       {
                                                                                          if(!_loc20_)
                                                                                          {
                                                                                             continue loop5;
                                                                                          }
                                                                                          §§push(this.§5[§);
                                                                                          if(_loc20_ || this)
                                                                                          {
                                                                                             §§push(_loc10_);
                                                                                             if(!(_loc19_ && param1))
                                                                                             {
                                                                                                §§push(§§pop() - 1);
                                                                                                if(_loc20_ || _loc3_)
                                                                                                {
                                                                                                   §§push(§§pop() * this.§"!"§);
                                                                                                }
                                                                                                §§push(§§pop() - §§pop());
                                                                                                if(!(_loc19_ && param2))
                                                                                                {
                                                                                                   addr243:
                                                                                                   if(_loc19_)
                                                                                                   {
                                                                                                      continue loop1;
                                                                                                   }
                                                                                                   addr246:
                                                                                                   §§push(§§pop() / 2);
                                                                                                }
                                                                                                §§push(int(§§pop()));
                                                                                                if(!(_loc20_ || param2))
                                                                                                {
                                                                                                   break loop3;
                                                                                                }
                                                                                                addr255:
                                                                                                _loc9_ = §§pop();
                                                                                                if(!_loc20_)
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                addr166:
                                                                                                §§push(0);
                                                                                                if(_loc19_)
                                                                                                {
                                                                                                   addr917:
                                                                                                   break loop3;
                                                                                                }
                                                                                                _loc11_ = §§pop();
                                                                                                if(!_loc19_)
                                                                                                {
                                                                                                   if(true)
                                                                                                   {
                                                                                                      §§push(_loc11_);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      addr897:
                                                                                                   }
                                                                                                   continue;
                                                                                                   break loop3;
                                                                                                }
                                                                                                addr917:
                                                                                                _loc7_.§9!D§(this.§0!T§,this.§#!Z§,this.§;!3§,this.§!";§ * this.§"!"§,this.§!";§ * this.§`O§,this.§>$§,this.§!";§);
                                                                                                if(!(_loc19_ && this))
                                                                                                {
                                                                                                   addr946:
                                                                                                   _loc3_++;
                                                                                                }
                                                                                                continue loop0;
                                                                                             }
                                                                                             §§goto(addr246);
                                                                                          }
                                                                                          §§goto(addr243);
                                                                                       }
                                                                                       §§goto(addr917);
                                                                                    }
                                                                                    §§goto(addr166);
                                                                                 }
                                                                                 §§goto(addr255);
                                                                              }
                                                                              _loc8_.§>" §("");
                                                                              if(_loc20_ || param1)
                                                                              {
                                                                                 §§goto(addr917);
                                                                              }
                                                                           }
                                                                           §§goto(addr917);
                                                                        }
                                                                     }
                                                                     addr341:
                                                                     _loc12_ = ((§§pop()[§§pop()] as Array)[_loc11_] as Array)[0] as XML;
                                                                     if(_loc20_)
                                                                     {
                                                                        if(((param1[_loc3_] as Array)[_loc11_] as Array)[2])
                                                                        {
                                                                           if(_loc20_ || param2)
                                                                           {
                                                                              addr375:
                                                                              _loc7_.§[z§.push(new param2(_loc12_,_loc7_,((param1[_loc3_] as Array)[_loc11_] as Array)[2] as MovieClip));
                                                                              if(!_loc19_)
                                                                              {
                                                                                 addr397:
                                                                              }
                                                                              addr409:
                                                                              _loc13_ = _loc7_.§[z§[_loc7_.§[z§.length - 1] as §#!n§;
                                                                              if(!(_loc19_ && this))
                                                                              {
                                                                                 §§push(param1);
                                                                                 if(_loc20_)
                                                                                 {
                                                                                    §§push(_loc3_);
                                                                                    if(_loc20_ || param2)
                                                                                    {
                                                                                       if(((§§pop()[§§pop()] as Array)[_loc11_] as Array)[1] != null)
                                                                                       {
                                                                                          if(_loc20_)
                                                                                          {
                                                                                             addr453:
                                                                                             _loc14_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[1] as MovieClip;
                                                                                             if(_loc20_)
                                                                                             {
                                                                                                _loc13_.setIcon(_loc14_,this.§%!`§);
                                                                                                §§push(this.§3!U§);
                                                                                                if(_loc20_ || _loc3_)
                                                                                                {
                                                                                                   addr549:
                                                                                                   if(§§pop() == §+!a§)
                                                                                                   {
                                                                                                      addr538:
                                                                                                      §§push(2);
                                                                                                   }
                                                                                                   §§push(this.§>$§);
                                                                                                   if(_loc20_ || param2)
                                                                                                   {
                                                                                                      §§push(1);
                                                                                                      if(!(_loc19_ && param2))
                                                                                                      {
                                                                                                         if(§§pop() == §§pop())
                                                                                                         {
                                                                                                            if(!(_loc19_ && param2))
                                                                                                            {
                                                                                                               _loc13_.x = _loc9_ + _loc11_ * this.§"!"§;
                                                                                                               if(_loc20_ || param2)
                                                                                                               {
                                                                                                                  §§push(_loc13_);
                                                                                                                  §§push(this.§2O§);
                                                                                                                  if(!_loc19_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() + _loc11_ * this.§`O§);
                                                                                                                  }
                                                                                                                  §§pop().y = §§pop();
                                                                                                                  addr610:
                                                                                                                  _loc8_.§>[§(_loc13_);
                                                                                                                  addr896:
                                                                                                                  if(!(_loc19_ && _loc3_))
                                                                                                                  {
                                                                                                                     if(_loc20_ || this)
                                                                                                                     {
                                                                                                                        if(_loc20_)
                                                                                                                        {
                                                                                                                           _loc11_++;
                                                                                                                           if(!(_loc19_ && this))
                                                                                                                           {
                                                                                                                              if(!(_loc19_ && _loc3_))
                                                                                                                              {
                                                                                                                                 if(_loc20_)
                                                                                                                                 {
                                                                                                                                    if(false)
                                                                                                                                    {
                                                                                                                                       §§goto(addr610);
                                                                                                                                    }
                                                                                                                                    §§goto(addr897);
                                                                                                                                 }
                                                                                                                                 addr718:
                                                                                                                                 §§push(_loc13_);
                                                                                                                                 §§push(_loc9_ + _loc18_ * this.§"!"§);
                                                                                                                                 if(_loc20_)
                                                                                                                                 {
                                                                                                                                    §§push(_loc16_ * this.§0!T§);
                                                                                                                                    if(_loc20_ || param1)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() * this.§"!"§);
                                                                                                                                    }
                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                 }
                                                                                                                                 §§pop().x = §§pop();
                                                                                                                                 §§push(_loc13_);
                                                                                                                                 §§push(this.§2O§);
                                                                                                                                 if(_loc20_)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() + _loc17_ * this.mButtonMarginY2);
                                                                                                                                 }
                                                                                                                                 §§pop().y = §§pop();
                                                                                                                                 addr743:
                                                                                                                              }
                                                                                                                              if(_loc20_)
                                                                                                                              {
                                                                                                                                 addr713:
                                                                                                                                 §§goto(addr610);
                                                                                                                                 addr713:
                                                                                                                              }
                                                                                                                              §§goto(addr743);
                                                                                                                           }
                                                                                                                           §§goto(addr610);
                                                                                                                        }
                                                                                                                        addr860:
                                                                                                                        addr884:
                                                                                                                        §§push(int((_loc11_ - _loc16_ * this.§0!T§ * this.§>$§) / this.§0!T§));
                                                                                                                        if(_loc20_ || param1)
                                                                                                                        {
                                                                                                                           addr867:
                                                                                                                           _loc17_ = §§pop();
                                                                                                                           addr868:
                                                                                                                           if(_loc20_)
                                                                                                                           {
                                                                                                                              §§push(_loc11_);
                                                                                                                              if(_loc20_ || param2)
                                                                                                                              {
                                                                                                                                 if(!(_loc19_ && _loc3_))
                                                                                                                                 {
                                                                                                                                    §§push(_loc16_);
                                                                                                                                    if(!(_loc19_ && this))
                                                                                                                                    {
                                                                                                                                       if(!(_loc19_ && param2))
                                                                                                                                       {
                                                                                                                                          addr775:
                                                                                                                                          §§push(this.§0!T§);
                                                                                                                                          if(!_loc19_)
                                                                                                                                          {
                                                                                                                                             if(_loc20_)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                if(!_loc19_)
                                                                                                                                                {
                                                                                                                                                   if(_loc20_)
                                                                                                                                                   {
                                                                                                                                                      if(!(_loc19_ && param2))
                                                                                                                                                      {
                                                                                                                                                         if(!(_loc19_ && param2))
                                                                                                                                                         {
                                                                                                                                                            §§push(this.§>$§);
                                                                                                                                                            if(!_loc19_)
                                                                                                                                                            {
                                                                                                                                                               addr805:
                                                                                                                                                               §§push(§§pop() - §§pop() * §§pop());
                                                                                                                                                               if(!_loc19_)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc20_ || param1)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc20_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(this.§0!T§);
                                                                                                                                                                        if(!_loc19_)
                                                                                                                                                                        {
                                                                                                                                                                           addr822:
                                                                                                                                                                           §§push(§§pop() % §§pop());
                                                                                                                                                                           if(!(_loc19_ && _loc3_))
                                                                                                                                                                           {
                                                                                                                                                                              addr830:
                                                                                                                                                                              §§push(int(§§pop()));
                                                                                                                                                                              if(_loc20_ || param1)
                                                                                                                                                                              {
                                                                                                                                                                                 _loc18_ = §§pop();
                                                                                                                                                                                 addr838:
                                                                                                                                                                                 if(!(_loc19_ && this))
                                                                                                                                                                                 {
                                                                                                                                                                                    if(this.§,"+§)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr718);
                                                                                                                                                                                    }
                                                                                                                                                                                    _loc13_.x = _loc9_ + _loc17_ * this.mButtonMarginX2;
                                                                                                                                                                                    addr691:
                                                                                                                                                                                    if(!(_loc19_ && this))
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc13_);
                                                                                                                                                                                       §§push(this.§2O§);
                                                                                                                                                                                       if(!(_loc19_ && param2))
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc18_);
                                                                                                                                                                                          if(!_loc19_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop() * this.§`O§);
                                                                                                                                                                                             if(_loc20_ || _loc3_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                                                                if(_loc20_ || _loc3_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr664:
                                                                                                                                                                                                   §§push(_loc16_ * this.§0!T§);
                                                                                                                                                                                                   if(_loc20_ || _loc3_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr677:
                                                                                                                                                                                                      §§push(§§pop() + §§pop() * this.§`O§);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr677);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§pop().y = §§pop();
                                                                                                                                                                                                addr679:
                                                                                                                                                                                                §§goto(addr610);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr677);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr664);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr838);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr868);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr860);
                                                                                                                                                                     }
                                                                                                                                                                     addr883:
                                                                                                                                                                     _loc16_ = §§pop();
                                                                                                                                                                     addr882:
                                                                                                                                                                     §§goto(addr884);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr860);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr822);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr860);
                                                                                                                                                         }
                                                                                                                                                         addr881:
                                                                                                                                                         §§goto(addr882);
                                                                                                                                                         §§push(§§pop() / §§pop());
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr860);
                                                                                                                                                }
                                                                                                                                                §§goto(addr805);
                                                                                                                                             }
                                                                                                                                             addr880:
                                                                                                                                             §§goto(addr881);
                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                          }
                                                                                                                                          §§goto(addr860);
                                                                                                                                       }
                                                                                                                                       addr878:
                                                                                                                                       §§goto(addr880);
                                                                                                                                       §§push(this.§>$§);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr860);
                                                                                                                              }
                                                                                                                              §§goto(addr830);
                                                                                                                              addr870:
                                                                                                                           }
                                                                                                                           §§goto(addr896);
                                                                                                                        }
                                                                                                                        §§goto(addr883);
                                                                                                                     }
                                                                                                                     §§goto(addr691);
                                                                                                                  }
                                                                                                                  §§goto(addr679);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr713);
                                                                                                         }
                                                                                                         §§push(_loc11_);
                                                                                                         if(_loc20_)
                                                                                                         {
                                                                                                            §§goto(addr878);
                                                                                                            §§push(this.§0!T§);
                                                                                                         }
                                                                                                         §§goto(addr883);
                                                                                                      }
                                                                                                      §§goto(addr775);
                                                                                                   }
                                                                                                   §§goto(addr867);
                                                                                                }
                                                                                                _loc15_ = §§pop();
                                                                                                addr540:
                                                                                                if(_loc20_)
                                                                                                {
                                                                                                   addr513:
                                                                                                   _loc14_.y -= _loc14_.height / 2;
                                                                                                   if(_loc20_)
                                                                                                   {
                                                                                                      if(this.§%!`§ == null)
                                                                                                      {
                                                                                                         if(!(_loc19_ && _loc3_))
                                                                                                         {
                                                                                                            _loc14_.y -= _loc15_;
                                                                                                         }
                                                                                                         if(_loc20_ || this)
                                                                                                         {
                                                                                                            if(_loc20_ || param1)
                                                                                                            {
                                                                                                               if(false)
                                                                                                               {
                                                                                                                  §§goto(addr513);
                                                                                                               }
                                                                                                               §§goto(addr549);
                                                                                                            }
                                                                                                            §§goto(addr538);
                                                                                                         }
                                                                                                         §§goto(addr513);
                                                                                                      }
                                                                                                      §§goto(addr549);
                                                                                                   }
                                                                                                   §§goto(addr540);
                                                                                                   addr542:
                                                                                                }
                                                                                                addr548:
                                                                                                §§goto(addr548);
                                                                                             }
                                                                                             §§goto(addr542);
                                                                                          }
                                                                                          §§goto(addr870);
                                                                                       }
                                                                                       §§goto(addr549);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr453);
                                                                              }
                                                                              §§goto(addr713);
                                                                           }
                                                                           §§goto(addr397);
                                                                        }
                                                                        _loc7_.§[z§.push(new param2(_loc12_,_loc7_,new this.§?!R§() as MovieClip));
                                                                        §§goto(addr409);
                                                                     }
                                                                     §§goto(addr375);
                                                                  }
                                                                  break loop5;
                                                               }
                                                               addr284:
                                                            }
                                                            §§goto(addr946);
                                                         }
                                                         §§goto(addr175);
                                                      }
                                                      §§goto(addr341);
                                                   }
                                                   break;
                                                }
                                                addr340:
                                                §§goto(addr341);
                                             }
                                          }
                                          break;
                                       }
                                       if(§§pop() < (param1[_loc3_] as Array).length)
                                       {
                                          §§goto(addr340);
                                          §§push(param1);
                                       }
                                       if(!_loc19_)
                                       {
                                          §§goto(addr907);
                                       }
                                    }
                                 }
                              }
                              §§goto(addr917);
                           }
                           §§goto(addr284);
                        }
                        return;
                     }
                     §§goto(addr99);
                  }
                  §§goto(addr107);
               }
               §§goto(addr99);
            }
            §§goto(addr70);
         }
         §§goto(addr78);
      }
      
      public function get §;X§() : int
      {
         return this.§0!T§;
      }
      
      public function get §8!D§() : int
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§;X§);
            if(_loc2_ || _loc1_)
            {
               if(§§pop() == 0)
               {
                  if(!(_loc1_ && this))
                  {
                     §§push(0);
                  }
                  else
                  {
                     §§goto(addr49);
                  }
               }
               §§goto(addr49);
            }
            return §§pop();
         }
         addr49:
         §§push(this.§^a§(this.§]!G§).§5f§.length / this.§;X§);
         if(_loc2_)
         {
            return §§pop() + 1;
         }
      }
      
      override public function containerEventOccured(param1:int, param2:String, param3:§0=§) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:§&a§ = null;
         var _loc4_:§7";§ = getItemByName(this.§]!G§) as §7";§;
         if(!_loc6_)
         {
            §§push(param2);
            loop0:
            while(true)
            {
               if(§§pop().toUpperCase() == "SCROLL_LEFT")
               {
                  if(_loc7_ || param1)
                  {
                     if(_loc4_)
                     {
                        addr189:
                        _loc4_.§&!M§(_loc4_.§<!6§ - 1);
                        if(_loc7_)
                        {
                           this.§-!P§();
                           addr175:
                        }
                        else
                        {
                           addr208:
                           §§push(Boolean(_loc5_ = this.§^a§((param3 as §0"4§).mParentContainer.mName.toUpperCase())));
                           if(_loc7_ || param3)
                           {
                              if(§§pop())
                              {
                                 if(!_loc6_)
                                 {
                                    §§pop();
                                    if(!(_loc6_ && this))
                                    {
                                       addr242:
                                       if(param3 is §#!n§)
                                       {
                                          if(!(_loc6_ && param1))
                                          {
                                             _loc5_.§>" §((param3 as §0"4§).mName.toUpperCase());
                                             break;
                                          }
                                          break;
                                       }
                                       break;
                                    }
                                    break;
                                 }
                              }
                           }
                           §§goto(addr242);
                        }
                     }
                     break;
                  }
                  §§goto(addr208);
               }
               else
               {
                  §§push(param2);
                  loop1:
                  while(§§pop().toUpperCase() != "SCROLL_RIGHT")
                  {
                     §§push(param2);
                     if(_loc6_ && param2)
                     {
                        continue;
                     }
                     if(!_loc7_)
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
                              if(_loc7_ || param1)
                              {
                                 §§pop();
                                 loop4:
                                 while(true)
                                 {
                                    loop5:
                                    while(true)
                                    {
                                       §§push(param1);
                                       loop6:
                                       while(true)
                                       {
                                          §§push(§§pop() == §0=§.LISTENER_EVENT_MOUSE_DOWN);
                                          if(!_loc6_)
                                          {
                                             §§push(§§pop());
                                             loop7:
                                             for(; _loc7_ || param1; while(true)
                                             {
                                                §§push(§§pop());
                                                if(_loc6_ && this)
                                                {
                                                   continue loop7;
                                                }
                                                if(§§pop())
                                                {
                                                   if(!(_loc6_ && param3))
                                                   {
                                                      §§pop();
                                                      if(!_loc6_)
                                                      {
                                                         if(!_loc6_)
                                                         {
                                                            if(!_loc6_)
                                                            {
                                                               if(!(_loc6_ && param2))
                                                               {
                                                                  if(true)
                                                                  {
                                                                     if(param3 is §0"4§)
                                                                     {
                                                                        if(_loc7_ || param3)
                                                                        {
                                                                           §§goto(addr208);
                                                                        }
                                                                        §§goto(addr272);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     addr200:
                                                                  }
                                                                  continue loop5;
                                                                  break loop0;
                                                               }
                                                               §§goto(addr169);
                                                               §§goto(addr208);
                                                            }
                                                            break;
                                                         }
                                                         §§goto(addr99);
                                                         §§goto(addr169);
                                                      }
                                                      §§goto(addr272);
                                                   }
                                                }
                                             },§§goto(addr149))
                                             {
                                                if(§§pop())
                                                {
                                                   continue;
                                                }
                                                loop8:
                                                while(true)
                                                {
                                                   §§pop();
                                                   addr99:
                                                   addr163:
                                                   while(true)
                                                   {
                                                      if(!_loc7_)
                                                      {
                                                         continue loop4;
                                                      }
                                                      if(_loc6_ && param1)
                                                      {
                                                         break;
                                                      }
                                                      §§push(param1);
                                                      if(_loc6_)
                                                      {
                                                         continue loop6;
                                                      }
                                                      §§push(§§pop() == §0=§.LISTENER_EVENT_MOUSE_UP);
                                                      if(_loc7_)
                                                      {
                                                         if(_loc7_)
                                                         {
                                                            continue loop2;
                                                         }
                                                         continue loop8;
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      _loc4_.§&!M§(_loc4_.§<!6§ + 1);
                                                      addr169:
                                                      if(!_loc6_)
                                                      {
                                                         this.§-!P§();
                                                         addr149:
                                                         if(_loc6_)
                                                         {
                                                            break loop1;
                                                         }
                                                         if(!_loc6_)
                                                         {
                                                            addr109:
                                                            break loop0;
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr189);
                                                      }
                                                      §§goto(addr175);
                                                   }
                                                }
                                             }
                                             continue loop3;
                                          }
                                       }
                                    }
                                 }
                              }
                              §§goto(addr200);
                           }
                           §§goto(addr49);
                        }
                     }
                  }
                  while(_loc4_)
                  {
                     §§goto(addr163);
                  }
                  §§goto(addr109);
               }
            }
            super.containerEventOccured(param1,param2,param3);
            addr272:
            return;
         }
         §§goto(addr163);
      }
      
      public function §9!;§(param1:String, param2:int) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§7";§ = getItemByName(param1) as §7";§;
         if(!_loc5_)
         {
            if(_loc3_)
            {
               if(_loc4_)
               {
                  _loc3_.§&!M§(param2);
               }
               do
               {
                  this.§-!P§();
               }
               while(_loc5_ && param1);
               
               addr60:
            }
            return;
         }
         §§goto(addr60);
      }
      
      public function §^a§(param1:String) : §&a§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= this.§9!1§.length)
            {
               if(!(_loc4_ && _loc2_))
               {
                  break;
               }
               while(_loc4_)
               {
                  while(true)
                  {
                  }
               }
               continue;
               addr48:
            }
            else if(param1.toUpperCase() == (this.§9!1§[_loc2_] as §&a§).mName.toUpperCase())
            {
               if(_loc3_ || this)
               {
                  return this.§9!1§[_loc2_] as §&a§;
               }
               §§goto(addr88);
            }
            while(true)
            {
               _loc2_++;
               §§goto(addr48);
            }
         }
         return null;
      }
      
      public function §9N§(param1:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc2_))
         {
            this.§]!G§ = param1;
         }
         var _loc2_:int = 0;
         loop0:
         while(true)
         {
            if(_loc2_ >= §[z§.length)
            {
               if(_loc3_ || param1)
               {
                  if(!_loc4_)
                  {
                     if(_loc3_ || param1)
                     {
                        if(!(_loc4_ && _loc3_))
                        {
                           if(_loc3_)
                           {
                              if(!(_loc4_ && _loc3_))
                              {
                                 this.§-!P§();
                                 break;
                              }
                              loop1:
                              while(true)
                              {
                                 this.§>!^§.width = (§[z§[_loc2_] as §7";§).width + this.§?t§;
                                 loop2:
                                 while(true)
                                 {
                                    if(_loc3_)
                                    {
                                       loop3:
                                       while(true)
                                       {
                                          §§push(this.§3!H§);
                                          if(!(_loc4_ && _loc2_))
                                          {
                                             if(_loc3_)
                                             {
                                                if(§§pop())
                                                {
                                                   while(true)
                                                   {
                                                      if(!(_loc4_ && _loc3_))
                                                      {
                                                         this.§>!^§.y = (§[z§[_loc2_] as §7";§).y + this.§2E§;
                                                         while(true)
                                                         {
                                                            this.§>!^§.height = (§[z§[_loc2_] as §7";§).height + this.§3a§;
                                                            loop12:
                                                            while(true)
                                                            {
                                                               addr83:
                                                               while(true)
                                                               {
                                                                  addr73:
                                                                  loop5:
                                                                  while(true)
                                                                  {
                                                                     _loc2_++;
                                                                     addr75:
                                                                     while(!(_loc3_ || param1))
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           if((§[z§[_loc2_] as §7";§).mName.toUpperCase() == param1.toUpperCase())
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 (§[z§[_loc2_] as §7";§).setActiveStatus(true);
                                                                                 addr235:
                                                                                 loop8:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this.§'+§);
                                                                                    addr179:
                                                                                    while(§§pop())
                                                                                    {
                                                                                       continue loop8;
                                                                                    }
                                                                                    continue loop3;
                                                                                 }
                                                                              }
                                                                              addr228:
                                                                           }
                                                                           else
                                                                           {
                                                                              (§[z§[_loc2_] as §7";§).setActiveStatus(false);
                                                                              while(true)
                                                                              {
                                                                                 if(_loc3_ || param1)
                                                                                 {
                                                                                    if(_loc3_)
                                                                                    {
                                                                                       continue loop5;
                                                                                    }
                                                                                    continue loop2;
                                                                                 }
                                                                                 continue loop12;
                                                                              }
                                                                              addr93:
                                                                           }
                                                                        }
                                                                     }
                                                                     continue loop0;
                                                                  }
                                                                  continue loop12;
                                                               }
                                                            }
                                                         }
                                                         addr159:
                                                      }
                                                      while(true)
                                                      {
                                                         if(!(_loc4_ && _loc2_))
                                                         {
                                                            continue loop1;
                                                         }
                                                         §§goto(addr235);
                                                      }
                                                   }
                                                   addr140:
                                                }
                                                §§goto(addr83);
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      §§goto(addr208);
                                                   }
                                                }
                                                addr207:
                                             }
                                             §§goto(addr73);
                                          }
                                          §§goto(addr179);
                                       }
                                    }
                                    §§goto(addr228);
                                 }
                              }
                           }
                           §§goto(addr140);
                        }
                        §§goto(addr159);
                     }
                     §§goto(addr93);
                  }
                  §§goto(addr75);
               }
               break;
            }
            §§push(§[z§[_loc2_] is §7";§);
            §§goto(addr207);
         }
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§&a§ = null;
         if(_loc5_ || this)
         {
            super.setEnabled(param1);
         }
         for each(_loc2_ in this.§9!1§)
         {
            if(_loc5_)
            {
               _loc2_.setEnabled(param1);
            }
         }
      }
      
      public function §-!P§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(getItemByName("Button_Scroll1") == null);
            if(!(_loc2_ && _loc2_))
            {
               if(§§pop())
               {
                  if(!_loc2_)
                  {
                     addr35:
                     §§pop();
                     §§goto(addr56);
                  }
               }
               if(§§pop())
               {
                  if(!(_loc2_ && _loc3_))
                  {
                     addr56:
                     if(_loc3_ || this)
                     {
                        §§push(getItemByName("Button_Scroll2") == null);
                     }
                     return;
                  }
               }
               var _loc1_:§7";§ = getItemByName(this.§]!G§) as §7";§;
               if(!(_loc2_ && this))
               {
                  if(!_loc1_)
                  {
                     (getItemByName("Button_Scroll1") as §9"8§).setComponentState(§>!D§.§&!j§);
                     do
                     {
                        (getItemByName("Button_Scroll2") as §9"8§).setComponentState(§>!D§.§&!j§);
                     }
                     while(_loc2_);
                     
                     if(_loc2_)
                     {
                        loop1:
                        while(true)
                        {
                           if(_loc3_)
                           {
                              if(_loc3_ || _loc3_)
                              {
                                 if(!_loc3_)
                                 {
                                    while(true)
                                    {
                                       §§push(_loc1_.§<!6§);
                                       loop8:
                                       while(true)
                                       {
                                          §§push(0);
                                          loop9:
                                          while(true)
                                          {
                                             if(§§pop() > §§pop())
                                             {
                                                addr190:
                                                loop5:
                                                while(true)
                                                {
                                                   (getItemByName("Button_Scroll1") as §9"8§).setComponentState(§>!D§.COMPONENT_STATE_ACTIVE_DEFAULT);
                                                   addr208:
                                                   while(true)
                                                   {
                                                      addr136:
                                                      loop3:
                                                      while(true)
                                                      {
                                                         §§push(_loc1_.§<!6§);
                                                         if(_loc2_ && this)
                                                         {
                                                            continue loop8;
                                                         }
                                                         §§push(_loc1_.§;!-§);
                                                         if(!(_loc3_ || _loc2_))
                                                         {
                                                            continue loop9;
                                                         }
                                                         if(§§pop() >= §§pop() - 1)
                                                         {
                                                            continue loop1;
                                                         }
                                                         if(_loc3_)
                                                         {
                                                            (getItemByName("Button_Scroll2") as §9"8§).setComponentState(§>!D§.COMPONENT_STATE_ACTIVE_DEFAULT);
                                                            while(true)
                                                            {
                                                               if(!_loc2_)
                                                               {
                                                                  if(!_loc2_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  continue loop5;
                                                               }
                                                               continue loop3;
                                                            }
                                                            addr73:
                                                            return;
                                                            addr167:
                                                            addr91:
                                                         }
                                                         §§goto(addr167);
                                                      }
                                                      §§goto(addr190);
                                                      continue loop5;
                                                   }
                                                }
                                             }
                                             else
                                             {
                                                (getItemByName("Button_Scroll1") as §9"8§).setComponentState(§>!D§.§&!j§);
                                             }
                                             while(true)
                                             {
                                                §§goto(addr136);
                                             }
                                          }
                                       }
                                    }
                                    addr186:
                                 }
                                 §§goto(addr91);
                              }
                              §§goto(addr208);
                           }
                           §§goto(addr167);
                        }
                     }
                     else
                     {
                        addr90:
                     }
                     §§goto(addr73);
                  }
                  §§goto(addr186);
               }
               §§goto(addr90);
            }
         }
         §§goto(addr35);
      }
      
      public function §5""§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§7";§ = null;
         var _loc1_:* = int(§[z§.length - 1);
         while(_loc1_ >= 0)
         {
            _loc2_ = §[z§[_loc1_] as §7";§;
            if(!_loc3_)
            {
               if(_loc2_)
               {
                  addr79:
                  while(true)
                  {
                     _loc2_.clear();
                     addr81:
                     while(true)
                     {
                        addr71:
                        while(true)
                        {
                           §[z§.splice(_loc1_,1);
                           addr76:
                           while(true)
                           {
                           }
                        }
                     }
                  }
                  addr79:
               }
               while(true)
               {
                  §§push(_loc1_);
                  if(_loc4_)
                  {
                     §§push(§§pop() - 1);
                  }
                  _loc1_ = §§pop();
                  if(_loc3_ && _loc1_)
                  {
                     continue;
                  }
                  if(_loc4_)
                  {
                     if(_loc4_ || _loc2_)
                     {
                        if(true)
                        {
                           break;
                        }
                     }
                     else
                     {
                        §§goto(addr79);
                     }
                     §§goto(addr71);
                  }
                  §§goto(addr81);
               }
               continue;
            }
            §§goto(addr79);
         }
         if(_loc4_)
         {
            this.§9N§("");
         }
      }
      
      public function §2!4§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§&a§ = null;
         for each(_loc1_ in this.§9!1§)
         {
            if(_loc5_)
            {
               _loc1_.§2!4§();
            }
         }
      }
      
      public function §<!F§() : Array
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §§push(this.§^a§(this.§]!G§));
            while(§§pop() != null)
            {
               §§push(this.§^a§(this.§]!G§));
               if(_loc2_)
               {
                  return §§pop().§'!6§();
               }
            }
            §,"0§.log("ERROR! Tried to get selections for noninited repeater!");
         }
         return new Array();
      }
      
      public function §9![§(param1:Array) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§^a§(this.§]!G§).§9![§(param1);
         }
      }
      
      public function §<!5§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§^a§(this.§]!G§).§<!5§(param1);
         }
      }
      
      override public function clear() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            super.clear();
            while(true)
            {
               this.§?!R§ = null;
               addr52:
               if(_loc2_)
               {
                  this.§9!K§ = null;
                  addr64:
                  if(!_loc2_)
                  {
                     while(!_loc1_)
                     {
                        §§goto(addr52);
                        §§goto(addr64);
                     }
                     while(true)
                     {
                        this.§9!1§ = null;
                        §§goto(addr50);
                     }
                     addr50:
                     addr69:
                  }
                  return;
               }
            }
         }
         §§goto(addr69);
      }
   }
}
