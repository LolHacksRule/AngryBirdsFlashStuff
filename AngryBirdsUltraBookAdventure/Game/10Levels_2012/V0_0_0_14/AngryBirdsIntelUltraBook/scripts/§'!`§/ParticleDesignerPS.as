package §'!`§
{
   import §!!9§.§4!'§;
   import §!!9§.Texture;
   import §2N§.deg2rad;
   import flash.display3D.Context3DBlendFactor;
   
   public class ParticleDesignerPS extends §`!J§
   {
       
      
      private const §2!i§:int = 0;
      
      private const §&!<§:int = 1;
      
      private var §>!=§:Number;
      
      private var §'!Y§:int;
      
      private var §3!y§:Number;
      
      private var §=i§:Number;
      
      private var §[!u§:int;
      
      private var §1!§:Number;
      
      private var §8!L§:Number;
      
      private var native:Number;
      
      private var §4!i§:Number;
      
      private var §@H§:Number;
      
      private var §-Z§:Number;
      
      private var §!!J§:Number;
      
      private var §"7§:Number;
      
      private var §?!A§:Number;
      
      private var §1v§:Number;
      
      private var §#5§:Number;
      
      private var §0!7§:Number;
      
      private var §3I§:Number;
      
      private var §9j§:Number;
      
      private var §[!R§:Number;
      
      private var §>U§:Number;
      
      private var §'h§:Number;
      
      private var §'!C§:Number;
      
      private var §!!=§:Number;
      
      private var §;&§:Number;
      
      private var §[!t§:Number;
      
      private var §#!_§:Number;
      
      private var §^n§:Number;
      
      private var §+!l§:Number;
      
      private var §=!4§:Number;
      
      private var §9!"§:Number;
      
      private var §%%§:ColorArgb;
      
      private var §4!U§:ColorArgb;
      
      private var §+!G§:ColorArgb;
      
      private var §&q§:ColorArgb;
      
      public function ParticleDesignerPS(param1:XML, param2:Texture)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param2)
         {
            this.§-O§(param1,param2);
         }
         §§push(this.§[!u§);
         §§push(this.§1!§);
         if(_loc4_ || param2)
         {
            §§push(§§pop() + this.native);
         }
         §§push(§§pop() / §§pop());
         if(!(_loc5_ && param2))
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(_loc4_ || _loc3_)
         {
            super(param2,_loc3_,this.§[!u§,§0!l§,§7e§);
         }
         do
         {
            §5N§ = false;
         }
         while(!_loc4_);
         
      }
      
      public function get §&J§() : int
      {
         return this.§[!u§;
      }
      
      override protected function createParticle() : §+A§
      {
         return new PDParticle();
      }
      
      private function get §-?§() : Boolean
      {
         return this.§&J§ >= 20;
      }
      
      override protected function initParticle(param1:§+A§) : void
      {
         var _loc17_:Boolean = false;
         var _loc18_:Boolean = true;
         var _loc2_:PDParticle = null;
         var _loc3_:* = NaN;
         _loc2_ = param1 as PDParticle;
         if(!_loc17_)
         {
            §§push(this.§1!§);
            if(!(_loc17_ && param1))
            {
               §§push(this.§8!L§);
               if(!_loc17_)
               {
                  §§push(Math.random() * 2);
                  if(_loc18_ || this)
                  {
                     §§push(§§pop() - 1);
                     if(_loc18_ || param1)
                     {
                        §§push(§§pop() * §§pop());
                        if(_loc18_ || this)
                        {
                           §§push(§§pop() + §§pop());
                           if(_loc18_ || _loc3_)
                           {
                              §§push(Number(§§pop()));
                              loop0:
                              while(true)
                              {
                                 _loc3_ = §§pop();
                                 loop1:
                                 while(true)
                                 {
                                    §§push(_loc3_);
                                    if(!(_loc17_ && this))
                                    {
                                       if(_loc17_)
                                       {
                                          continue loop0;
                                       }
                                       §§push(0);
                                       if(_loc18_)
                                       {
                                          if(§§pop() > §§pop())
                                          {
                                             while(true)
                                             {
                                                _loc2_.alpha = 0;
                                                loop3:
                                                while(!_loc17_)
                                                {
                                                   _loc2_.§&a§ = 0;
                                                   while(true)
                                                   {
                                                      _loc2_.§9!t§ = _loc3_;
                                                      while(!_loc17_)
                                                      {
                                                         if(_loc17_)
                                                         {
                                                            continue loop1;
                                                         }
                                                         _loc2_.x = §3!m§ + this.§3!y§ * (Math.random() * 2 - 1);
                                                         while(true)
                                                         {
                                                            _loc2_.y = §0!^§ + this.§=i§ * (Math.random() * 2 - 1);
                                                            addr82:
                                                            loop38:
                                                            while(true)
                                                            {
                                                               addr50:
                                                               while(true)
                                                               {
                                                                  _loc2_.startX = §3!m§;
                                                                  continue loop38;
                                                               }
                                                            }
                                                         }
                                                         if(!(_loc18_ || this))
                                                         {
                                                            continue;
                                                         }
                                                         _loc2_.startY = §0!^§;
                                                         if(!(_loc17_ && _loc3_))
                                                         {
                                                            if(_loc18_)
                                                            {
                                                               if(!_loc17_)
                                                               {
                                                                  if(!_loc17_)
                                                                  {
                                                                     if(false)
                                                                     {
                                                                        §§goto(addr50);
                                                                     }
                                                                     §§push(this.§0!7§);
                                                                     if(_loc18_ || _loc2_)
                                                                     {
                                                                        addr212:
                                                                        §§push(this.§3I§);
                                                                        if(_loc18_)
                                                                        {
                                                                           addr199:
                                                                           §§push(Math.random() * 2);
                                                                           if(!(_loc17_ && _loc2_))
                                                                           {
                                                                              addr210:
                                                                              §§push(§§pop() - 1);
                                                                           }
                                                                           §§push(§§pop() * §§pop());
                                                                        }
                                                                        §§push(§§pop() + §§pop());
                                                                        if(!_loc17_)
                                                                        {
                                                                           addr215:
                                                                           §§push(Number(§§pop()));
                                                                           break loop1;
                                                                        }
                                                                        break loop1;
                                                                     }
                                                                     §§goto(addr215);
                                                                  }
                                                                  §§goto(addr133);
                                                               }
                                                               continue loop3;
                                                            }
                                                            §§goto(addr96);
                                                         }
                                                         §§goto(addr54);
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          addr133:
                                          return;
                                       }
                                       §§goto(addr212);
                                    }
                                    break;
                                 }
                                 addr216:
                                 var _loc4_:* = §§pop();
                                 §§push(this.§9j§);
                                 if(_loc18_)
                                 {
                                    §§push(this.§[!R§);
                                    if(!(_loc17_ && _loc2_))
                                    {
                                       §§push(Math.random() * 2);
                                       if(_loc18_ || _loc2_)
                                       {
                                          §§push(§§pop() - 1);
                                       }
                                       §§push(§§pop() * §§pop());
                                    }
                                    §§push(§§pop() + §§pop());
                                    if(!_loc17_)
                                    {
                                       §§push(Number(§§pop()));
                                    }
                                 }
                                 var _loc5_:* = §§pop();
                                 if(_loc18_)
                                 {
                                    §§push(_loc2_);
                                    §§push(_loc5_);
                                    if(_loc18_ || _loc3_)
                                    {
                                       §§push(§§pop() * Math.cos(_loc4_));
                                    }
                                    §§pop().velocityX = §§pop();
                                    loop7:
                                    while(true)
                                    {
                                       §§push(_loc2_);
                                       §§push(_loc5_);
                                       if(!(_loc17_ && _loc3_))
                                       {
                                          §§push(§§pop() * -Math.sin(_loc4_));
                                       }
                                       §§pop().velocityY = §§pop();
                                       while(true)
                                       {
                                          §§push(_loc2_);
                                          §§push(this.§#!_§);
                                          if(_loc18_)
                                          {
                                             §§push(this.§^n§);
                                             if(_loc18_ || this)
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
                                          §§pop().radius = §§pop();
                                          addr396:
                                          while(_loc18_)
                                          {
                                             continue loop7;
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr272);
                              }
                           }
                           §§goto(addr215);
                        }
                     }
                     §§goto(addr199);
                  }
                  §§goto(addr210);
               }
               §§goto(addr199);
            }
            §§goto(addr216);
         }
         §§goto(addr82);
      }
      
      override protected function advanceParticle(param1:§+A§, param2:Number) : void
      {
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = true;
         var _loc5_:* = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         var _loc12_:* = NaN;
         var _loc3_:PDParticle = param1 as PDParticle;
         §§push(_loc3_.§9!t§ - _loc3_.§&a§);
         if(_loc14_ || param2)
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:*;
         §§push(_loc4_ = §§pop());
         if(_loc14_ || param2)
         {
            §§push(param2);
            if(!_loc13_)
            {
               §§push(§§pop() > §§pop());
               if(!_loc13_)
               {
                  if(§§pop())
                  {
                     if(!_loc13_)
                     {
                        §§push(param2);
                        if(_loc14_ || param1)
                        {
                           §§push(Number(§§pop()));
                           if(_loc14_ || this)
                           {
                              addr93:
                              §§push(Number(§§pop()));
                              if(_loc14_ || _loc3_)
                              {
                                 param2 = §§pop();
                                 if(!_loc13_)
                                 {
                                    _loc3_.§&a§ += param2;
                                    loop0:
                                    while(true)
                                    {
                                       if(this.§'!Y§ != this.§&!<§)
                                       {
                                          §§push(_loc3_.skipUpdate);
                                          loop1:
                                          while(true)
                                          {
                                             if(!(_loc13_ && param2))
                                             {
                                                if(_loc14_ || this)
                                                {
                                                   while(true)
                                                   {
                                                      §§push(!§§pop());
                                                      loop138:
                                                      while(true)
                                                      {
                                                         §§push(§§pop());
                                                         loop139:
                                                         while(true)
                                                         {
                                                            if(!_loc13_)
                                                            {
                                                               if(!§§pop())
                                                               {
                                                                  loop140:
                                                                  while(true)
                                                                  {
                                                                     if(_loc14_)
                                                                     {
                                                                        §§pop();
                                                                     }
                                                                     else
                                                                     {
                                                                        loop66:
                                                                        while(true)
                                                                        {
                                                                           §§push(!§§pop());
                                                                           if(_loc14_ || param2)
                                                                           {
                                                                              loop4:
                                                                              while(true)
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    loop5:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(this.§-?§);
                                                                                       addr1353:
                                                                                       loop6:
                                                                                       while(true)
                                                                                       {
                                                                                          if(!§§pop())
                                                                                          {
                                                                                             _loc3_.rotation += _loc3_.rotationDelta * param2;
                                                                                             loop7:
                                                                                             while(true)
                                                                                             {
                                                                                                if(!_loc13_)
                                                                                                {
                                                                                                   §§push(_loc3_);
                                                                                                   §§push(_loc3_.radius);
                                                                                                   if(_loc14_ || param1)
                                                                                                   {
                                                                                                      §§push(_loc3_.radiusDelta);
                                                                                                      if(_loc14_ || param2)
                                                                                                      {
                                                                                                         §§push(§§pop() * param2);
                                                                                                      }
                                                                                                      §§push(§§pop() - §§pop());
                                                                                                   }
                                                                                                   §§pop().radius = §§pop();
                                                                                                   loop8:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      loop9:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         _loc3_.x = §3!m§ - Math.cos(_loc3_.rotation) * _loc3_.radius;
                                                                                                         loop10:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            _loc3_.y = §0!^§ - Math.sin(_loc3_.rotation) * _loc3_.radius;
                                                                                                            loop11:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc3_.radius);
                                                                                                               loop12:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(this.§+!l§);
                                                                                                                  loop13:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(§§pop() < §§pop())
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           _loc3_.§&a§ = _loc3_.§9!t§;
                                                                                                                           loop15:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(!(_loc13_ && param1))
                                                                                                                              {
                                                                                                                                 if(!(_loc13_ && _loc3_))
                                                                                                                                 {
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       addr1195:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          loop20:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(_loc3_.skipUpdate);
                                                                                                                                             if(!_loc13_)
                                                                                                                                             {
                                                                                                                                                if(_loc14_ || param1)
                                                                                                                                                {
                                                                                                                                                   if(_loc13_)
                                                                                                                                                   {
                                                                                                                                                      continue loop6;
                                                                                                                                                   }
                                                                                                                                                   §§push(!§§pop());
                                                                                                                                                   loop21:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(_loc13_ && param2)
                                                                                                                                                      {
                                                                                                                                                         break loop7;
                                                                                                                                                      }
                                                                                                                                                      §§push(§§pop());
                                                                                                                                                      if(!(_loc14_ || param2))
                                                                                                                                                      {
                                                                                                                                                         continue loop139;
                                                                                                                                                      }
                                                                                                                                                      if(!§§pop())
                                                                                                                                                      {
                                                                                                                                                         loop63:
                                                                                                                                                         while(_loc14_)
                                                                                                                                                         {
                                                                                                                                                            §§pop();
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(_loc14_ || param2)
                                                                                                                                                               {
                                                                                                                                                                  if(!(_loc14_ || param1))
                                                                                                                                                                  {
                                                                                                                                                                     continue loop11;
                                                                                                                                                                  }
                                                                                                                                                                  §§push(this.§-?§);
                                                                                                                                                                  if(!_loc13_)
                                                                                                                                                                  {
                                                                                                                                                                     if(!(_loc14_ || _loc3_))
                                                                                                                                                                     {
                                                                                                                                                                        continue loop140;
                                                                                                                                                                     }
                                                                                                                                                                     if(!(_loc14_ || param2))
                                                                                                                                                                     {
                                                                                                                                                                        continue loop138;
                                                                                                                                                                     }
                                                                                                                                                                     §§push(!§§pop());
                                                                                                                                                                     if(_loc14_)
                                                                                                                                                                     {
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(§§pop())
                                                                                                                                                                           {
                                                                                                                                                                              loop23:
                                                                                                                                                                              while(_loc14_ || _loc3_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!(_loc13_ && param2))
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(this.§-?§);
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!_loc14_)
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop63;
                                                                                                                                                                                       }
                                                                                                                                                                                       if(_loc13_)
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop21;
                                                                                                                                                                                       }
                                                                                                                                                                                       if(_loc14_ || param2)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(§§pop())
                                                                                                                                                                                          {
                                                                                                                                                                                             loop25:
                                                                                                                                                                                             while(!_loc13_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(param2);
                                                                                                                                                                                                if(_loc14_ || param1)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc14_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!_loc13_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop() * 2);
                                                                                                                                                                                                            if(_loc14_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc14_ || param1)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(Number(§§pop()));
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc14_ || param2)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!_loc13_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(!_loc13_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(!(_loc13_ && param2))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    param2 = §§pop();
                                                                                                                                                                                                                                    loop26:
                                                                                                                                                                                                                                    while(_loc14_ || param2)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(!(_loc13_ && param1))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             _loc3_.scaleX += _loc3_.scaleDeltaX * param2;
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                _loc3_.scaleY += _loc3_.scaleDeltaY * param2;
                                                                                                                                                                                                                                                loop29:
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(_loc14_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(_loc14_ || param2)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(_loc14_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(_loc3_.colorArgb);
                                                                                                                                                                                                                                                            loop30:
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(_loc3_.colorArgb);
                                                                                                                                                                                                                                                               addr430:
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(§§pop().red);
                                                                                                                                                                                                                                                                  addr431:
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(_loc3_.colorArgbDelta);
                                                                                                                                                                                                                                                                     addr433:
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(§§pop().red);
                                                                                                                                                                                                                                                                        addr434:
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(param2);
                                                                                                                                                                                                                                                                           addr435:
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                              addr436:
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                 addr437:
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§pop().red = §§pop();
                                                                                                                                                                                                                                                                                    addr438:
                                                                                                                                                                                                                                                                                    addr851:
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(_loc14_ || _loc3_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(_loc14_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(_loc14_ || this)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§push(_loc3_.colorArgb);
                                                                                                                                                                                                                                                                                                continue loop30;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             addr1028:
                                                                                                                                                                                                                                                                                             loop109:
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(!(_loc13_ && param2))
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§push(_loc11_);
                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§push(-§§pop());
                                                                                                                                                                                                                                                                                                      loop115:
                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         if(_loc14_ || this)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            if(_loc14_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               addr968:
                                                                                                                                                                                                                                                                                                               §§push(_loc3_.tangentialAcceleration);
                                                                                                                                                                                                                                                                                                               loop88:
                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  if(!(_loc13_ && param2))
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     if(_loc14_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        if(_loc14_ || this)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                           if(!(_loc13_ && _loc3_))
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              if(!(_loc13_ && param2))
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 if(_loc14_ || param2)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    addr1009:
                                                                                                                                                                                                                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                    loop83:
                                                                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       _loc10_ = §§pop();
                                                                                                                                                                                                                                                                                                                                       addr1010:
                                                                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          §§push(_loc12_);
                                                                                                                                                                                                                                                                                                                                          addr901:
                                                                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             if(!_loc14_)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                continue loop115;
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             if(_loc14_)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                if(!_loc13_)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   if(!(_loc13_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      if(!_loc13_)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         §§push(_loc3_.tangentialAcceleration);
                                                                                                                                                                                                                                                                                                                                                         if(!_loc14_)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            continue loop88;
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         if(!_loc13_)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               if(_loc14_ || param1)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  if(_loc14_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     if(!(_loc13_ && this))
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           if(_loc14_ || param2)
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              _loc11_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                                              break loop29;
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           loop132:
                                                                                                                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              if(!(_loc13_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 if(_loc14_)
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    if(!_loc13_)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       if(_loc14_)
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          _loc12_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                          continue loop109;
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                       addr1193:
                                                                                                                                                                                                                                                                                                                                                                                       addr1193:
                                                                                                                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          _loc5_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                          addr1194:
                                                                                                                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             §§push(_loc3_.y - _loc3_.startY);
                                                                                                                                                                                                                                                                                                                                                                                             addr1162:
                                                                                                                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                                                continue loop12;
                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                 else
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                                       loop105:
                                                                                                                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          _loc10_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                          addr1097:
                                                                                                                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             §§push(_loc9_);
                                                                                                                                                                                                                                                                                                                                                                                             addr1088:
                                                                                                                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                if(!_loc14_)
                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                   continue loop12;
                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                addr1090:
                                                                                                                                                                                                                                                                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                   _loc11_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                   addr1092:
                                                                                                                                                                                                                                                                                                                                                                                                   loop103:
                                                                                                                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                      §§push(_loc8_);
                                                                                                                                                                                                                                                                                                                                                                                                      addr1069:
                                                                                                                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                         if(_loc13_ && param2)
                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                            continue loop105;
                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                         if(_loc14_)
                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                            addr1078:
                                                                                                                                                                                                                                                                                                                                                                                                            §§push(_loc3_.radialAcceleration);
                                                                                                                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                               if(_loc14_)
                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                  addr1082:
                                                                                                                                                                                                                                                                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                     §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                                                                     addr1084:
                                                                                                                                                                                                                                                                                                                                                                                                                     loop73:
                                                                                                                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                        _loc8_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                        addr1085:
                                                                                                                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                           §§push(_loc9_);
                                                                                                                                                                                                                                                                                                                                                                                                                           addr1038:
                                                                                                                                                                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                                                                              if(!_loc13_)
                                                                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                                                                    §§push(_loc3_.radialAcceleration);
                                                                                                                                                                                                                                                                                                                                                                                                                                    addr1042:
                                                                                                                                                                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                                                                       if(!(_loc13_ && this))
                                                                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                                                                             if(_loc13_ && this)
                                                                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                                                                continue loop103;
                                                                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                                                                if(_loc14_ || param2)
                                                                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                                                                   _loc9_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                                                                      §§push(_loc10_);
                                                                                                                                                                                                                                                                                                                                                                                                                                                      addr1013:
                                                                                                                                                                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                                                                         continue loop132;
                                                                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                                                                   addr1066:
                                                                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                                                                   §§goto(addr1162);
                                                                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                                                                          addr1050:
                                                                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                                                                             if(§§pop() < §§pop())
                                                                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                                                                   if(_loc14_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                                                                      addr1153:
                                                                                                                                                                                                                                                                                                                                                                                                                                                      §§push(0.01);
                                                                                                                                                                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                                                                                                         addr1154:
                                                                                                                                                                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                                                                            _loc7_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                                                            addr1155:
                                                                                                                                                                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                                                                      addr1153:
                                                                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                                                                   else
                                                                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                                                                         continue loop66;
                                                                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                                                                      addr1388:
                                                                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                                                                addr1150:
                                                                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                                                                             addr1119:
                                                                                                                                                                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                                                                §§push(_loc5_);
                                                                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                                                                          addr1149:
                                                                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                                                                 addr1040:
                                                                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                                                                              loop76:
                                                                                                                                                                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                                                                 §§push(_loc7_);
                                                                                                                                                                                                                                                                                                                                                                                                                                 addr1122:
                                                                                                                                                                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                                                                    §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                    addr1123:
                                                                                                                                                                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                                                                                       addr1124:
                                                                                                                                                                                                                                                                                                                                                                                                                                       while(_loc14_ || param1)
                                                                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                                                                          _loc8_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                                          break loop23;
                                                                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr1154);
                                                                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                                                                    continue loop76;
                                                                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                                                                           continue loop73;
                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr1082);
                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                  addr1083:
                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                               addr1101:
                                                                                                                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                  if(_loc13_ && this)
                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                     continue loop13;
                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                     §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                               §§goto(addr1078);
                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                            addr1080:
                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                            §§goto(addr1101);
                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                   §§goto(addr1090);
                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    addr1095:
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                                    addr1110:
                                                                                                                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       _loc9_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                       continue loop11;
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr1069);
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                        addr945:
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr1153);
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr1084);
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               §§goto(addr1050);
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            addr923:
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         §§goto(addr1080);
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      §§goto(addr1123);
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   §§goto(addr1088);
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                §§goto(addr1038);
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             §§goto(addr1013);
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          continue loop83;
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    addr1009:
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 else
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    addr1148:
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§goto(addr1149);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §§goto(addr1058);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§goto(addr1009);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        else
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              _loc7_ = §§pop();
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           addr1147:
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§goto(addr1148);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr1122);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr1042);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr1124);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr1110);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   addr958:
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr1097);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          break;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       addr794:
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§push(_loc3_);
                                                                                                                                                                                                                                                                                          §§push(_loc3_.velocityY);
                                                                                                                                                                                                                                                                                          if(!(_loc13_ && _loc3_))
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(param2);
                                                                                                                                                                                                                                                                                             if(_loc14_ || this)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§push(this.§'h§);
                                                                                                                                                                                                                                                                                                if(!_loc13_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§push(_loc9_);
                                                                                                                                                                                                                                                                                                   if(_loc14_ || param1)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      addr743:
                                                                                                                                                                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                      if(!(_loc13_ && param2))
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         addr741:
                                                                                                                                                                                                                                                                                                         §§push(§§pop() + _loc11_);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§pop().velocityY = §§pop() + §§pop() * §§pop();
                                                                                                                                                                                                                                                                                                      continue loop7;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr741);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr743);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
                                                                                                                                                                                                                                                                                       addr807:
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(_loc14_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             addr660:
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                _loc3_.x += _loc3_.velocityX * param2;
                                                                                                                                                                                                                                                                                                break loop26;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             addr660:
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
                                                                                                                                                                                                                                                                                                break loop15;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             addr1354:
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
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr1194);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr1155);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   break;
                                                                                                                                                                                                                                                   loop54:
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(_loc13_ && _loc3_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         continue loop29;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      if(_loc13_ && param1)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         break;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      _loc3_.red = _loc3_.colorArgb.red;
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(_loc14_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(_loc13_ && _loc3_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               break;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            _loc3_.green = _loc3_.colorArgb.green;
                                                                                                                                                                                                                                                            while(!(_loc13_ && _loc3_))
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               _loc3_.blue = _loc3_.colorArgb.blue;
                                                                                                                                                                                                                                                               continue loop54;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr1010);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         else
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§goto(addr417);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(_loc13_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            continue loop0;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§push(Number(Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_)));
                                                                                                                                                                                                                                                         if(!_loc13_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§goto(addr1147);
                                                                                                                                                                                                                                                            §§push(§§pop());
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr1154);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   addr1187:
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(_loc3_.x - _loc3_.startX);
                                                                                                                                                                                                                                                      addr1192:
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§goto(addr1193);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(!_loc14_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      continue loop8;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§push(this.§-?§);
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(§§pop())
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§goto(addr856);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(_loc3_);
                                                                                                                                                                                                                                                         §§push(_loc3_.velocityX);
                                                                                                                                                                                                                                                         if(_loc14_ || param1)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(param2);
                                                                                                                                                                                                                                                            if(!(_loc13_ && _loc3_))
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(this.§>U§);
                                                                                                                                                                                                                                                               if(!_loc13_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(_loc8_);
                                                                                                                                                                                                                                                                  if(!_loc13_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     addr791:
                                                                                                                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                     if(!(_loc13_ && param1))
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(_loc10_);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§pop().velocityX = §§pop() + §§pop() * §§pop();
                                                                                                                                                                                                                                                                     §§goto(addr794);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr791);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                addr127:
                                                                                                                                                                                                                                                if(!(_loc13_ && param2))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   return;
                                                                                                                                                                                                                                                   addr134:
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          addr477:
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(this.§-?§);
                                                                                                                                                                                                                                             continue loop140;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          addr1222:
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    while(!_loc13_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       _loc3_.y += _loc3_.velocityY * param2;
                                                                                                                                                                                                                                       break loop25;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    break loop20;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr1192);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr1009);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr923);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr945);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr566:
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1083);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr558:
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr566);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr554:
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr958);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr901);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr558);
                                                                                                                                                                                                if(!(_loc14_ || param1))
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue;
                                                                                                                                                                                                }
                                                                                                                                                                                                if(!_loc13_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!(_loc13_ && param2))
                                                                                                                                                                                                   {
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
                                                                                                                                                                                                            if(_loc14_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc14_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!_loc13_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc14_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§goto(addr127);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr438);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr394);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr223);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr209);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr141);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr134);
                                                                                                                                                                                                      addr109:
                                                                                                                                                                                                   }
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue loop9;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr1337:
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1066);
                                                                                                                                                                                             }
                                                                                                                                                                                             continue loop20;
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr477);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr855);
                                                                                                                                                                                    }
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc3_);
                                                                                                                                                                                       §§push(_loc3_.velocityY);
                                                                                                                                                                                       if(!(_loc13_ && param1))
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(2 * param2);
                                                                                                                                                                                          if(!(_loc13_ && _loc3_))
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(this.§'h§);
                                                                                                                                                                                             if(_loc14_ || param1)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc9_);
                                                                                                                                                                                                if(!_loc13_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr848:
                                                                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                                                                   if(!_loc13_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(_loc11_);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§pop().velocityY = §§pop() + §§pop() * §§pop();
                                                                                                                                                                                                   §§goto(addr851);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr848);
                                                                                                                                                                                    }
                                                                                                                                                                                    addr528:
                                                                                                                                                                                    addr898:
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1150);
                                                                                                                                                                              }
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr1100);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr109);
                                                                                                                                                                        }
                                                                                                                                                                        addr510:
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr528);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr898);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         continue loop1;
                                                                                                                                                         addr631:
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr510);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(§§pop())
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr1187);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   addr1186:
                                                                                                                                                }
                                                                                                                                                §§goto(addr660);
                                                                                                                                             }
                                                                                                                                             §§goto(addr631);
                                                                                                                                          }
                                                                                                                                          continue loop5;
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    addr1247:
                                                                                                                                 }
                                                                                                                                 break;
                                                                                                                              }
                                                                                                                              continue loop10;
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(_loc3_);
                                                                                                                              §§push(_loc3_.radius);
                                                                                                                              if(_loc14_)
                                                                                                                              {
                                                                                                                                 §§push(_loc3_.radiusDelta);
                                                                                                                                 if(_loc14_ || this)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() * param2);
                                                                                                                                    if(!_loc13_)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() * 2);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§push(§§pop() - §§pop());
                                                                                                                              }
                                                                                                                              §§pop().radius = §§pop();
                                                                                                                              §§goto(addr1337);
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr1195);
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc3_.skipUpdate);
                                                                                                      break loop7;
                                                                                                   }
                                                                                                   addr1382:
                                                                                                }
                                                                                             }
                                                                                             loop68:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(!§§pop());
                                                                                                addr1385:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop());
                                                                                                   addr1386:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         continue loop4;
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§pop();
                                                                                                         §§goto(addr1388);
                                                                                                      }
                                                                                                   }
                                                                                                   continue loop68;
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr1354);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr1195);
                                                                              }
                                                                           }
                                                                           §§goto(addr1353);
                                                                        }
                                                                     }
                                                                     §§goto(addr1222);
                                                                  }
                                                               }
                                                               while(true)
                                                               {
                                                                  §§goto(addr1186);
                                                               }
                                                            }
                                                            §§goto(addr1386);
                                                         }
                                                      }
                                                   }
                                                   addr1214:
                                                }
                                                §§goto(addr1385);
                                             }
                                             §§goto(addr1387);
                                          }
                                       }
                                       §§goto(addr1382);
                                    }
                                 }
                                 §§goto(addr424);
                              }
                              §§goto(addr554);
                           }
                           §§goto(addr1153);
                        }
                        else
                        {
                           addr90:
                           §§push(Number(§§pop()));
                           if(!_loc13_)
                           {
                              §§goto(addr93);
                           }
                        }
                        §§goto(addr1193);
                     }
                     §§goto(addr1247);
                  }
                  else
                  {
                     §§push(_loc4_);
                     if(_loc14_)
                     {
                        §§goto(addr90);
                     }
                  }
                  §§goto(addr1040);
               }
               §§goto(addr1214);
            }
            §§goto(addr1108);
         }
         §§goto(addr1100);
      }
      
      private function §-O§(param1:XML, param2:Texture) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param1))
         {
            this.§3!y§ = parseFloat(param1.sourcePositionVariance.attribute("x"));
            while(true)
            {
               this.§=i§ = parseFloat(param1.sourcePositionVariance.attribute("y"));
               while(true)
               {
                  this.§>U§ = parseFloat(param1.gravity.attribute("x"));
                  loop2:
                  while(true)
                  {
                     this.§'h§ = parseFloat(param1.gravity.attribute("y"));
                     while(true)
                     {
                        this.§'!Y§ = this.§6!'§(param1.emitterType);
                        loop4:
                        while(true)
                        {
                           this.§[!u§ = this.§6!'§(param1.maxParticles);
                           while(true)
                           {
                              this.§1!§ = Math.max(0.01,this.§1w§(param1.particleLifeSpan));
                              addr756:
                              while(true)
                              {
                                 this.§8!L§ = this.§1w§(param1.particleLifespanVariance);
                                 continue loop2;
                              }
                              addr182:
                              if(!(_loc4_ && this))
                              {
                                 continue loop4;
                              }
                           }
                        }
                     }
                  }
               }
               while(_loc3_ || _loc3_)
               {
                  §§goto(addr694);
               }
            }
         }
         §§goto(addr693);
      }
      
      protected function §6!'§(param1:XMLList) : int
      {
         return parseInt(param1.attribute("value"));
      }
      
      protected function §1w§(param1:XMLList) : Number
      {
         return parseFloat(param1.attribute("value"));
      }
      
      protected function §^!8§(param1:XMLList) : String
      {
         return param1.attribute("value");
      }
      
      protected function §<u§(param1:XMLList) : ColorArgb
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:ColorArgb = new ColorArgb();
         if(!_loc3_)
         {
            _loc2_.red = parseFloat(param1.attribute("red"));
            loop0:
            while(true)
            {
               _loc2_.green = parseFloat(param1.attribute("green"));
               while(true)
               {
                  _loc2_.blue = parseFloat(param1.attribute("blue"));
                  addr73:
                  while(_loc4_)
                  {
                     if(_loc4_)
                     {
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
         }
         while(true)
         {
            _loc2_.alpha = parseFloat(param1.attribute("alpha"));
            if(_loc4_ || _loc2_)
            {
               break;
            }
            §§goto(addr73);
         }
         return _loc2_;
      }
      
      protected function §2!I§(param1:XMLList) : String
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(this.§6!'§(param1));
         if(_loc5_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(_loc2_);
         if(_loc5_)
         {
            var _loc3_:* = §§pop();
            if(_loc5_ || _loc3_)
            {
               §§push(0);
               if(!_loc4_)
               {
                  §§push(_loc3_);
                  if(_loc5_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc5_)
                        {
                           §§push(0);
                           if(_loc4_)
                           {
                              addr301:
                              §§push(_loc3_);
                              if(_loc5_)
                              {
                                 addr304:
                                 if(§§pop() === §§pop())
                                 {
                                    if(!_loc4_)
                                    {
                                       addr307:
                                       §§push(7);
                                       if(_loc5_ || _loc3_)
                                       {
                                          addr362:
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
                                          addr362:
                                          addr315:
                                       }
                                    }
                                    else
                                    {
                                       addr340:
                                       §§push(8);
                                       if(!_loc5_)
                                       {
                                       }
                                    }
                                    §§goto(addr362);
                                 }
                                 else
                                 {
                                    §§push(774);
                                    if(_loc5_ || _loc2_)
                                    {
                                       addr324:
                                       §§push(_loc3_);
                                       if(_loc5_)
                                       {
                                          addr337:
                                          if(§§pop() === §§pop())
                                          {
                                             if(_loc5_)
                                             {
                                                §§goto(addr340);
                                             }
                                             else
                                             {
                                                addr354:
                                                §§push(9);
                                                if(_loc4_)
                                                {
                                                }
                                                §§goto(addr362);
                                             }
                                          }
                                          else
                                          {
                                             §§push(775);
                                             if(!(_loc4_ && _loc3_))
                                             {
                                                addr353:
                                                if(§§pop() === _loc3_)
                                                {
                                                   §§goto(addr354);
                                                }
                                                else
                                                {
                                                   §§goto(addr362);
                                                   §§push(10);
                                                }
                                             }
                                             §§goto(addr362);
                                          }
                                          §§goto(addr362);
                                       }
                                       §§goto(addr353);
                                    }
                                 }
                                 addr343:
                              }
                              §§goto(addr353);
                           }
                        }
                        else
                        {
                           addr184:
                           §§push(1);
                           if(!_loc5_)
                           {
                              §§goto(addr301);
                           }
                           else
                           {
                              addr187:
                           }
                        }
                        §§goto(addr362);
                     }
                     else
                     {
                        §§push(1);
                        if(_loc5_)
                        {
                           addr163:
                           §§push(_loc3_);
                           if(_loc5_ || _loc2_)
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(_loc5_)
                                 {
                                    §§goto(addr184);
                                 }
                                 §§goto(addr307);
                              }
                              else
                              {
                                 §§push(768);
                                 if(_loc5_)
                                 {
                                    §§push(_loc3_);
                                    if(_loc5_ || _loc2_)
                                    {
                                       if(§§pop() === §§pop())
                                       {
                                          if(_loc5_)
                                          {
                                             §§push(2);
                                             if(_loc4_ && _loc3_)
                                             {
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr307);
                                          }
                                          §§goto(addr362);
                                       }
                                       else
                                       {
                                          §§push(769);
                                          if(!_loc4_)
                                          {
                                             §§push(_loc3_);
                                             if(!(_loc4_ && this))
                                             {
                                                if(§§pop() === §§pop())
                                                {
                                                   if(!_loc4_)
                                                   {
                                                      §§push(3);
                                                      if(!_loc5_)
                                                      {
                                                         §§goto(addr324);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr307);
                                                   }
                                                   §§goto(addr362);
                                                }
                                                else
                                                {
                                                   §§push(770);
                                                   if(!(_loc4_ && _loc2_))
                                                   {
                                                      §§push(_loc3_);
                                                      if(!(_loc4_ && _loc3_))
                                                      {
                                                         addr245:
                                                         if(§§pop() === §§pop())
                                                         {
                                                            if(!_loc4_)
                                                            {
                                                               §§push(4);
                                                               if(!(_loc5_ || _loc3_))
                                                               {
                                                                  addr260:
                                                                  §§push(_loc3_);
                                                                  if(_loc5_ || _loc2_)
                                                                  {
                                                                     addr268:
                                                                     if(§§pop() === §§pop())
                                                                     {
                                                                        if(!(_loc4_ && _loc2_))
                                                                        {
                                                                           §§push(5);
                                                                           if(_loc4_)
                                                                           {
                                                                              §§goto(addr301);
                                                                           }
                                                                        }
                                                                        §§goto(addr307);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push(772);
                                                                        if(_loc5_)
                                                                        {
                                                                           §§push(_loc3_);
                                                                           if(!_loc4_)
                                                                           {
                                                                              if(§§pop() === §§pop())
                                                                              {
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    §§push(6);
                                                                                    if(_loc5_)
                                                                                    {
                                                                                       addr292:
                                                                                       §§goto(addr362);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr353);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr354);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§push(773);
                                                                                 if(!(_loc4_ && _loc2_))
                                                                                 {
                                                                                    §§goto(addr301);
                                                                                 }
                                                                                 §§goto(addr324);
                                                                              }
                                                                           }
                                                                           §§goto(addr337);
                                                                        }
                                                                        §§goto(addr343);
                                                                     }
                                                                  }
                                                                  §§goto(addr353);
                                                               }
                                                               §§goto(addr362);
                                                            }
                                                            §§goto(addr354);
                                                         }
                                                         else
                                                         {
                                                            §§push(771);
                                                            if(_loc5_)
                                                            {
                                                               §§goto(addr260);
                                                            }
                                                         }
                                                         §§goto(addr292);
                                                      }
                                                      §§goto(addr353);
                                                   }
                                                   §§goto(addr260);
                                                }
                                             }
                                             §§goto(addr245);
                                          }
                                       }
                                       §§goto(addr315);
                                    }
                                    §§goto(addr268);
                                 }
                              }
                              §§goto(addr343);
                           }
                           §§goto(addr304);
                        }
                     }
                     §§goto(addr187);
                  }
                  §§goto(addr353);
               }
               §§goto(addr163);
            }
            §§goto(addr307);
         }
         §§goto(addr362);
      }
      
      protected function §"!j§(param1:XMLList) : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(this.§^!8§(param1));
         if(!_loc4_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(!_loc4_)
         {
            §§push(_loc2_);
            while(true)
            {
               §§push(§4!'§.§5!'§);
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  if(!_loc4_)
                  {
                     §§push(§§pop());
                     while(true)
                     {
                        if(§§pop())
                        {
                           continue;
                        }
                     }
                  }
                  addr146:
                  while(true)
                  {
                     §§pop();
                     §§goto(addr147);
                  }
               }
               if(!(_loc3_ || this))
               {
                  continue;
               }
               §§push(§4!'§.NONE);
               if(!(_loc4_ && _loc2_))
               {
                  §§push(§§pop() == §§pop());
                  if(_loc3_)
                  {
                     if(_loc3_ || param1)
                     {
                        §§goto(addr79);
                     }
                     §§goto(addr146);
                  }
                  §§goto(addr136);
               }
               §§goto(addr106);
            }
         }
         §§goto(addr101);
      }
   }
}

import §'!`§.§+A§;

class PDParticle extends §+A§
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
