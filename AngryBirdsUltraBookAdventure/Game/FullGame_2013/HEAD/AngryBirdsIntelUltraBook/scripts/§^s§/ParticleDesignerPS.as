package §^s§
{
   import §'7§.deg2rad;
   import §6!J§.§&!A§;
   import §6!J§.Texture;
   import flash.display3D.Context3DBlendFactor;
   
   public class ParticleDesignerPS extends ParticleSystem
   {
       
      
      private const §1A§:int = 0;
      
      private const §!!5§:int = 1;
      
      private var §&u§:Number;
      
      private var §,8§:int;
      
      private var §'C§:Number;
      
      private var §=!3§:Number;
      
      private var §%d§:int;
      
      private var §]^§:Number;
      
      private var §^O§:Number;
      
      private var §1r§:Number;
      
      private var §"!@§:Number;
      
      private var §1!b§:Number;
      
      private var §43§:Number;
      
      private var §-!'§:Number;
      
      private var §#!>§:Number;
      
      private var §]=§:Number;
      
      private var §,!3§:Number;
      
      private var §6U§:Number;
      
      private var §<!K§:Number;
      
      private var §=!I§:Number;
      
      private var §-]§:Number;
      
      private var §=O§:Number;
      
      private var §>!E§:Number;
      
      private var §'f§:Number;
      
      private var §?!_§:Number;
      
      private var §;!#§:Number;
      
      private var §5!e§:Number;
      
      private var §-!G§:Number;
      
      private var §<!c§:Number;
      
      private var §]!4§:Number;
      
      private var §=B§:Number;
      
      private var §5!%§:Number;
      
      private var §@G§:Number;
      
      private var §#!A§:ColorArgb;
      
      private var §8!A§:ColorArgb;
      
      private var §^U§:ColorArgb;
      
      private var §^7§:ColorArgb;
      
      public function ParticleDesignerPS(param1:XML, param2:Texture)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param1))
         {
            this.§]!K§(param1,param2);
         }
         §§push(this.§%d§);
         §§push(this.§]^§);
         if(_loc5_ || _loc3_)
         {
            §§push(§§pop() + this.§1r§);
         }
         §§push(§§pop() / §§pop());
         if(_loc5_ || _loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(!(_loc4_ && _loc3_))
         {
            super(param2,_loc3_,this.§%d§,§-!9§,§-w§);
            do
            {
               §@!Y§ = false;
            }
            while(_loc4_);
            
         }
      }
      
      public function get §7!O§() : int
      {
         return this.§%d§;
      }
      
      override protected function createParticle() : §#-§
      {
         return new PDParticle();
      }
      
      private function get §-!>§() : Boolean
      {
         return this.§7!O§ >= 20;
      }
      
      override protected function initParticle(param1:§#-§) : void
      {
         var _loc17_:Boolean = false;
         var _loc18_:Boolean = true;
         var _loc2_:PDParticle = null;
         var _loc3_:* = NaN;
         _loc2_ = param1 as PDParticle;
         if(_loc18_ || _loc2_)
         {
            §§push(this.§]^§);
            if(_loc18_ || _loc2_)
            {
               §§push(this.§^O§);
               loop0:
               while(true)
               {
                  §§push(Math.random() * 2);
                  if(_loc18_ || param1)
                  {
                     §§push(1);
                     if(!_loc17_)
                     {
                        §§push(§§pop() - §§pop());
                        if(_loc18_)
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc18_)
                           {
                              §§push(§§pop() + §§pop());
                              if(_loc18_ || this)
                              {
                                 §§push(Number(§§pop()));
                                 if(_loc18_ || param1)
                                 {
                                    while(true)
                                    {
                                       _loc3_ = §§pop();
                                       addr207:
                                       while(true)
                                       {
                                          §§push(_loc3_);
                                          if(_loc17_ && this)
                                          {
                                             break;
                                          }
                                          §§push(0);
                                          if(!_loc17_)
                                          {
                                             continue loop0;
                                          }
                                          addr235:
                                          addr221:
                                          §§push(Math.random() * 2);
                                          if(!_loc17_)
                                          {
                                             break loop0;
                                          }
                                          §§push(§§pop() + §§pop() * §§pop());
                                          if(!_loc17_)
                                          {
                                             addr234:
                                             §§push(Number(§§pop()));
                                          }
                                          var _loc4_:* = §§pop();
                                          §§push(this.§-]§);
                                          if(!(_loc17_ && _loc2_))
                                          {
                                             §§push(this.§=O§);
                                             if(!_loc17_)
                                             {
                                                §§push(Math.random() * 2);
                                                if(!_loc17_)
                                                {
                                                   §§push(§§pop() - 1);
                                                }
                                                §§push(§§pop() * §§pop());
                                             }
                                             §§push(§§pop() + §§pop());
                                             if(_loc18_ || _loc2_)
                                             {
                                                §§push(Number(§§pop()));
                                             }
                                          }
                                          var _loc5_:* = §§pop();
                                          if(_loc18_)
                                          {
                                             §§push(_loc2_);
                                             §§push(_loc5_);
                                             if(!_loc17_)
                                             {
                                                §§push(§§pop() * Math.cos(_loc4_));
                                             }
                                             §§pop().velocityX = §§pop();
                                             loop1:
                                             while(true)
                                             {
                                                §§push(_loc2_);
                                                §§push(_loc5_);
                                                if(_loc18_)
                                                {
                                                   §§push(§§pop() * -Math.sin(_loc4_));
                                                }
                                                §§pop().velocityY = §§pop();
                                                while(true)
                                                {
                                                   §§push(_loc2_);
                                                   §§push(this.§<!c§);
                                                   if(!(_loc17_ && _loc2_))
                                                   {
                                                      §§push(this.§]!4§);
                                                      if(!(_loc17_ && param1))
                                                      {
                                                         §§push(Math.random() * 2);
                                                         if(_loc18_)
                                                         {
                                                            §§push(§§pop() - 1);
                                                         }
                                                         §§push(§§pop() * §§pop());
                                                      }
                                                      §§push(§§pop() + §§pop());
                                                   }
                                                   §§pop().radius = §§pop();
                                                   while(!_loc17_)
                                                   {
                                                      continue loop1;
                                                      loop6:
                                                      while(!(_loc17_ && _loc2_))
                                                      {
                                                         loop7:
                                                         while(true)
                                                         {
                                                            _loc2_.radialAcceleration = this.§?!_§;
                                                            loop8:
                                                            while(!_loc17_)
                                                            {
                                                               addr295:
                                                               if(_loc18_ || _loc2_)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     _loc2_.tangentialAcceleration = this.§5!e§;
                                                                     if(!_loc18_)
                                                                     {
                                                                        continue loop8;
                                                                     }
                                                                     addr279:
                                                                     if(!(_loc17_ && _loc3_))
                                                                     {
                                                                        if(true)
                                                                        {
                                                                           break;
                                                                        }
                                                                        continue loop7;
                                                                     }
                                                                     addr385:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc2_);
                                                                        §§push(this.§<!K§);
                                                                        if(!(_loc17_ && _loc3_))
                                                                        {
                                                                           §§push(this.§=!I§);
                                                                           if(_loc18_ || _loc2_)
                                                                           {
                                                                              §§push(Math.random() * 2);
                                                                              if(_loc18_)
                                                                              {
                                                                                 §§push(§§pop() - 1);
                                                                              }
                                                                              §§push(§§pop() * §§pop());
                                                                           }
                                                                           §§push(§§pop() + §§pop());
                                                                        }
                                                                        §§pop().rotation = §§pop();
                                                                        §§goto(addr279);
                                                                     }
                                                                  }
                                                                  §§push(Math.random() * 2);
                                                                  if(_loc18_)
                                                                  {
                                                                     §§push(§§pop() - 1);
                                                                     if(!_loc17_)
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                     }
                                                                  }
                                                                  var _loc6_:* = §§pop();
                                                                  §§push(this.§"!@§);
                                                                  if(!(_loc17_ && _loc3_))
                                                                  {
                                                                     §§push(this.§1!b§);
                                                                     if(_loc18_ || param1)
                                                                     {
                                                                        §§push(§§pop() * _loc6_);
                                                                     }
                                                                     §§push(§§pop() + §§pop());
                                                                     if(!_loc17_)
                                                                     {
                                                                        addr488:
                                                                        §§push(Number(§§pop()));
                                                                     }
                                                                     var _loc7_:* = §§pop();
                                                                     §§push(_loc7_);
                                                                     if(!(_loc17_ && this))
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                     }
                                                                     var _loc8_:* = §§pop();
                                                                     if(!(_loc17_ && _loc3_))
                                                                     {
                                                                        §§push(!isNaN(this.§#!>§));
                                                                        loop10:
                                                                        while(true)
                                                                        {
                                                                           if(!§§pop())
                                                                           {
                                                                              loop19:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc7_);
                                                                                 if(!(_loc17_ && _loc2_))
                                                                                 {
                                                                                    §§push(0.1);
                                                                                    if(_loc18_)
                                                                                    {
                                                                                       if(§§pop() < §§pop())
                                                                                       {
                                                                                          loop20:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(0.1);
                                                                                             loop21:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(Number(§§pop()));
                                                                                                if(_loc18_ || this)
                                                                                                {
                                                                                                   if(_loc18_)
                                                                                                   {
                                                                                                      _loc7_ = §§pop();
                                                                                                      loop22:
                                                                                                      for(; _loc18_; while(!(_loc17_ && _loc3_))
                                                                                                      {
                                                                                                         continue loop20;
                                                                                                         §§goto(addr542);
                                                                                                      })
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc8_);
                                                                                                            if(_loc18_ || this)
                                                                                                            {
                                                                                                               if(!_loc18_)
                                                                                                               {
                                                                                                                  continue loop21;
                                                                                                               }
                                                                                                               if(_loc18_)
                                                                                                               {
                                                                                                                  §§push(0.1);
                                                                                                                  if(!_loc17_)
                                                                                                                  {
                                                                                                                     if(§§pop() < §§pop())
                                                                                                                     {
                                                                                                                        continue loop22;
                                                                                                                     }
                                                                                                                     loop26:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc2_);
                                                                                                                        §§push(_loc7_);
                                                                                                                        if(!_loc17_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() / texture.width);
                                                                                                                        }
                                                                                                                        §§pop().scaleX = §§pop();
                                                                                                                        addr563:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(_loc2_);
                                                                                                                           §§push(_loc8_);
                                                                                                                           if(!_loc17_)
                                                                                                                           {
                                                                                                                              §§push(_loc7_);
                                                                                                                              if(_loc18_ || this)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() - §§pop());
                                                                                                                                 if(!_loc17_)
                                                                                                                                 {
                                                                                                                                    addr525:
                                                                                                                                    §§push(§§pop() / _loc3_);
                                                                                                                                    if(_loc17_)
                                                                                                                                    {
                                                                                                                                    }
                                                                                                                                    addr532:
                                                                                                                                    §§pop().scaleDeltaX = §§pop();
                                                                                                                                    if(_loc17_)
                                                                                                                                    {
                                                                                                                                       continue;
                                                                                                                                    }
                                                                                                                                    addr535:
                                                                                                                                    if(_loc17_ && this)
                                                                                                                                    {
                                                                                                                                       addr616:
                                                                                                                                       while(!(_loc17_ && _loc3_))
                                                                                                                                       {
                                                                                                                                          continue loop26;
                                                                                                                                          §§goto(addr535);
                                                                                                                                       }
                                                                                                                                       continue loop19;
                                                                                                                                       addr616:
                                                                                                                                    }
                                                                                                                                    if(_loc17_ && this)
                                                                                                                                    {
                                                                                                                                       continue loop22;
                                                                                                                                    }
                                                                                                                                    if(_loc18_)
                                                                                                                                    {
                                                                                                                                       if(true)
                                                                                                                                       {
                                                                                                                                          §§push(this.§43§);
                                                                                                                                          if(_loc18_)
                                                                                                                                          {
                                                                                                                                             §§push(this.§-!'§);
                                                                                                                                             if(_loc17_ && param1)
                                                                                                                                             {
                                                                                                                                             }
                                                                                                                                             addr724:
                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                             if(!_loc17_)
                                                                                                                                             {
                                                                                                                                                addr727:
                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                                break loop21;
                                                                                                                                             }
                                                                                                                                             break loop21;
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       continue loop26;
                                                                                                                                       break loop21;
                                                                                                                                    }
                                                                                                                                    addr661:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(_loc8_);
                                                                                                                                       if(!_loc17_)
                                                                                                                                       {
                                                                                                                                          §§push(this.§]=§);
                                                                                                                                          if(_loc18_ || _loc2_)
                                                                                                                                          {
                                                                                                                                             §§push(Math.random() * 2);
                                                                                                                                             if(_loc18_ || this)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() - 1);
                                                                                                                                                if(_loc18_)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                   if(!_loc17_)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                      while(!_loc17_)
                                                                                                                                                      {
                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            _loc8_ = §§pop();
                                                                                                                                                            continue loop19;
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                         addr707:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            _loc8_ = §§pop();
                                                                                                                                                            break loop22;
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      addr693:
                                                                                                                                                      addr706:
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr724);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr724);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             addr722:
                                                                                                                                             §§push(_loc6_);
                                                                                                                                          }
                                                                                                                                          §§goto(addr724);
                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                       }
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                    §§goto(addr727);
                                                                                                                                    §§goto(addr722);
                                                                                                                                 }
                                                                                                                                 §§goto(addr532);
                                                                                                                                 §§push(§§pop() / texture.width);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr525);
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr724);
                                                                                                               }
                                                                                                               §§goto(addr696);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               while(!_loc17_)
                                                                                                               {
                                                                                                                  §§push(Number(§§pop()));
                                                                                                                  if(_loc18_ || _loc3_)
                                                                                                                  {
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        _loc8_ = §§pop();
                                                                                                                        §§goto(addr616);
                                                                                                                     }
                                                                                                                     addr615:
                                                                                                                  }
                                                                                                                  break loop21;
                                                                                                               }
                                                                                                               §§goto(addr693);
                                                                                                               addr605:
                                                                                                            }
                                                                                                            §§goto(addr616);
                                                                                                         }
                                                                                                      }
                                                                                                      continue loop10;
                                                                                                   }
                                                                                                   §§goto(addr707);
                                                                                                }
                                                                                                break;
                                                                                             }
                                                                                             addr728:
                                                                                             var _loc9_:* = §§pop();
                                                                                             §§push(_loc9_);
                                                                                             if(!_loc17_)
                                                                                             {
                                                                                                §§push(Number(§§pop()));
                                                                                             }
                                                                                             var _loc10_:* = §§pop();
                                                                                             if(_loc18_ || _loc2_)
                                                                                             {
                                                                                                §§push(!isNaN(this.§,!3§));
                                                                                                loop30:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!§§pop())
                                                                                                   {
                                                                                                      loop34:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc9_);
                                                                                                         if(!(_loc17_ && param1))
                                                                                                         {
                                                                                                            §§push(0.1);
                                                                                                            loop35:
                                                                                                            for(; !(_loc17_ && _loc2_); §§push(0.1),if(!(_loc18_ || param1))
                                                                                                            {
                                                                                                               continue;
                                                                                                            },if(!(_loc17_ && this))
                                                                                                            {
                                                                                                               if(§§pop() < §§pop())
                                                                                                               {
                                                                                                                  if(!_loc17_)
                                                                                                                  {
                                                                                                                     §§push(0.1);
                                                                                                                     if(_loc18_ || param1)
                                                                                                                     {
                                                                                                                        if(_loc18_)
                                                                                                                        {
                                                                                                                           addr937:
                                                                                                                           if(!_loc17_)
                                                                                                                           {
                                                                                                                              §§goto(addr843);
                                                                                                                              §§push(Number(§§pop()));
                                                                                                                           }
                                                                                                                           if(_loc18_)
                                                                                                                           {
                                                                                                                              §§goto(addr940);
                                                                                                                              §§push(Number(§§pop()));
                                                                                                                           }
                                                                                                                           §§goto(addr959);
                                                                                                                        }
                                                                                                                        §§goto(addr900);
                                                                                                                     }
                                                                                                                     §§goto(addr843);
                                                                                                                  }
                                                                                                                  §§goto(addr863);
                                                                                                               }
                                                                                                               §§goto(addr778);
                                                                                                            },§§goto(addr921))
                                                                                                            {
                                                                                                               if(§§pop() < §§pop())
                                                                                                               {
                                                                                                                  loop36:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(0.1);
                                                                                                                     addr892:
                                                                                                                     loop43:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(!(_loc17_ && this))
                                                                                                                        {
                                                                                                                           §§push(Number(§§pop()));
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              _loc9_ = §§pop();
                                                                                                                              loop45:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 addr803:
                                                                                                                                 loop37:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(_loc10_);
                                                                                                                                    if(_loc18_ || param1)
                                                                                                                                    {
                                                                                                                                       continue loop35;
                                                                                                                                    }
                                                                                                                                    addr843:
                                                                                                                                    if(_loc18_ || _loc2_)
                                                                                                                                    {
                                                                                                                                       if(_loc18_)
                                                                                                                                       {
                                                                                                                                          _loc10_ = §§pop();
                                                                                                                                          loop38:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(!_loc17_)
                                                                                                                                             {
                                                                                                                                                if(_loc18_ || param1)
                                                                                                                                                {
                                                                                                                                                   do
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc2_);
                                                                                                                                                      §§push(_loc9_);
                                                                                                                                                      if(_loc18_ || this)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() / texture.height);
                                                                                                                                                      }
                                                                                                                                                      §§pop().scaleY = §§pop();
                                                                                                                                                      loop40:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(!_loc18_)
                                                                                                                                                         {
                                                                                                                                                            continue loop36;
                                                                                                                                                         }
                                                                                                                                                         if(_loc18_ || _loc3_)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc2_);
                                                                                                                                                            §§push(_loc10_);
                                                                                                                                                            if(!(_loc17_ && this))
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc9_);
                                                                                                                                                               if(_loc18_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() - §§pop());
                                                                                                                                                                  if(_loc18_)
                                                                                                                                                                  {
                                                                                                                                                                     addr759:
                                                                                                                                                                     §§push(§§pop() / _loc3_);
                                                                                                                                                                     if(_loc18_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() / texture.height);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§pop().scaleDeltaY = §§pop();
                                                                                                                                                                  if(_loc18_)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop38;
                                                                                                                                                                  }
                                                                                                                                                                  continue;
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr759);
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc10_);
                                                                                                                                                               if(_loc18_)
                                                                                                                                                               {
                                                                                                                                                                  addr921:
                                                                                                                                                                  §§push(this.§6U§);
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(Math.random() * 2);
                                                                                                                                                                     if(!(_loc17_ && param1))
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() - 1);
                                                                                                                                                                     }
                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                     break loop35;
                                                                                                                                                                  }
                                                                                                                                                                  addr921:
                                                                                                                                                               }
                                                                                                                                                               break loop40;
                                                                                                                                                            }
                                                                                                                                                            addr916:
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         _loc10_ = §§pop();
                                                                                                                                                         break loop38;
                                                                                                                                                      }
                                                                                                                                                      continue loop34;
                                                                                                                                                   }
                                                                                                                                                   while(false);
                                                                                                                                                   
                                                                                                                                                   var _loc11_:ColorArgb = _loc2_.colorArgb;
                                                                                                                                                   var _loc12_:ColorArgb = _loc2_.colorArgbDelta;
                                                                                                                                                   if(!(_loc17_ && _loc2_))
                                                                                                                                                   {
                                                                                                                                                      _loc11_.red = this.§#!A§.red;
                                                                                                                                                      _loc11_.green = this.§#!A§.green;
                                                                                                                                                      addr1268:
                                                                                                                                                   }
                                                                                                                                                   _loc11_.blue = this.§#!A§.blue;
                                                                                                                                                   _loc11_.alpha = this.§#!A§.alpha;
                                                                                                                                                   addr1248:
                                                                                                                                                   addr1255:
                                                                                                                                                   addr1262:
                                                                                                                                                   if(this.§8!A§.red != 0)
                                                                                                                                                   {
                                                                                                                                                      if(!(_loc17_ && param1))
                                                                                                                                                      {
                                                                                                                                                         if(!(_loc17_ && param1))
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc11_);
                                                                                                                                                            §§push(_loc11_.red);
                                                                                                                                                            if(!(_loc17_ && _loc3_))
                                                                                                                                                            {
                                                                                                                                                               §§push(this.§8!A§.red);
                                                                                                                                                               if(!(_loc17_ && _loc3_))
                                                                                                                                                               {
                                                                                                                                                                  §§push(Math.random() * 2);
                                                                                                                                                                  if(_loc18_ || this)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() - 1);
                                                                                                                                                                  }
                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                               }
                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                            }
                                                                                                                                                            §§pop().red = §§pop();
                                                                                                                                                            addr1241:
                                                                                                                                                            if(this.§8!A§.green != 0)
                                                                                                                                                            {
                                                                                                                                                               addr1144:
                                                                                                                                                               if(_loc18_ || _loc3_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc11_);
                                                                                                                                                                  §§push(_loc11_.green);
                                                                                                                                                                  if(!(_loc17_ && param1))
                                                                                                                                                                  {
                                                                                                                                                                     §§push(this.§8!A§.green);
                                                                                                                                                                     if(_loc18_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(Math.random() * 2);
                                                                                                                                                                        if(!(_loc17_ && this))
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() - 1);
                                                                                                                                                                        }
                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                     }
                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                  }
                                                                                                                                                                  §§pop().green = §§pop();
                                                                                                                                                                  addr1058:
                                                                                                                                                                  addr1183:
                                                                                                                                                                  §§push(this.§8!A§);
                                                                                                                                                                  if(_loc18_ || _loc3_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop().blue);
                                                                                                                                                                     if(_loc18_ || param1)
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc17_)
                                                                                                                                                                        {
                                                                                                                                                                           addr1079:
                                                                                                                                                                           §§push(0);
                                                                                                                                                                           if(!_loc17_)
                                                                                                                                                                           {
                                                                                                                                                                              if(!(_loc17_ && this))
                                                                                                                                                                              {
                                                                                                                                                                                 if(§§pop() != §§pop())
                                                                                                                                                                                 {
                                                                                                                                                                                    addr1089:
                                                                                                                                                                                    if(!(_loc17_ && _loc3_))
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!(_loc17_ && this))
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!(_loc17_ && _loc2_))
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc11_);
                                                                                                                                                                                             §§push(_loc11_.blue);
                                                                                                                                                                                             if(_loc18_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(this.§8!A§.blue);
                                                                                                                                                                                                if(_loc18_ || this)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(Math.random() * 2);
                                                                                                                                                                                                   if(_loc18_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop() - 1);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                                                                }
                                                                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                                                             }
                                                                                                                                                                                             §§pop().blue = §§pop();
                                                                                                                                                                                             addr1137:
                                                                                                                                                                                             §§push(this.§8!A§);
                                                                                                                                                                                             if(_loc18_ || this)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!_loc17_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop().alpha);
                                                                                                                                                                                                   if(!_loc17_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!(_loc17_ && _loc2_))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(0);
                                                                                                                                                                                                         if(!_loc17_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(§§pop() != §§pop())
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!(_loc17_ && param1))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!_loc17_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc18_ || param1)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc18_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(_loc11_);
                                                                                                                                                                                                                           §§push(_loc11_.alpha);
                                                                                                                                                                                                                           if(_loc18_ || param1)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(this.§8!A§.alpha);
                                                                                                                                                                                                                              if(_loc18_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(Math.random() * 2);
                                                                                                                                                                                                                                 if(!(_loc17_ && _loc3_))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(§§pop() - 1);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§pop().alpha = §§pop();
                                                                                                                                                                                                                           addr1054:
                                                                                                                                                                                                                           if(_loc18_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(false)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§goto(addr1058);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              addr1269:
                                                                                                                                                                                                                              §§push(this.§^U§.red);
                                                                                                                                                                                                                              if(!_loc17_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr1275:
                                                                                                                                                                                                                                 var _loc13_:Number = §§pop();
                                                                                                                                                                                                                                 §§push(this.§^U§.green);
                                                                                                                                                                                                                                 if(!_loc17_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 var _loc14_:* = §§pop();
                                                                                                                                                                                                                                 §§push(this.§^U§.blue);
                                                                                                                                                                                                                                 if(!_loc17_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 var _loc15_:* = §§pop();
                                                                                                                                                                                                                                 §§push(this.§^U§.alpha);
                                                                                                                                                                                                                                 if(_loc18_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 var _loc16_:* = §§pop();
                                                                                                                                                                                                                                 if(!_loc17_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr1686:
                                                                                                                                                                                                                                    §§push(this.§^7§.red);
                                                                                                                                                                                                                                    if(_loc18_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr1690:
                                                                                                                                                                                                                                       if(§§pop() != 0)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(_loc18_ || this)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             addr1712:
                                                                                                                                                                                                                                             _loc13_ += this.§^7§.red * (Math.random() * 2 - 1);
                                                                                                                                                                                                                                             addr1699:
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          addr1713:
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§push(this.§^7§);
                                                                                                                                                                                                                                       if(!_loc17_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr1635:
                                                                                                                                                                                                                                          §§push(§§pop().green);
                                                                                                                                                                                                                                          if(!(_loc17_ && _loc3_))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             addr1643:
                                                                                                                                                                                                                                             if(§§pop() != 0)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr1644:
                                                                                                                                                                                                                                                §§push(_loc14_);
                                                                                                                                                                                                                                                §§push(this.§^7§.green);
                                                                                                                                                                                                                                                §§push(Math.random() * 2);
                                                                                                                                                                                                                                                if(!(_loc17_ && this))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr1665:
                                                                                                                                                                                                                                                   _loc14_ = Number(§§pop() + §§pop() * (§§pop() - 1));
                                                                                                                                                                                                                                                   addr1664:
                                                                                                                                                                                                                                                   addr1662:
                                                                                                                                                                                                                                                   addr1663:
                                                                                                                                                                                                                                                   addr1661:
                                                                                                                                                                                                                                                   if(!(_loc17_ && _loc2_))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      addr1569:
                                                                                                                                                                                                                                                      if(this.§^7§.blue != 0)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(_loc18_ || this)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            addr1578:
                                                                                                                                                                                                                                                            §§push(_loc15_);
                                                                                                                                                                                                                                                            if(_loc18_ || _loc3_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(!_loc17_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  addr1590:
                                                                                                                                                                                                                                                                  §§push(this.§^7§);
                                                                                                                                                                                                                                                                  if(_loc18_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     addr1598:
                                                                                                                                                                                                                                                                     §§push(§§pop().blue);
                                                                                                                                                                                                                                                                     §§push(Math.random() * 2);
                                                                                                                                                                                                                                                                     §§push(1);
                                                                                                                                                                                                                                                                     if(_loc18_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(!_loc17_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           addr1605:
                                                                                                                                                                                                                                                                           §§push(§§pop() * (§§pop() - §§pop()));
                                                                                                                                                                                                                                                                           if(!_loc17_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(!_loc17_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 addr1610:
                                                                                                                                                                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                 if(!(_loc17_ && _loc2_))
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    addr1618:
                                                                                                                                                                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                    if(_loc18_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       _loc15_ = §§pop();
                                                                                                                                                                                                                                                                                       addr1621:
                                                                                                                                                                                                                                                                                       if(_loc18_ || this)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          addr1410:
                                                                                                                                                                                                                                                                                          §§push(this.§^7§);
                                                                                                                                                                                                                                                                                          if(_loc18_ || this)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(!(_loc17_ && param1))
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§push(§§pop().alpha);
                                                                                                                                                                                                                                                                                                if(_loc18_ || param1)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§push(0);
                                                                                                                                                                                                                                                                                                   if(_loc18_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(_loc18_ || _loc2_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         if(_loc18_ || _loc3_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            if(§§pop() != §§pop())
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               addr1453:
                                                                                                                                                                                                                                                                                                               if(_loc18_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  §§push(_loc16_);
                                                                                                                                                                                                                                                                                                                  if(!_loc17_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     if(!_loc17_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        if(_loc18_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           §§push(this.§^7§);
                                                                                                                                                                                                                                                                                                                           if(!_loc17_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              if(!(_loc17_ && _loc2_))
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 §§push(§§pop().alpha);
                                                                                                                                                                                                                                                                                                                                 if(_loc18_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    if(!(_loc17_ && param1))
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       if(!_loc17_)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          §§push(Math.random() * 2);
                                                                                                                                                                                                                                                                                                                                          if(_loc18_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             if(!(_loc17_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                if(_loc18_)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   if(_loc18_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      §§push(1);
                                                                                                                                                                                                                                                                                                                                                      if(!(_loc17_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         addr1527:
                                                                                                                                                                                                                                                                                                                                                         §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                                                         if(_loc18_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            if(!_loc17_)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               addr1537:
                                                                                                                                                                                                                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                               if(_loc18_)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  if(!_loc17_)
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                     if(!(_loc17_ && param1))
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        addr1549:
                                                                                                                                                                                                                                                                                                                                                                        if(_loc18_)
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           if(!(_loc17_ && param1))
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              if(_loc18_)
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 addr1561:
                                                                                                                                                                                                                                                                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                                 if(_loc18_)
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    _loc16_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                    addr1564:
                                                                                                                                                                                                                                                                                                                                                                                    §§push(_loc12_);
                                                                                                                                                                                                                                                                                                                                                                                    §§push(_loc13_);
                                                                                                                                                                                                                                                                                                                                                                                    if(!_loc17_)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       §§push(_loc11_.red);
                                                                                                                                                                                                                                                                                                                                                                                       if(_loc18_)
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          addr1401:
                                                                                                                                                                                                                                                                                                                                                                                          §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                                                                                          if(_loc18_)
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             §§push(_loc3_);
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                          §§pop().red = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                          addr1402:
                                                                                                                                                                                                                                                                                                                                                                                          if(_loc18_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             §§push(_loc12_);
                                                                                                                                                                                                                                                                                                                                                                                             §§push(_loc14_);
                                                                                                                                                                                                                                                                                                                                                                                             if(_loc18_)
                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                §§push(_loc11_.green);
                                                                                                                                                                                                                                                                                                                                                                                                if(_loc18_)
                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                   addr1383:
                                                                                                                                                                                                                                                                                                                                                                                                   §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                   if(_loc18_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                      §§push(_loc3_);
                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                   §§pop().green = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                   addr1384:
                                                                                                                                                                                                                                                                                                                                                                                                   if(!_loc17_)
                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                      §§push(_loc12_);
                                                                                                                                                                                                                                                                                                                                                                                                      §§push(_loc15_);
                                                                                                                                                                                                                                                                                                                                                                                                      if(_loc18_ || param1)
                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                         §§push(_loc11_.blue);
                                                                                                                                                                                                                                                                                                                                                                                                         if(_loc18_)
                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                            addr1362:
                                                                                                                                                                                                                                                                                                                                                                                                            §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                            if(_loc18_)
                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                               §§push(_loc3_);
                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                            §§pop().blue = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                            addr1363:
                                                                                                                                                                                                                                                                                                                                                                                                            §§push(_loc12_);
                                                                                                                                                                                                                                                                                                                                                                                                            §§push(_loc16_);
                                                                                                                                                                                                                                                                                                                                                                                                            if(!(_loc17_ && this))
                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                               §§push(_loc11_.alpha);
                                                                                                                                                                                                                                                                                                                                                                                                               if(_loc18_ || param1)
                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                  §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                  if(!_loc17_)
                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                     addr1327:
                                                                                                                                                                                                                                                                                                                                                                                                                     §§push(§§pop() / _loc3_);
                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                  §§pop().alpha = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                  if(_loc18_)
                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                     if(!_loc17_)
                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                        if(!(_loc17_ && param1))
                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                           if(_loc17_)
                                                                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr1644);
                                                                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                                                                           return;
                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr1564);
                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr1384);
                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr1363);
                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                            §§goto(addr1327);
                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                         §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                      §§goto(addr1362);
                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                   §§goto(addr1402);
                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                             §§goto(addr1383);
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr1453);
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                       §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr1401);
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr1665);
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr1699);
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr1664);
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr1610);
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr1561);
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr1644);
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               §§goto(addr1605);
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            §§goto(addr1662);
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      §§goto(addr1598);
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   §§goto(addr1699);
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                §§goto(addr1644);
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             §§goto(addr1605);
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          §§goto(addr1527);
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       §§goto(addr1699);
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    §§goto(addr1598);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§goto(addr1537);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §§goto(addr1699);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§goto(addr1590);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§goto(addr1569);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr1618);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr1561);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr1621);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr1564);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr1690);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr1643);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr1569);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr1549);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr1690);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr1569);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr1665);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr1635);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr1644);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr1699);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr1663);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr1699);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr1661);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr1644);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr1712);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr1610);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr1621);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr1410);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr1713);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr1712);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr1569);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr1712);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1686);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1712);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr1578);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr1275);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr1137);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1248);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1144);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1089);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1054);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1269);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1079);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1248);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1275);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1248);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1058);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1255);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1241);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1183);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1137);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1248);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1241);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1275);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1241);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1268);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1058);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1262);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1241);
                                                                                                                                                   addr778:
                                                                                                                                                }
                                                                                                                                                break;
                                                                                                                                             }
                                                                                                                                             continue loop45;
                                                                                                                                          }
                                                                                                                                          if(!_loc18_)
                                                                                                                                          {
                                                                                                                                             continue loop30;
                                                                                                                                          }
                                                                                                                                          if(_loc18_ || _loc2_)
                                                                                                                                          {
                                                                                                                                             §§goto(addr950);
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(this.§,!3§);
                                                                                                                                                addr959:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                   break loop37;
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             addr957:
                                                                                                                                          }
                                                                                                                                          addr863:
                                                                                                                                       }
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                    continue loop43;
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    _loc10_ = §§pop();
                                                                                                                                    continue loop30;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           addr900:
                                                                                                                        }
                                                                                                                        §§goto(addr940);
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr803);
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§goto(addr937);
                                                                                                               §§goto(addr921);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr892);
                                                                                                      }
                                                                                                      addr873:
                                                                                                   }
                                                                                                   §§goto(addr957);
                                                                                                }
                                                                                                addr956:
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(!isNaN(this.§6U§));
                                                                                                if(_loc18_ || _loc2_)
                                                                                                {
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      §§goto(addr916);
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr956);
                                                                                                }
                                                                                                §§goto(addr873);
                                                                                             }
                                                                                             if(!(_loc18_ || _loc2_))
                                                                                             {
                                                                                                continue;
                                                                                             }
                                                                                             if(!_loc17_)
                                                                                             {
                                                                                                §§push(0.1);
                                                                                                if(!(_loc17_ && param1))
                                                                                                {
                                                                                                   §§goto(addr605);
                                                                                                }
                                                                                                §§goto(addr615);
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§goto(addr706);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr564);
                                                                                    }
                                                                                    §§goto(addr724);
                                                                                 }
                                                                                 §§goto(addr728);
                                                                              }
                                                                              addr624:
                                                                           }
                                                                           §§goto(addr704);
                                                                        }
                                                                     }
                                                                     §§goto(addr563);
                                                                  }
                                                                  §§goto(addr488);
                                                                  addr302:
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(_loc2_);
                                                                  §§push(this.§5!%§);
                                                                  if(_loc18_)
                                                                  {
                                                                     §§push(this.§@G§);
                                                                     if(_loc18_ || _loc2_)
                                                                     {
                                                                        §§push(Math.random() * 2);
                                                                        if(!(_loc17_ && _loc3_))
                                                                        {
                                                                           §§push(§§pop() - 1);
                                                                        }
                                                                        §§push(§§pop() * §§pop());
                                                                     }
                                                                     §§push(§§pop() + §§pop());
                                                                  }
                                                                  §§pop().rotationDelta = §§pop();
                                                                  break loop8;
                                                                  §§goto(addr295);
                                                               }
                                                            }
                                                            continue loop6;
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          §§goto(addr302);
                                       }
                                    }
                                    addr206:
                                 }
                                 addr217:
                                 §§push(this.§=!I§);
                                 if(!_loc18_)
                                 {
                                 }
                                 §§goto(addr221);
                              }
                              §§goto(addr234);
                           }
                           §§goto(addr221);
                        }
                        break;
                     }
                     addr229:
                     §§goto(addr221);
                     §§push(§§pop() - §§pop());
                  }
                  break;
               }
               §§goto(addr229);
               §§push(1);
            }
            §§goto(addr206);
         }
         §§goto(addr118);
      }
      
      override protected function advanceParticle(param1:§#-§, param2:Number) : void
      {
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = true;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         var _loc12_:* = NaN;
         var _loc3_:PDParticle = param1 as PDParticle;
         §§push(_loc3_.§%!2§ - _loc3_.§,b§);
         if(_loc14_ || _loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:* = §§pop();
         if(!_loc13_)
         {
            §§push(_loc4_);
            loop0:
            while(true)
            {
               §§push(param2);
               loop1:
               while(true)
               {
                  §§push(§§pop() > §§pop());
                  loop2:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        §§push(_loc4_);
                        loop3:
                        while(true)
                        {
                           §§push(Number(§§pop()));
                           loop4:
                           while(true)
                           {
                              §§push(Number(§§pop()));
                              loop5:
                              while(true)
                              {
                                 param2 = §§pop();
                                 loop6:
                                 while(true)
                                 {
                                    _loc3_.§,b§ += param2;
                                    loop7:
                                    while(true)
                                    {
                                       if(this.§,8§ != this.§!!5§)
                                       {
                                          §§push(_loc3_.skipUpdate);
                                          if(!(_loc13_ && _loc3_))
                                          {
                                             §§push(!§§pop());
                                          }
                                          loop8:
                                          while(true)
                                          {
                                             if(!(_loc13_ && param2))
                                             {
                                                §§push(Boolean(§§pop()));
                                                loop9:
                                                while(true)
                                                {
                                                   if(_loc14_)
                                                   {
                                                      if(!_loc14_)
                                                      {
                                                         break;
                                                      }
                                                      §§push(§§pop());
                                                      if(_loc14_)
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                      }
                                                      loop10:
                                                      while(true)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            while(true)
                                                            {
                                                               loop14:
                                                               while(true)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     loop15:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc3_.x - _loc3_.startX);
                                                                        loop16:
                                                                        while(true)
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                           loop17:
                                                                           while(true)
                                                                           {
                                                                              _loc5_ = §§pop();
                                                                              loop18:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc3_.y - _loc3_.startY);
                                                                                 loop19:
                                                                                 for(; !(_loc13_ && param1); if(_loc13_ && param2)
                                                                                 {
                                                                                    continue;
                                                                                 },§§goto(addr854),§§push(Number(§§pop())))
                                                                                 {
                                                                                    §§push(Number(§§pop()));
                                                                                    loop20:
                                                                                    while(true)
                                                                                    {
                                                                                       _loc6_ = §§pop();
                                                                                       loop21:
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc13_ && _loc3_)
                                                                                          {
                                                                                             continue loop18;
                                                                                          }
                                                                                          if(!_loc14_)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          §§push(Number(Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_)));
                                                                                          loop22:
                                                                                          while(true)
                                                                                          {
                                                                                             _loc7_ = §§pop();
                                                                                             loop23:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc7_);
                                                                                                loop24:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(0.01);
                                                                                                   loop25:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc14_ || this)
                                                                                                      {
                                                                                                         if(§§pop() < §§pop())
                                                                                                         {
                                                                                                            loop26:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(_loc14_ || _loc3_)
                                                                                                               {
                                                                                                                  if(_loc14_ || this)
                                                                                                                  {
                                                                                                                     §§push(0.01);
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                        addr492:
                                                                                                                        if(!(_loc14_ || _loc3_))
                                                                                                                        {
                                                                                                                           continue;
                                                                                                                        }
                                                                                                                        addr504:
                                                                                                                        §§push(§§pop() * 2);
                                                                                                                        if(_loc14_)
                                                                                                                        {
                                                                                                                           §§push(Number(§§pop()));
                                                                                                                        }
                                                                                                                        if(_loc14_)
                                                                                                                        {
                                                                                                                           if(!_loc13_)
                                                                                                                           {
                                                                                                                              if(!_loc14_)
                                                                                                                              {
                                                                                                                                 continue loop0;
                                                                                                                              }
                                                                                                                              param2 = §§pop();
                                                                                                                              loop111:
                                                                                                                              while(_loc14_)
                                                                                                                              {
                                                                                                                                 addr513:
                                                                                                                                 loop77:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    _loc3_.scaleX += _loc3_.scaleDeltaX * param2;
                                                                                                                                    loop78:
                                                                                                                                    while(!_loc13_)
                                                                                                                                    {
                                                                                                                                       _loc3_.scaleY += _loc3_.scaleDeltaY * param2;
                                                                                                                                       loop79:
                                                                                                                                       for(; _loc14_ || param2; if(!(_loc14_ || param1))
                                                                                                                                       {
                                                                                                                                          continue;
                                                                                                                                       },if(_loc14_)
                                                                                                                                       {
                                                                                                                                          if(_loc14_ || _loc3_)
                                                                                                                                          {
                                                                                                                                             _loc3_.green = _loc3_.colorArgb.green;
                                                                                                                                             §§goto(addr118);
                                                                                                                                          }
                                                                                                                                          §§goto(addr576);
                                                                                                                                       },§§goto(addr565))
                                                                                                                                       {
                                                                                                                                          §§push(_loc3_.colorArgb);
                                                                                                                                          loop80:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(_loc3_.colorArgb);
                                                                                                                                             loop81:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop().red);
                                                                                                                                                loop82:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc3_.colorArgbDelta);
                                                                                                                                                   loop83:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop().red);
                                                                                                                                                      loop84:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(param2);
                                                                                                                                                         loop85:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                            loop86:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                               loop87:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§pop().red = §§pop();
                                                                                                                                                                  loop88:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc14_ || _loc3_)
                                                                                                                                                                     {
                                                                                                                                                                        if(!(_loc13_ && param1))
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc3_.colorArgb);
                                                                                                                                                                           continue loop80;
                                                                                                                                                                        }
                                                                                                                                                                        continue loop26;
                                                                                                                                                                     }
                                                                                                                                                                     loop110:
                                                                                                                                                                     while(!_loc13_)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc14_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(param2);
                                                                                                                                                                           if(_loc14_ || param1)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc14_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr478:
                                                                                                                                                                                 if(!(_loc13_ && this))
                                                                                                                                                                                 {
                                                                                                                                                                                    addr485:
                                                                                                                                                                                    if(!(_loc13_ && param2))
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr492);
                                                                                                                                                                                    }
                                                                                                                                                                                    loop39:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       _loc8_ = §§pop();
                                                                                                                                                                                       addr1045:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc6_);
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc7_);
                                                                                                                                                                                             addr1004:
                                                                                                                                                                                             loop42:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!_loc13_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc14_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop() / §§pop());
                                                                                                                                                                                                      continue loop24;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   continue loop1;
                                                                                                                                                                                                }
                                                                                                                                                                                                addr1033:
                                                                                                                                                                                                while(!_loc13_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop() / §§pop());
                                                                                                                                                                                                   break loop42;
                                                                                                                                                                                                }
                                                                                                                                                                                                continue loop25;
                                                                                                                                                                                             }
                                                                                                                                                                                             while(_loc14_ || param1)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                                                                                continue loop39;
                                                                                                                                                                                                if(_loc13_ && param1)
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue;
                                                                                                                                                                                                }
                                                                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   _loc10_ = §§pop();
                                                                                                                                                                                                   break loop79;
                                                                                                                                                                                                   addr854:
                                                                                                                                                                                                   while(!(_loc13_ && param1))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      _loc11_ = §§pop();
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(this.§-!>§);
                                                                                                                                                                                                         continue loop14;
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             continue loop16;
                                                                                                                                                                                             addr814:
                                                                                                                                                                                             if(!(_loc14_ || _loc3_))
                                                                                                                                                                                             {
                                                                                                                                                                                                continue;
                                                                                                                                                                                             }
                                                                                                                                                                                             if(!_loc14_)
                                                                                                                                                                                             {
                                                                                                                                                                                                continue loop20;
                                                                                                                                                                                             }
                                                                                                                                                                                             §§push(_loc3_.tangentialAcceleration);
                                                                                                                                                                                             if(_loc14_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!_loc13_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                                                                   if(!(_loc13_ && param1))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc14_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr839:
                                                                                                                                                                                                         if(_loc14_ || param1)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue loop19;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr1017:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            _loc9_ = §§pop();
                                                                                                                                                                                                            loop45:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!_loc13_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(_loc8_);
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(Number(§§pop()));
                                                                                                                                                                                                                     loop47:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        _loc10_ = §§pop();
                                                                                                                                                                                                                        loop48:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(_loc9_);
                                                                                                                                                                                                                           loop49:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(Number(§§pop()));
                                                                                                                                                                                                                              addr990:
                                                                                                                                                                                                                              while(!_loc13_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 _loc11_ = §§pop();
                                                                                                                                                                                                                                 loop51:
                                                                                                                                                                                                                                 while(_loc14_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(_loc8_);
                                                                                                                                                                                                                                    if(!(_loc14_ || _loc3_))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       continue loop22;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    if(_loc13_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       while(_loc14_ || param1)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          _loc7_ = §§pop();
                                                                                                                                                                                                                                          while(!_loc13_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(_loc5_);
                                                                                                                                                                                                                                                if(!(_loc14_ || this))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   continue loop39;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                if(_loc13_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   break;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr1033);
                                                                                                                                                                                                                                                §§push(_loc7_);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             addr790:
                                                                                                                                                                                                                                             if(_loc13_ && this)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                continue;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§push(_loc3_);
                                                                                                                                                                                                                                             §§push(_loc3_.velocityY);
                                                                                                                                                                                                                                             if(!(_loc13_ && this))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(2 * param2);
                                                                                                                                                                                                                                                if(_loc14_ || param1)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(this.§'f§);
                                                                                                                                                                                                                                                   if(!_loc13_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(_loc9_);
                                                                                                                                                                                                                                                      if(!_loc13_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         addr724:
                                                                                                                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                         if(_loc14_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(_loc11_);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§pop().velocityY = §§pop() + §§pop() * §§pop();
                                                                                                                                                                                                                                                         loop145:
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
                                                                                                                                                                                                                                                            loop146:
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(_loc14_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  loop115:
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     _loc3_.x += _loc3_.velocityX * param2;
                                                                                                                                                                                                                                                                     addr576:
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        _loc3_.y += _loc3_.velocityY * param2;
                                                                                                                                                                                                                                                                        addr565:
                                                                                                                                                                                                                                                                        loop117:
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           loop72:
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(_loc3_.skipUpdate);
                                                                                                                                                                                                                                                                              loop73:
                                                                                                                                                                                                                                                                              while(!_loc13_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(!§§pop());
                                                                                                                                                                                                                                                                                 if(!(_loc13_ && _loc3_))
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(!_loc13_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§push(§§pop());
                                                                                                                                                                                                                                                                                          if(!(_loc13_ && param2))
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(_loc13_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                continue loop10;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          if(!_loc13_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(§§pop())
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                loop75:
                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   if(!§§pop())
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      loop112:
                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§push(_loc3_);
                                                                                                                                                                                                                                                                                                         §§push(_loc3_.skipUpdate);
                                                                                                                                                                                                                                                                                                         if(!_loc13_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§push(!§§pop());
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§pop().skipUpdate = §§pop();
                                                                                                                                                                                                                                                                                                         if(_loc14_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            addr70:
                                                                                                                                                                                                                                                                                                            if(!(_loc13_ && param2))
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               break;
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            loop108:
                                                                                                                                                                                                                                                                                                            for(; !(_loc13_ && param2); §§goto(addr70))
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               if(_loc14_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  _loc3_.alpha = _loc3_.colorArgb.alpha;
                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     if(_loc14_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        if(_loc13_ && param2)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           break;
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        if(!_loc13_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           continue loop112;
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        continue loop111;
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     addr118:
                                                                                                                                                                                                                                                                                                                     loop107:
                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        if(_loc14_ || _loc3_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           if(!_loc13_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              if(_loc14_)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 if(_loc14_ || param1)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    if(_loc14_)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       if(_loc14_ || param1)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          _loc3_.blue = _loc3_.colorArgb.blue;
                                                                                                                                                                                                                                                                                                                                          continue loop108;
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       continue loop21;
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    continue loop145;
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 continue loop146;
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              loop104:
                                                                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 if(!_loc13_)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    addr303:
                                                                                                                                                                                                                                                                                                                                    §§push(_loc3_.colorArgb);
                                                                                                                                                                                                                                                                                                                                    if(_loc14_)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       addr176:
                                                                                                                                                                                                                                                                                                                                       if(!(_loc14_ || _loc3_))
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          continue loop80;
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       §§push(_loc3_.colorArgb);
                                                                                                                                                                                                                                                                                                                                       if(_loc14_)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          §§push(§§pop().alpha);
                                                                                                                                                                                                                                                                                                                                          if(!_loc13_)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             if(_loc14_)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                if(_loc14_)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   §§push(_loc3_.colorArgbDelta);
                                                                                                                                                                                                                                                                                                                                                   if(_loc14_)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      if(_loc13_ && _loc3_)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         continue loop83;
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      §§push(§§pop().alpha);
                                                                                                                                                                                                                                                                                                                                                      if(!_loc13_)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         §§push(param2);
                                                                                                                                                                                                                                                                                                                                                         if(_loc14_)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            addr212:
                                                                                                                                                                                                                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                            if(!(_loc13_ && this))
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               if(_loc14_)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  addr222:
                                                                                                                                                                                                                                                                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                  if(!(_loc13_ && param1))
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     if(!_loc14_)
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        continue loop87;
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     §§pop().alpha = §§pop();
                                                                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        if(_loc14_)
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           if(_loc14_ || param1)
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              _loc3_.red = _loc3_.colorArgb.red;
                                                                                                                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 if(!_loc13_)
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    continue loop79;
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                 addr335:
                                                                                                                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    if(!(_loc14_ || param1))
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       continue loop88;
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    if(!_loc13_)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       §§push(_loc3_.colorArgb);
                                                                                                                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          §§push(_loc3_.colorArgb);
                                                                                                                                                                                                                                                                                                                                                                                          addr247:
                                                                                                                                                                                                                                                                                                                                                                                          addr316:
                                                                                                                                                                                                                                                                                                                                                                                          while(_loc14_ || param2)
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             §§push(§§pop().blue);
                                                                                                                                                                                                                                                                                                                                                                                             if(!(_loc13_ && param1))
                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                §§push(_loc3_.colorArgbDelta);
                                                                                                                                                                                                                                                                                                                                                                                                while(!(_loc13_ && this))
                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                   §§push(§§pop().blue);
                                                                                                                                                                                                                                                                                                                                                                                                   if(!(_loc13_ && this))
                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                      if(!_loc14_)
                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                         while(!_loc13_)
                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                            §§push(param2);
                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                         continue loop86;
                                                                                                                                                                                                                                                                                                                                                                                                         addr327:
                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                      §§push(param2);
                                                                                                                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                         if(!(_loc13_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                            if(_loc13_ && _loc3_)
                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                               addr297:
                                                                                                                                                                                                                                                                                                                                                                                                               break;
                                                                                                                                                                                                                                                                                                                                                                                                               addr297:
                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                               if(!_loc13_)
                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                  break loop104;
                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                               break;
                                                                                                                                                                                                                                                                                                                                                                                                               §§goto(addr212);
                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                            continue loop84;
                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                      continue loop85;
                                                                                                                                                                                                                                                                                                                                                                                                      addr282:
                                                                                                                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                         addr331:
                                                                                                                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                            §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                         §§goto(addr282);
                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                   §§goto(addr297);
                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                   §§goto(addr327);
                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                addr326:
                                                                                                                                                                                                                                                                                                                                                                                                addr264:
                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                             break loop104;
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                          while(!(_loc13_ && param1))
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             §§push(§§pop().green);
                                                                                                                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                §§goto(addr326);
                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                             §§goto(addr247);
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                          continue loop81;
                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr303);
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                       addr245:
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr1187);
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr1191);
                                                                                                                                                                                                                                                                                                                                                                                 continue loop107;
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              continue loop117;
                                                                                                                                                                                                                                                                                                                                                                              addr152:
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           else
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              addr587:
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              continue loop115;
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                        else
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr545);
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr1206);
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  while(_loc14_)
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     §§pop().green = §§pop();
                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr335);
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  continue loop82;
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               §§goto(addr331);
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            §§goto(addr297);
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         §§goto(addr282);
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      §§goto(addr212);
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   §§goto(addr264);
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                §§goto(addr324);
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             break;
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          §§goto(addr222);
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       §§goto(addr247);
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    §§goto(addr245);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 addr1293:
                                                                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    §§goto(addr1295);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 §§pop().blue = §§pop();
                                                                                                                                                                                                                                                                                                                                 §§goto(addr301);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              addr301:
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§goto(addr232);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§goto(addr152);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     continue loop146;
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  continue loop78;
                                                                                                                                                                                                                                                                                                                  addr84:
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr1309);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr862);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr84);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      return;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   if(!(_loc14_ || _loc3_))
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      continue loop110;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   if(!_loc13_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(!_loc13_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         if(_loc14_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§push(this.§-!>§);
                                                                                                                                                                                                                                                                                                            loop76:
                                                                                                                                                                                                                                                                                                            while(_loc14_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               if(_loc14_ || param1)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  if(§§pop())
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     continue loop110;
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  continue loop77;
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               addr1295:
                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  if(§§pop())
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        if(_loc14_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
                                                                                                                                                                                                                                                                                                                           while(!(_loc13_ && _loc3_))
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              §§push(_loc3_);
                                                                                                                                                                                                                                                                                                                              §§push(_loc3_.radius);
                                                                                                                                                                                                                                                                                                                              if(_loc14_)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 §§push(_loc3_.radiusDelta);
                                                                                                                                                                                                                                                                                                                                 if(!(_loc13_ && this))
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    addr1282:
                                                                                                                                                                                                                                                                                                                                    §§push(§§pop() * param2);
                                                                                                                                                                                                                                                                                                                                    if(!(_loc13_ && this))
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       addr1279:
                                                                                                                                                                                                                                                                                                                                       §§push(§§pop() * 2);
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    §§pop().radius = §§pop() - §§pop();
                                                                                                                                                                                                                                                                                                                                    loop64:
                                                                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       addr1207:
                                                                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          _loc3_.x = §&!!§ - Math.cos(_loc3_.rotation) * _loc3_.radius;
                                                                                                                                                                                                                                                                                                                                          loop33:
                                                                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             _loc3_.y = §1!0§ - Math.sin(_loc3_.rotation) * _loc3_.radius;
                                                                                                                                                                                                                                                                                                                                             addr1206:
                                                                                                                                                                                                                                                                                                                                             loop34:
                                                                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                §§push(_loc3_.radius);
                                                                                                                                                                                                                                                                                                                                                addr1184:
                                                                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   §§push(this.§=B§);
                                                                                                                                                                                                                                                                                                                                                   addr1186:
                                                                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      if(§§pop() < §§pop())
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         addr1187:
                                                                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            _loc3_.§,b§ = _loc3_.§%!2§;
                                                                                                                                                                                                                                                                                                                                                            addr1191:
                                                                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         addr1187:
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      addr1149:
                                                                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         continue loop72;
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                addr545:
                                                                                                                                                                                                                                                                                                                                                addr544:
                                                                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   if(_loc14_ || param2)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      if(!_loc13_)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         §§push(this.§-!>§);
                                                                                                                                                                                                                                                                                                                                                         if(!_loc13_)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            if(_loc14_)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               if(_loc14_)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  if(!_loc14_)
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     break loop110;
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  §§push(!§§pop());
                                                                                                                                                                                                                                                                                                                                                                  if(_loc14_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     if(_loc13_)
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        break;
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     if(!_loc13_)
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                        if(_loc14_)
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           continue loop75;
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                        continue loop76;
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     continue loop8;
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  continue loop75;
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               continue loop9;
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            continue loop14;
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         continue loop76;
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      continue loop33;
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   continue loop34;
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   §§pop();
                                                                                                                                                                                                                                                                                                                                                   §§goto(addr545);
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          continue loop64;
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    addr1283:
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§goto(addr1279);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §§goto(addr1282);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           continue loop6;
                                                                                                                                                                                                                                                                                                                           addr1309:
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        else
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           addr1343:
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           §§push(this.§-!>§);
                                                                                                                                                                                                                                                                                                                           break loop73;
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     addr1296:
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  else
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     addr1244:
                                                                                                                                                                                                                                                                                                                     _loc3_.rotation += _loc3_.rotationDelta * param2;
                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        §§push(_loc3_);
                                                                                                                                                                                                                                                                                                                        §§push(_loc3_.radius);
                                                                                                                                                                                                                                                                                                                        if(_loc14_ || _loc3_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           §§push(_loc3_.radiusDelta);
                                                                                                                                                                                                                                                                                                                           if(_loc14_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              §§push(§§pop() * param2);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§pop().radius = §§pop();
                                                                                                                                                                                                                                                                                                                        addr1241:
                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§goto(addr1244);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     addr1254:
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr1207);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            continue loop73;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         continue loop51;
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      addr783:
                                                                                                                                                                                                                                                                                                      loop144:
                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         if(!(_loc14_ || this))
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            while(!(_loc13_ && param2))
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  §§push(_loc11_);
                                                                                                                                                                                                                                                                                                                  if(!_loc13_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     if(!_loc14_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        continue loop3;
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§push(-§§pop());
                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        §§push(_loc3_.tangentialAcceleration);
                                                                                                                                                                                                                                                                                                                        addr872:
                                                                                                                                                                                                                                                                                                                        loop134:
                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           if(!(_loc13_ && param2))
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              if(_loc14_)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                 if(_loc14_)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       if(_loc13_)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          continue loop22;
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       if(_loc13_)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          continue loop47;
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       §§goto(addr888);
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    addr884:
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§goto(addr896);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              else
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 §§goto(addr969);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           else
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                 addr937:
                                                                                                                                                                                                                                                                                                                                 addr978:
                                                                                                                                                                                                                                                                                                                                 while(!(_loc13_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       if(_loc14_)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          _loc9_ = §§pop();
                                                                                                                                                                                                                                                                                                                                          break loop88;
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       break;
                                                                                                                                                                                                                                                                                                                                       addr807:
                                                                                                                                                                                                                                                                                                                                       if(!(_loc14_ || param2))
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          continue;
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       §§goto(addr814);
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    continue loop49;
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    _loc8_ = §§pop();
                                                                                                                                                                                                                                                                                                                                    break loop111;
                                                                                                                                                                                                                                                                                                                                    §§goto(addr937);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 continue loop134;
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              addr936:
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr884);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               continue loop144;
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            continue loop48;
                                                                                                                                                                                                                                                                                                            addr910:
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr790);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   else
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         if(_loc13_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            continue loop45;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         if(!_loc13_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§push(_loc3_);
                                                                                                                                                                                                                                                                                                            §§push(_loc3_.velocityY);
                                                                                                                                                                                                                                                                                                            if(_loc14_ || param2)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§push(param2);
                                                                                                                                                                                                                                                                                                               if(!_loc13_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  §§push(this.§'f§);
                                                                                                                                                                                                                                                                                                                  if(_loc14_ || _loc3_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§push(_loc9_);
                                                                                                                                                                                                                                                                                                                     if(_loc14_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        addr624:
                                                                                                                                                                                                                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                        if(!(_loc13_ && this))
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           §§push(_loc11_);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§pop().velocityY = §§pop() + §§pop() * §§pop();
                                                                                                                                                                                                                                                                                                                        break loop78;
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr624);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         else
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§push(param2);
                                                                                                                                                                                                                                                                                                               addr1357:
                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                  break loop19;
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            addr1356:
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      addr661:
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr1187);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                addr437:
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr544);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          break;
                                                                                                                                                                                                                                                                                          if(_loc13_ && param2)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             continue;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr437);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(!§§pop())
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§pop();
                                                                                                                                                                                                                                                                                                §§goto(addr1343);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             addr1342:
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          addr1291:
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             addr1292:
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(§§pop())
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§goto(addr1293);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr1149);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       addr1341:
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr1342);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr544);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(_loc14_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(!§§pop());
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    addr1290:
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 else
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                                       addr1337:
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§push(§§pop());
                                                                                                                                                                                                                                                                                          if(_loc14_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr1341);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    addr1336:
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr1291);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  addr566:
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr1191);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr724);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          continue loop23;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       continue loop4;
                                                                                                                                                                                                                                       addr1073:
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§push(_loc3_.radialAcceleration);
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                       continue loop22;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    addr969:
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(this.§-!>§);
                                                                                                                                                                                                                                    if(_loc14_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(!_loc14_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          break;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§push(!§§pop());
                                                                                                                                                                                                                                       continue loop9;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    continue loop14;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§pop();
                                                                                                                                                                                                                                    §§goto(addr1180);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 addr1180:
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              continue loop24;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr927:
                                                                                                                                                                                                                     if(!(_loc14_ || _loc3_))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        continue;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr936);
                                                                                                                                                                                                                     §§push(_loc3_.radialAcceleration);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr998:
                                                                                                                                                                                                               }
                                                                                                                                                                                                               else
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§goto(addr1296);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1357);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr839);
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr990);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr854);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1004);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr872);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc13_)
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop17;
                                                                                                                                                                                    }
                                                                                                                                                                                    if(!_loc14_)
                                                                                                                                                                                    {
                                                                                                                                                                                       break;
                                                                                                                                                                                    }
                                                                                                                                                                                    _loc12_ = §§pop();
                                                                                                                                                                                    §§goto(addr910);
                                                                                                                                                                                    §§goto(addr478);
                                                                                                                                                                                 }
                                                                                                                                                                                 continue loop5;
                                                                                                                                                                                 addr905:
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr854);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr504);
                                                                                                                                                                        }
                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc3_.skipUpdate);
                                                                                                                                                                              break loop110;
                                                                                                                                                                           }
                                                                                                                                                                           addr1323:
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     break;
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr1336);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  while(_loc14_ || _loc3_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc10_);
                                                                                                                                                                     if(_loc14_)
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc13_)
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr905);
                                                                                                                                                                           §§push(Number(§§pop()));
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1184);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr478);
                                                                                                                                                                  }
                                                                                                                                                                  continue loop15;
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(_loc12_);
                                                                                                                                          if(!(_loc13_ && this))
                                                                                                                                          {
                                                                                                                                             §§goto(addr807);
                                                                                                                                          }
                                                                                                                                          §§goto(addr854);
                                                                                                                                          §§goto(addr896);
                                                                                                                                       }
                                                                                                                                       §§goto(addr872);
                                                                                                                                    }
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(_loc14_)
                                                                                                                                       {
                                                                                                                                          _loc3_.rotation += _loc3_.rotationDelta * param2;
                                                                                                                                          §§goto(addr587);
                                                                                                                                       }
                                                                                                                                       §§goto(addr1283);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(!(_loc13_ && param2))
                                                                                                                                 {
                                                                                                                                    §§push(_loc9_);
                                                                                                                                    if(!(_loc13_ && param2))
                                                                                                                                    {
                                                                                                                                       §§goto(addr927);
                                                                                                                                    }
                                                                                                                                    §§goto(addr937);
                                                                                                                                 }
                                                                                                                                 §§goto(addr1045);
                                                                                                                              }
                                                                                                                              §§goto(addr998);
                                                                                                                           }
                                                                                                                           §§goto(addr937);
                                                                                                                        }
                                                                                                                        §§goto(addr870);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§goto(addr1254);
                                                                                                                  }
                                                                                                                  §§goto(addr1073);
                                                                                                               }
                                                                                                               §§goto(addr1241);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr1021);
                                                                                                      }
                                                                                                      §§goto(addr1186);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       continue loop7;
                                                                                    }
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    continue loop4;
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr566);
                                                               }
                                                            }
                                                            addr1139:
                                                         }
                                                         §§goto(addr1179);
                                                      }
                                                   }
                                                   §§goto(addr1337);
                                                }
                                                continue loop2;
                                             }
                                             §§goto(addr1290);
                                          }
                                       }
                                       §§goto(addr1323);
                                    }
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr1356);
                  }
               }
            }
         }
         §§goto(addr917);
      }
      
      private function §]!K§(param1:XML, param2:Texture) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§'C§ = parseFloat(param1.sourcePositionVariance.attribute("x"));
            loop0:
            while(true)
            {
               this.§=!3§ = parseFloat(param1.sourcePositionVariance.attribute("y"));
               loop1:
               while(true)
               {
                  this.§>!E§ = parseFloat(param1.gravity.attribute("x"));
                  loop2:
                  while(true)
                  {
                     this.§'f§ = parseFloat(param1.gravity.attribute("y"));
                     loop3:
                     while(true)
                     {
                        this.§,8§ = this.§+!^§(param1.emitterType);
                        loop4:
                        while(true)
                        {
                           this.§%d§ = this.§+!^§(param1.maxParticles);
                           loop5:
                           while(true)
                           {
                              this.§]^§ = Math.max(0.01,this.§>!G§(param1.particleLifeSpan));
                              loop6:
                              while(true)
                              {
                                 this.§^O§ = this.§>!G§(param1.particleLifespanVariance);
                                 loop7:
                                 while(true)
                                 {
                                    if(param1.particleInterval.length() != 1)
                                    {
                                       this.§1r§ = 0;
                                       loop8:
                                       while(true)
                                       {
                                          loop9:
                                          while(true)
                                          {
                                             this.§"!@§ = this.§>!G§(param1.startParticleSize);
                                             loop10:
                                             while(true)
                                             {
                                                §§push(this);
                                                §§push(this.§"!@§);
                                                if(!_loc4_)
                                                {
                                                   §§push(param2.height);
                                                   if(_loc3_ || this)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(!(_loc4_ && param2))
                                                      {
                                                         addr655:
                                                         §§push(§§pop() / param2.width);
                                                      }
                                                      §§pop().§43§ = §§pop();
                                                      loop11:
                                                      while(true)
                                                      {
                                                         this.§1!b§ = this.§>!G§(param1.startParticleSizeVariance);
                                                         loop12:
                                                         while(true)
                                                         {
                                                            §§push(this);
                                                            §§push(this.§1!b§);
                                                            if(_loc3_)
                                                            {
                                                               §§push(param2.height);
                                                               if(!_loc4_)
                                                               {
                                                                  addr620:
                                                                  §§push(§§pop() * §§pop());
                                                                  if(_loc3_ || param2)
                                                                  {
                                                                     §§push(param2.width);
                                                                  }
                                                                  §§pop().§-!'§ = §§pop();
                                                                  loop13:
                                                                  while(true)
                                                                  {
                                                                     if(param1.startParticleSizeX.length() == 1)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           this.§"!@§ = this.§>!G§(param1.startParticleSizeX);
                                                                           addr598:
                                                                           while(true)
                                                                           {
                                                                           }
                                                                           addr132:
                                                                           if(_loc4_ && param2)
                                                                           {
                                                                              continue;
                                                                           }
                                                                           §-!9§ = this.§>x§(param1.blendFuncSource);
                                                                           loop60:
                                                                           while(true)
                                                                           {
                                                                              if(!(_loc4_ && this))
                                                                              {
                                                                                 §-w§ = this.§>x§(param1.blendFuncDestination);
                                                                                 loop61:
                                                                                 for(; !_loc4_; while(true)
                                                                                 {
                                                                                    if(!(_loc4_ && param2))
                                                                                    {
                                                                                       continue loop60;
                                                                                    }
                                                                                    continue loop61;
                                                                                 })
                                                                                 {
                                                                                    if(_loc3_)
                                                                                    {
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          §-x§ = this.§3!Q§(param1.textureSmoothing);
                                                                                          loop62:
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc3_ || _loc3_)
                                                                                             {
                                                                                                if(_loc3_)
                                                                                                {
                                                                                                   if(param1.emissionVariance.length != 1)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   if(!_loc4_)
                                                                                                   {
                                                                                                      continue;
                                                                                                   }
                                                                                                   continue loop61;
                                                                                                }
                                                                                                loop50:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!_loc4_)
                                                                                                   {
                                                                                                      if(!_loc3_)
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      this.§<!c§ = this.§>!G§(param1.maxRadius);
                                                                                                      loop51:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(_loc3_ || _loc3_)
                                                                                                         {
                                                                                                            addr267:
                                                                                                            if(!(_loc4_ && param1))
                                                                                                            {
                                                                                                               if(!_loc3_)
                                                                                                               {
                                                                                                                  break;
                                                                                                               }
                                                                                                               this.§]!4§ = this.§>!G§(param1.maxRadiusVariance);
                                                                                                               loop52:
                                                                                                               while(_loc3_)
                                                                                                               {
                                                                                                                  this.§=B§ = this.§>!G§(param1.minRadius);
                                                                                                                  loop53:
                                                                                                                  while(!_loc4_)
                                                                                                                  {
                                                                                                                     this.§5!%§ = deg2rad(this.§>!G§(param1.rotatePerSecond));
                                                                                                                     while(!_loc4_)
                                                                                                                     {
                                                                                                                        if(!_loc4_)
                                                                                                                        {
                                                                                                                           addr223:
                                                                                                                           if(!(_loc4_ && _loc3_))
                                                                                                                           {
                                                                                                                              if(_loc3_)
                                                                                                                              {
                                                                                                                                 this.§@G§ = deg2rad(this.§>!G§(param1.rotatePerSecondVariance));
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    this.§#!A§ = this.§<X§(param1.startColor);
                                                                                                                                    addr199:
                                                                                                                                    addr69:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       this.§8!A§ = this.§<X§(param1.startColorVariance);
                                                                                                                                       break loop61;
                                                                                                                                    }
                                                                                                                                    if(_loc3_ || _loc3_)
                                                                                                                                    {
                                                                                                                                       break loop62;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 while(_loc3_)
                                                                                                                                 {
                                                                                                                                    this.§=!I§ = deg2rad(this.§>!G§(param1.angleVariance));
                                                                                                                                 }
                                                                                                                                 continue loop3;
                                                                                                                                 addr352:
                                                                                                                              }
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(_loc3_)
                                                                                                                              {
                                                                                                                                 if(!_loc3_)
                                                                                                                                 {
                                                                                                                                    break;
                                                                                                                                 }
                                                                                                                                 if(_loc4_)
                                                                                                                                 {
                                                                                                                                    continue loop8;
                                                                                                                                 }
                                                                                                                                 this.§-]§ = this.§>!G§(param1.speed);
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    this.§=O§ = this.§>!G§(param1.speedVariance);
                                                                                                                                    loop48:
                                                                                                                                    while(_loc3_ || _loc3_)
                                                                                                                                    {
                                                                                                                                       this.§?!_§ = this.§>!G§(param1.radialAcceleration);
                                                                                                                                       while(!(_loc4_ && param2))
                                                                                                                                       {
                                                                                                                                          this.§5!e§ = this.§>!G§(param1.tangentialAcceleration);
                                                                                                                                          continue loop50;
                                                                                                                                       }
                                                                                                                                       continue loop5;
                                                                                                                                       while(!(_loc4_ && param2))
                                                                                                                                       {
                                                                                                                                          if(!_loc4_)
                                                                                                                                          {
                                                                                                                                             addr156:
                                                                                                                                             if(!(_loc4_ && _loc3_))
                                                                                                                                             {
                                                                                                                                                addr163:
                                                                                                                                                if(_loc3_ || param1)
                                                                                                                                                {
                                                                                                                                                   if(!_loc4_)
                                                                                                                                                   {
                                                                                                                                                      this.§^7§ = this.§<X§(param1.finishColorVariance);
                                                                                                                                                      while(!_loc4_)
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr132);
                                                                                                                                                         continue loop62;
                                                                                                                                                      }
                                                                                                                                                      continue;
                                                                                                                                                      addr130:
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      addr579:
                                                                                                                                                   }
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      this.§1!b§ = this.§>!G§(param1.startParticleSizeVarianceX);
                                                                                                                                                      addr585:
                                                                                                                                                      loop18:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         addr553:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(param1.startParticleSizeY.length() == 1)
                                                                                                                                                            {
                                                                                                                                                               break loop53;
                                                                                                                                                            }
                                                                                                                                                            addr536:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(param1.startParticleSizeVarianceY.length() == 1)
                                                                                                                                                               {
                                                                                                                                                                  while(_loc3_)
                                                                                                                                                                  {
                                                                                                                                                                     if(!_loc3_)
                                                                                                                                                                     {
                                                                                                                                                                        continue loop2;
                                                                                                                                                                     }
                                                                                                                                                                     this.§-!'§ = this.§>!G§(param1.startParticleSizeVarianceY);
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr598);
                                                                                                                                                                  addr542:
                                                                                                                                                               }
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(param1.finishParticleSize.length() != 1)
                                                                                                                                                                  {
                                                                                                                                                                     loop29:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(param1.FinishParticleSizeVariance.length() == 1)
                                                                                                                                                                        {
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              this.§]=§ = this.§>!G§(param1.FinishParticleSizeVariance);
                                                                                                                                                                              break loop48;
                                                                                                                                                                              §§goto(addr267);
                                                                                                                                                                           }
                                                                                                                                                                           addr470:
                                                                                                                                                                        }
                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              if(param1.finishParticleSizeX.length() == 1)
                                                                                                                                                                              {
                                                                                                                                                                                 while(_loc3_)
                                                                                                                                                                                 {
                                                                                                                                                                                    this.§#!>§ = this.§>!G§(param1.finishParticleSizeX);
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr156);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 continue loop0;
                                                                                                                                                                                 addr430:
                                                                                                                                                                              }
                                                                                                                                                                              loop36:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(param1.FinishParticleSizeVarianceX.length() == 1)
                                                                                                                                                                                 {
                                                                                                                                                                                    while(!_loc4_)
                                                                                                                                                                                    {
                                                                                                                                                                                       this.§]=§ = this.§>!G§(param1.FinishParticleSizeVarianceX);
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!_loc3_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§goto(addr430);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       continue loop36;
                                                                                                                                                                                    }
                                                                                                                                                                                    continue loop29;
                                                                                                                                                                                    addr413:
                                                                                                                                                                                 }
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(param1.finishParticleSizeY.length() == 1)
                                                                                                                                                                                    {
                                                                                                                                                                                       break loop60;
                                                                                                                                                                                    }
                                                                                                                                                                                    loop42:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(param1.FinishParticleSizeVarianceY.length() == 1)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!(_loc4_ && param1))
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!_loc3_)
                                                                                                                                                                                             {
                                                                                                                                                                                                break;
                                                                                                                                                                                             }
                                                                                                                                                                                             this.§6U§ = this.§>!G§(param1.FinishParticleSizeVarianceY);
                                                                                                                                                                                          }
                                                                                                                                                                                          continue loop5;
                                                                                                                                                                                       }
                                                                                                                                                                                       addr343:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          this.§<!K§ = deg2rad(this.§>!G§(param1.angle));
                                                                                                                                                                                          §§goto(addr352);
                                                                                                                                                                                       }
                                                                                                                                                                                       addr406:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop42;
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    continue loop4;
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           addr424:
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr552);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            continue loop18;
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                loop26:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(_loc3_)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc4_)
                                                                                                                                                      {
                                                                                                                                                         this.§#!>§ = this.§>!G§(param1.finishParticleSize);
                                                                                                                                                         continue loop3;
                                                                                                                                                      }
                                                                                                                                                      addr679:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         this.§1r§ = this.§>!G§(param1.particleInterval);
                                                                                                                                                         break loop26;
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr585);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr163);
                                                                                                                                                }
                                                                                                                                                while(!_loc4_)
                                                                                                                                                {
                                                                                                                                                   continue loop9;
                                                                                                                                                }
                                                                                                                                                continue loop7;
                                                                                                                                                addr685:
                                                                                                                                             }
                                                                                                                                             §§goto(addr438);
                                                                                                                                          }
                                                                                                                                          §§goto(addr421);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    continue loop13;
                                                                                                                                    addr40:
                                                                                                                                    if(!(_loc3_ || _loc3_))
                                                                                                                                    {
                                                                                                                                       continue;
                                                                                                                                    }
                                                                                                                                    if(!_loc4_)
                                                                                                                                    {
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §4!F§ = this.§>!G§(param1.emissionVariance);
                                                                                                                                          continue loop61;
                                                                                                                                       }
                                                                                                                                       addr49:
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       §§goto(addr685);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 §§goto(addr413);
                                                                                                                              }
                                                                                                                              §§goto(addr223);
                                                                                                                           }
                                                                                                                           continue loop10;
                                                                                                                        }
                                                                                                                        continue loop51;
                                                                                                                     }
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     this.§43§ = this.§>!G§(param1.startParticleSizeY);
                                                                                                                     break loop52;
                                                                                                                  }
                                                                                                                  if(!(_loc3_ || param1))
                                                                                                                  {
                                                                                                                     continue;
                                                                                                                  }
                                                                                                                  if(!_loc4_)
                                                                                                                  {
                                                                                                                     this.§^U§ = this.§<X§(param1.finishColor);
                                                                                                                     §§goto(addr147);
                                                                                                                  }
                                                                                                                  §§goto(addr542);
                                                                                                               }
                                                                                                               continue loop6;
                                                                                                            }
                                                                                                            §§goto(addr470);
                                                                                                         }
                                                                                                         §§goto(addr406);
                                                                                                      }
                                                                                                      continue loop1;
                                                                                                   }
                                                                                                   addr461:
                                                                                                   while(!_loc4_)
                                                                                                   {
                                                                                                   }
                                                                                                   §§goto(addr552);
                                                                                                   §§goto(addr424);
                                                                                                }
                                                                                                continue loop11;
                                                                                             }
                                                                                             §§goto(addr130);
                                                                                          }
                                                                                          return;
                                                                                       }
                                                                                       continue loop12;
                                                                                    }
                                                                                    §§goto(addr199);
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       §§goto(addr182);
                                                                                    }
                                                                                    §§goto(addr219);
                                                                                 }
                                                                                 §§goto(addr421);
                                                                              }
                                                                              break;
                                                                              if(_loc4_ && param2)
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              §§goto(addr69);
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              this.§,!3§ = this.§>!G§(param1.finishParticleSizeY);
                                                                              §§goto(addr406);
                                                                              §§goto(addr115);
                                                                           }
                                                                           addr115:
                                                                        }
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        if(param1.startParticleSizeVarianceX.length() == 1)
                                                                        {
                                                                           §§goto(addr579);
                                                                        }
                                                                        §§goto(addr553);
                                                                        §§goto(addr598);
                                                                     }
                                                                  }
                                                               }
                                                               §§push(§§pop() / §§pop());
                                                            }
                                                            §§goto(addr620);
                                                         }
                                                      }
                                                   }
                                                }
                                                §§goto(addr655);
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr679);
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr49);
      }
      
      protected function §+!^§(param1:XMLList) : int
      {
         return parseInt(param1.attribute("value"));
      }
      
      protected function §>!G§(param1:XMLList) : Number
      {
         return parseFloat(param1.attribute("value"));
      }
      
      protected function §[,§(param1:XMLList) : String
      {
         return param1.attribute("value");
      }
      
      protected function §<X§(param1:XMLList) : ColorArgb
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:ColorArgb = new ColorArgb();
         if(_loc3_)
         {
            _loc2_.red = parseFloat(param1.attribute("red"));
            while(true)
            {
               _loc2_.green = parseFloat(param1.attribute("green"));
               while(!_loc4_)
               {
                  _loc2_.blue = parseFloat(param1.attribute("blue"));
                  do
                  {
                     _loc2_.alpha = parseFloat(param1.attribute("alpha"));
                  }
                  while(!(_loc3_ || param1));
                  
                  if(_loc3_ || this)
                  {
                     return _loc2_;
                     addr70:
                  }
               }
            }
         }
         §§goto(addr70);
      }
      
      protected function §>x§(param1:XMLList) : String
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(this.§+!^§(param1));
         if(_loc4_ || param1)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(_loc2_);
         if(!(_loc5_ && param1))
         {
            var _loc3_:* = §§pop();
            if(_loc4_)
            {
               §§push(0);
               if(!(_loc5_ && _loc3_))
               {
                  §§push(_loc3_);
                  if(!_loc5_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!_loc5_)
                        {
                           §§push(0);
                           if(_loc5_ && param1)
                           {
                              addr367:
                           }
                        }
                        else
                        {
                           addr401:
                           §§push(10);
                           if(!_loc5_)
                           {
                              addr404:
                           }
                        }
                     }
                     else
                     {
                        §§push(1);
                        if(!(_loc5_ && _loc3_))
                        {
                           §§push(_loc3_);
                           if(_loc4_)
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(!(_loc5_ && this))
                                 {
                                    §§push(1);
                                    if(!_loc5_)
                                    {
                                       addr406:
                                       switch(§§pop())
                                       {
                                          case 0:
                                             return Context3DBlendFactor.ZERO;
                                          case 1:
                                             return Context3DBlendFactor.ONE;
                                          case 2:
                                             return Context3DBlendFactor.SOURCE_COLOR;
                                          case 3:
                                             return Context3DBlendFactor.ONE_MINUS_SOURCE_COLOR;
                                          case 4:
                                             return Context3DBlendFactor.SOURCE_ALPHA;
                                          case 5:
                                             return Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
                                          case 6:
                                             return Context3DBlendFactor.DESTINATION_ALPHA;
                                          case 7:
                                             return Context3DBlendFactor.ONE_MINUS_DESTINATION_ALPHA;
                                          case 8:
                                             return Context3DBlendFactor.DESTINATION_COLOR;
                                          case 9:
                                             return Context3DBlendFactor.ONE_MINUS_DESTINATION_COLOR;
                                          default:
                                             throw new ArgumentError("unsupported blending function: " + _loc2_);
                                       }
                                       addr406:
                                    }
                                    else
                                    {
                                       addr307:
                                       §§push(_loc3_);
                                       if(_loc4_)
                                       {
                                          if(§§pop() === §§pop())
                                          {
                                             if(!(_loc5_ && this))
                                             {
                                                §§push(6);
                                                if(_loc4_ || param1)
                                                {
                                                   addr326:
                                                   §§goto(addr406);
                                                }
                                                else
                                                {
                                                   §§goto(addr367);
                                                }
                                             }
                                             else
                                             {
                                                §§goto(addr401);
                                             }
                                          }
                                          else
                                          {
                                             §§push(773);
                                             if(!_loc5_)
                                             {
                                                addr330:
                                                §§push(_loc3_);
                                                if(!_loc5_)
                                                {
                                                   addr333:
                                                   if(§§pop() === §§pop())
                                                   {
                                                      if(_loc4_ || _loc2_)
                                                      {
                                                         §§push(7);
                                                         if(!_loc4_)
                                                         {
                                                            addr381:
                                                            if(§§pop() === _loc3_)
                                                            {
                                                               if(_loc4_ || _loc3_)
                                                               {
                                                                  addr390:
                                                                  §§push(9);
                                                                  if(_loc4_ || _loc3_)
                                                                  {
                                                                     addr398:
                                                                  }
                                                               }
                                                            }
                                                            else if(true)
                                                            {
                                                               §§goto(addr406);
                                                               §§push(10);
                                                            }
                                                         }
                                                      }
                                                      else
                                                      {
                                                         addr359:
                                                         §§push(8);
                                                         if(_loc4_ || _loc2_)
                                                         {
                                                            §§goto(addr367);
                                                         }
                                                      }
                                                      §§goto(addr406);
                                                   }
                                                   else
                                                   {
                                                      §§push(774);
                                                      if(!_loc5_)
                                                      {
                                                         §§push(_loc3_);
                                                         if(_loc4_ || _loc2_)
                                                         {
                                                            addr356:
                                                            if(§§pop() === §§pop())
                                                            {
                                                               if(!_loc5_)
                                                               {
                                                                  §§goto(addr359);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr401);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§push(775);
                                                               if(!_loc5_)
                                                               {
                                                                  §§goto(addr381);
                                                               }
                                                            }
                                                            §§goto(addr404);
                                                         }
                                                         §§goto(addr381);
                                                      }
                                                      §§goto(addr398);
                                                   }
                                                }
                                                §§goto(addr381);
                                             }
                                          }
                                          §§goto(addr406);
                                       }
                                       §§goto(addr333);
                                    }
                                 }
                                 else
                                 {
                                    addr259:
                                    §§push(3);
                                    if(_loc5_)
                                    {
                                    }
                                 }
                                 §§goto(addr406);
                              }
                              else
                              {
                                 §§push(768);
                                 if(!(_loc5_ && _loc2_))
                                 {
                                    §§push(_loc3_);
                                    if(!(_loc5_ && param1))
                                    {
                                       if(§§pop() === §§pop())
                                       {
                                          if(_loc4_ || param1)
                                          {
                                             §§push(2);
                                             if(!(_loc5_ && _loc2_))
                                             {
                                                §§goto(addr406);
                                             }
                                             else
                                             {
                                                addr284:
                                                §§push(_loc3_);
                                                if(_loc4_)
                                                {
                                                   addr287:
                                                   if(§§pop() === §§pop())
                                                   {
                                                      if(_loc4_)
                                                      {
                                                         addr290:
                                                         §§push(5);
                                                         if(_loc5_ && _loc3_)
                                                         {
                                                         }
                                                         §§goto(addr406);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr390);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§push(772);
                                                      if(_loc4_ || _loc2_)
                                                      {
                                                         §§goto(addr307);
                                                      }
                                                   }
                                                   §§goto(addr367);
                                                }
                                                §§goto(addr333);
                                             }
                                          }
                                          §§goto(addr390);
                                       }
                                       else
                                       {
                                          §§push(769);
                                          if(!_loc5_)
                                          {
                                             §§push(_loc3_);
                                             if(_loc5_)
                                             {
                                             }
                                             §§goto(addr381);
                                          }
                                          §§goto(addr326);
                                       }
                                    }
                                    if(§§pop() === §§pop())
                                    {
                                       if(_loc4_ || param1)
                                       {
                                          §§goto(addr259);
                                       }
                                       else
                                       {
                                          §§goto(addr290);
                                       }
                                    }
                                    else
                                    {
                                       §§push(770);
                                       if(_loc4_)
                                       {
                                          §§push(_loc3_);
                                          if(!_loc5_)
                                          {
                                             if(§§pop() === §§pop())
                                             {
                                                if(_loc4_)
                                                {
                                                   §§push(4);
                                                   if(_loc5_ && _loc3_)
                                                   {
                                                   }
                                                   §§goto(addr406);
                                                }
                                                else
                                                {
                                                   §§goto(addr290);
                                                }
                                             }
                                             else
                                             {
                                                §§push(771);
                                                if(!_loc5_)
                                                {
                                                   §§goto(addr284);
                                                }
                                             }
                                             §§goto(addr367);
                                          }
                                          §§goto(addr287);
                                       }
                                       §§goto(addr284);
                                    }
                                    §§goto(addr333);
                                 }
                              }
                              §§goto(addr326);
                           }
                           §§goto(addr381);
                        }
                        §§goto(addr398);
                     }
                     §§goto(addr406);
                  }
                  §§goto(addr356);
               }
               §§goto(addr307);
            }
            §§goto(addr290);
         }
         §§goto(addr406);
      }
      
      protected function §3!Q§(param1:XMLList) : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(this.§[,§(param1));
         if(_loc3_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(_loc3_)
         {
            §§push(_loc2_);
            loop0:
            while(true)
            {
               §§push(§&!A§.§^Z§);
               loop1:
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  while(true)
                  {
                     §§push(Boolean(§§pop()));
                     while(true)
                     {
                        §§push(§§pop());
                        if(_loc3_ || _loc2_)
                        {
                           §§push(Boolean(§§pop()));
                        }
                        loop4:
                        while(true)
                        {
                           if(§§pop())
                           {
                              continue;
                           }
                           while(true)
                           {
                              §§pop();
                              addr166:
                              while(true)
                              {
                                 §§push(_loc2_);
                                 addr113:
                                 while(true)
                                 {
                                    if(_loc4_)
                                    {
                                       continue loop0;
                                    }
                                    §§push(§&!A§.§?k§);
                                    while(true)
                                    {
                                       if(_loc4_ && _loc3_)
                                       {
                                          continue loop1;
                                       }
                                       §§push(§§pop() == §§pop());
                                       while(true)
                                       {
                                          §§push(Boolean(§§pop()));
                                          continue loop4;
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr101);
      }
   }
}

import §^s§.§#-§;

class PDParticle extends §#-§
{
    
   
   public var colorArgb:ColorArgb;
   
   public var colorArgbDelta:ColorArgb;
   
   public var startX:Number;
   
   public var startY:Number;
   
   public var velocityX:Number;
   
   public var velocityY:Number;
   
   public var radialAcceleration:Number;
   
   public var tangentialAcceleration:Number;
   
   public var radius:Number;
   
   public var radiusDelta:Number;
   
   public var rotationDelta:Number;
   
   public var scaleDeltaX:Number;
   
   public var scaleDeltaY:Number;
   
   public var skipUpdate:Boolean;
   
   function PDParticle()
   {
      super();
      this.colorArgb = new ColorArgb();
      this.colorArgbDelta = new ColorArgb();
   }
}

class ColorArgb
{
    
   
   public var alpha:Number = 0.0;
   
   public var red:Number;
   
   public var green:Number;
   
   public var blue:Number;
   
   function ColorArgb()
   {
      super();
   }
   
   public function toRgb() : uint
   {
      return int(this.red * 255) << 16 | int(this.green * 255) << 8 | int(this.blue * 255);
   }
}
