package §<!E§
{
   import §0!R§.§=w§;
   import §0!R§.Texture;
   import §1V§.deg2rad;
   import flash.display3D.Context3DBlendFactor;
   
   public class ParticleDesignerPS extends §&!C§
   {
       
      
      private const §!"C§:int = 0;
      
      private const §?!X§:int = 1;
      
      private var §@!1§:Number;
      
      private var §>5§:int;
      
      private var §,$§:Number;
      
      private var §1`§:Number;
      
      private var §<!3§:int;
      
      private var §&_§:Number;
      
      private var §-!t§:Number;
      
      private var §[!v§:Number;
      
      private var §+7§:Number;
      
      private var §<S§:Number;
      
      private var §<X§:Number;
      
      private var §^"?§:Number;
      
      private var §,"A§:Number;
      
      private var §%!u§:Number;
      
      private var §^!&§:Number;
      
      private var §6!E§:Number;
      
      private var §5J§:Number;
      
      private var §[";§:Number;
      
      private var § 1§:Number;
      
      private var §;&§:Number;
      
      private var §2P§:Number;
      
      private var §^!p§:Number;
      
      private var §8"A§:Number;
      
      private var §?"$§:Number;
      
      private var §#&§:Number;
      
      private var §]r§:Number;
      
      private var §4L§:Number;
      
      private var §`!=§:Number;
      
      private var §!!Z§:Number;
      
      private var §1+§:Number;
      
      private var §"!0§:Number;
      
      private var §^5§:ColorArgb;
      
      private var §!!=§:ColorArgb;
      
      private var § W§:ColorArgb;
      
      private var §9?§:ColorArgb;
      
      public function ParticleDesignerPS(param1:XML, param2:Texture)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && _loc3_))
         {
            this.§3@§(param1,param2);
         }
         §§push(this.§<!3§);
         §§push(this.§&_§);
         if(_loc5_)
         {
            §§push(§§pop() + this.§[!v§);
         }
         §§push(§§pop() / §§pop());
         if(!_loc4_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(_loc5_)
         {
            super(param2,_loc3_,this.§<!3§,§6"=§,§'!"§);
            do
            {
               §;!n§ = false;
            }
            while(_loc4_);
            
         }
      }
      
      public function get §&!&§() : int
      {
         return this.§<!3§;
      }
      
      override protected function createParticle() : §[M§
      {
         return new PDParticle();
      }
      
      private function get §,g§() : Boolean
      {
         return this.§&!&§ >= 20;
      }
      
      override protected function initParticle(param1:§[M§) : void
      {
         var _loc17_:Boolean = true;
         var _loc18_:Boolean = false;
         var _loc2_:PDParticle = null;
         var _loc3_:* = NaN;
         _loc2_ = param1 as PDParticle;
         if(_loc17_)
         {
            §§push(this.§&_§);
            if(!_loc18_)
            {
               §§push(this.§-!t§);
               if(!(_loc18_ && _loc2_))
               {
                  §§push(Math.random() * 2);
                  if(!(_loc18_ && _loc2_))
                  {
                     §§push(§§pop() - 1);
                     if(!_loc18_)
                     {
                        §§push(§§pop() * §§pop());
                        if(!(_loc18_ && this))
                        {
                           addr172:
                           §§push(§§pop() + §§pop());
                           if(_loc17_)
                           {
                              §§push(Number(§§pop()));
                              if(_loc17_)
                              {
                                 _loc3_ = §§pop();
                                 loop8:
                                 while(true)
                                 {
                                    §§push(_loc3_);
                                    if(_loc18_)
                                    {
                                       break;
                                    }
                                    §§push(0);
                                    if(_loc17_)
                                    {
                                       if(§§pop() <= §§pop())
                                       {
                                          if(!_loc18_)
                                          {
                                             return;
                                          }
                                          while(true)
                                          {
                                          }
                                          addr136:
                                       }
                                       while(true)
                                       {
                                          _loc2_.alpha = 0;
                                          loop11:
                                          while(true)
                                          {
                                             _loc2_.§^#§ = 0;
                                             loop12:
                                             while(true)
                                             {
                                                _loc2_.§ B§ = _loc3_;
                                                loop13:
                                                while(true)
                                                {
                                                   _loc2_.x = §'"9§ + this.§,$§ * (Math.random() * 2 - 1);
                                                   while(true)
                                                   {
                                                      _loc2_.y = §0!d§ + this.§1`§ * (Math.random() * 2 - 1);
                                                      loop15:
                                                      while(_loc17_ || this)
                                                      {
                                                         if(!_loc18_)
                                                         {
                                                            while(true)
                                                            {
                                                               _loc2_.startX = §'"9§;
                                                               continue loop15;
                                                               addr41:
                                                               if(!_loc17_)
                                                               {
                                                                  break;
                                                               }
                                                               if(false)
                                                               {
                                                                  continue;
                                                               }
                                                               addr209:
                                                               addr209:
                                                               §§push(this.§5J§);
                                                               if(!(_loc18_ && _loc2_))
                                                               {
                                                                  break loop8;
                                                               }
                                                               var _loc4_:Number = §§pop();
                                                               §§push(this.§ 1§);
                                                               if(_loc17_ || _loc2_)
                                                               {
                                                                  §§push(this.§;&§);
                                                                  if(_loc17_)
                                                                  {
                                                                     §§push(Math.random() * 2);
                                                                     if(_loc17_)
                                                                     {
                                                                        §§push(§§pop() - 1);
                                                                     }
                                                                     §§push(§§pop() * §§pop());
                                                                  }
                                                                  §§push(§§pop() + §§pop());
                                                                  if(!_loc18_)
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                               }
                                                               var _loc5_:* = §§pop();
                                                               if(_loc17_ || _loc2_)
                                                               {
                                                                  §§push(_loc2_);
                                                                  §§push(_loc5_);
                                                                  if(_loc17_ || _loc3_)
                                                                  {
                                                                     §§push(§§pop() * Math.cos(_loc4_));
                                                                  }
                                                                  §§pop().velocityX = §§pop();
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc2_);
                                                                     §§push(_loc5_);
                                                                     if(!(_loc18_ && this))
                                                                     {
                                                                        §§push(§§pop() * -Math.sin(_loc4_));
                                                                     }
                                                                     §§pop().velocityY = §§pop();
                                                                  }
                                                                  addr411:
                                                               }
                                                               while(true)
                                                               {
                                                                  if(_loc17_ || this)
                                                                  {
                                                                     continue loop11;
                                                                  }
                                                                  continue loop15;
                                                               }
                                                               continue loop8;
                                                               loop1:
                                                               while(true)
                                                               {
                                                                  §§push(_loc2_);
                                                                  §§push(this.§4L§);
                                                                  if(!_loc18_)
                                                                  {
                                                                     §§push(this.§`!=§);
                                                                     if(!_loc18_)
                                                                     {
                                                                        §§push(Math.random() * 2);
                                                                        if(_loc17_)
                                                                        {
                                                                           §§push(§§pop() - 1);
                                                                        }
                                                                        §§push(§§pop() * §§pop());
                                                                     }
                                                                     §§push(§§pop() + §§pop());
                                                                  }
                                                                  §§pop().radius = §§pop();
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc2_);
                                                                     §§push(this.§4L§);
                                                                     if(!(_loc18_ && this))
                                                                     {
                                                                        §§push(§§pop() / _loc3_);
                                                                     }
                                                                     §§pop().radiusDelta = §§pop();
                                                                     loop3:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc2_);
                                                                        §§push(this.§5J§);
                                                                        if(!(_loc18_ && param1))
                                                                        {
                                                                           §§push(this.§[";§);
                                                                           if(_loc17_ || _loc3_)
                                                                           {
                                                                              §§push(Math.random() * 2);
                                                                              if(_loc17_ || param1)
                                                                              {
                                                                                 §§push(§§pop() - 1);
                                                                              }
                                                                              §§push(§§pop() * §§pop());
                                                                           }
                                                                           §§push(§§pop() + §§pop());
                                                                        }
                                                                        §§pop().rotation = §§pop();
                                                                        loop4:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc2_);
                                                                           §§push(this.§1+§);
                                                                           if(_loc17_ || param1)
                                                                           {
                                                                              §§push(this.§"!0§);
                                                                              if(!_loc18_)
                                                                              {
                                                                                 §§push(Math.random() * 2);
                                                                                 if(!(_loc18_ && _loc2_))
                                                                                 {
                                                                                    §§push(§§pop() - 1);
                                                                                 }
                                                                                 §§push(§§pop() * §§pop());
                                                                              }
                                                                              §§push(§§pop() + §§pop());
                                                                           }
                                                                           §§pop().rotationDelta = §§pop();
                                                                           addr303:
                                                                           while(true)
                                                                           {
                                                                              if(_loc17_)
                                                                              {
                                                                                 if(!_loc17_)
                                                                                 {
                                                                                    break;
                                                                                    addr258:
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    _loc2_.radialAcceleration = this.§8"A§;
                                                                                    continue loop4;
                                                                                    addr254:
                                                                                    if(!_loc17_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    if(false)
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                    §§push(Math.random() * 2);
                                                                                    if(!_loc18_)
                                                                                    {
                                                                                       §§push(§§pop() - 1);
                                                                                       if(_loc17_)
                                                                                       {
                                                                                          addr421:
                                                                                          §§push(Number(§§pop()));
                                                                                       }
                                                                                       var _loc6_:* = §§pop();
                                                                                       §§push(this.§+7§);
                                                                                       if(!(_loc18_ && this))
                                                                                       {
                                                                                          §§push(this.§<S§);
                                                                                          if(!_loc18_)
                                                                                          {
                                                                                             §§push(§§pop() * _loc6_);
                                                                                             if(!_loc18_)
                                                                                             {
                                                                                                addr440:
                                                                                                §§push(§§pop() + §§pop());
                                                                                                if(!(_loc18_ && this))
                                                                                                {
                                                                                                   addr448:
                                                                                                   §§push(Number(§§pop()));
                                                                                                }
                                                                                                §§push(§§pop());
                                                                                             }
                                                                                             var _loc7_:* = §§pop();
                                                                                             if(_loc17_ || param1)
                                                                                             {
                                                                                                §§push(Number(§§pop()));
                                                                                             }
                                                                                             var _loc8_:* = §§pop();
                                                                                             if(!(_loc18_ && _loc2_))
                                                                                             {
                                                                                                if(!isNaN(this.§,"A§))
                                                                                                {
                                                                                                   addr644:
                                                                                                   _loc8_ = Number(this.§,"A§);
                                                                                                   addr645:
                                                                                                   addr643:
                                                                                                   addr641:
                                                                                                   if(!isNaN(this.§%!u§))
                                                                                                   {
                                                                                                      addr601:
                                                                                                      §§push(_loc8_);
                                                                                                      if(_loc17_ || _loc2_)
                                                                                                      {
                                                                                                         §§push(this.§%!u§);
                                                                                                         if(_loc17_)
                                                                                                         {
                                                                                                            §§push(Math.random() * 2);
                                                                                                            if(_loc17_)
                                                                                                            {
                                                                                                               §§push(§§pop() - 1);
                                                                                                               if(_loc17_)
                                                                                                               {
                                                                                                                  addr623:
                                                                                                                  §§push(Number(§§pop() + §§pop() * §§pop()));
                                                                                                                  if(!_loc18_)
                                                                                                                  {
                                                                                                                     _loc8_ = §§pop();
                                                                                                                     addr628:
                                                                                                                     if(_loc17_ || this)
                                                                                                                     {
                                                                                                                        addr567:
                                                                                                                        §§push(_loc7_);
                                                                                                                        if(!(_loc18_ && param1))
                                                                                                                        {
                                                                                                                           §§push(0.1);
                                                                                                                           if(_loc17_)
                                                                                                                           {
                                                                                                                              if(§§pop() < §§pop())
                                                                                                                              {
                                                                                                                                 addr580:
                                                                                                                                 §§push(0.1);
                                                                                                                                 if(_loc17_ || _loc3_)
                                                                                                                                 {
                                                                                                                                    if(!_loc18_)
                                                                                                                                    {
                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                       if(!_loc18_)
                                                                                                                                       {
                                                                                                                                          addr593:
                                                                                                                                          _loc7_ = §§pop();
                                                                                                                                          addr594:
                                                                                                                                          §§push(_loc8_);
                                                                                                                                          if(_loc17_)
                                                                                                                                          {
                                                                                                                                             if(_loc17_)
                                                                                                                                             {
                                                                                                                                                §§push(0.1);
                                                                                                                                                if(_loc17_)
                                                                                                                                                {
                                                                                                                                                   if(!_loc18_)
                                                                                                                                                   {
                                                                                                                                                      if(§§pop() < §§pop())
                                                                                                                                                      {
                                                                                                                                                         addr537:
                                                                                                                                                         if(_loc17_)
                                                                                                                                                         {
                                                                                                                                                            if(!_loc18_)
                                                                                                                                                            {
                                                                                                                                                               §§push(0.1);
                                                                                                                                                               if(_loc17_)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc17_ || _loc3_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(Number(§§pop()));
                                                                                                                                                                     if(!_loc18_)
                                                                                                                                                                     {
                                                                                                                                                                        _loc8_ = §§pop();
                                                                                                                                                                        addr555:
                                                                                                                                                                        if(!_loc18_)
                                                                                                                                                                        {
                                                                                                                                                                           if(!(_loc18_ && param1))
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc17_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr508:
                                                                                                                                                                                 §§push(_loc2_);
                                                                                                                                                                                 §§push(_loc7_);
                                                                                                                                                                                 if(!_loc18_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() / texture.width);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§pop().scaleX = §§pop();
                                                                                                                                                                                 if(!(_loc18_ && param1))
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc2_);
                                                                                                                                                                                    §§push(_loc8_);
                                                                                                                                                                                    if(!_loc18_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc7_);
                                                                                                                                                                                       if(_loc17_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() - §§pop());
                                                                                                                                                                                          if(!(_loc18_ && _loc3_))
                                                                                                                                                                                          {
                                                                                                                                                                                             addr485:
                                                                                                                                                                                             §§push(§§pop() / _loc3_);
                                                                                                                                                                                             if(_loc17_ || this)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr493:
                                                                                                                                                                                                §§push(§§pop() / texture.width);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          §§pop().scaleDeltaX = §§pop();
                                                                                                                                                                                          if(_loc17_ || param1)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!_loc18_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(false)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§goto(addr508);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§push(this.§<X§);
                                                                                                                                                                                                if(!(_loc18_ && this))
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr655:
                                                                                                                                                                                                   §§push(this.§^"?§);
                                                                                                                                                                                                   if(!_loc18_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr659:
                                                                                                                                                                                                      §§push(§§pop() * _loc6_);
                                                                                                                                                                                                      if(!_loc18_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr663:
                                                                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                                                                         if(_loc17_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr667:
                                                                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr667);
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   var _loc9_:* = §§pop();
                                                                                                                                                                                                   if(_loc17_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                                                                   }
                                                                                                                                                                                                   var _loc10_:* = §§pop();
                                                                                                                                                                                                   if(_loc17_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!isNaN(this.§^!&§))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr881:
                                                                                                                                                                                                         _loc10_ = Number(this.§^!&§);
                                                                                                                                                                                                         if(!isNaN(this.§6!E§))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr851:
                                                                                                                                                                                                            addr871:
                                                                                                                                                                                                            addr870:
                                                                                                                                                                                                            §§push(_loc10_);
                                                                                                                                                                                                            if(!_loc18_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr869:
                                                                                                                                                                                                               §§push(this.§6!E§);
                                                                                                                                                                                                               §§push(Math.random() * 2);
                                                                                                                                                                                                               if(_loc17_ || _loc3_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(§§pop() - 1);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§push(§§pop() + §§pop() * §§pop());
                                                                                                                                                                                                            }
                                                                                                                                                                                                            _loc10_ = Number(§§pop());
                                                                                                                                                                                                            addr872:
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr878:
                                                                                                                                                                                                         addr880:
                                                                                                                                                                                                         addr882:
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr812:
                                                                                                                                                                                                      §§push(_loc9_);
                                                                                                                                                                                                      if(_loc17_ || _loc3_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr820:
                                                                                                                                                                                                         §§push(0.1);
                                                                                                                                                                                                         if(_loc17_ || _loc3_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(§§pop() < §§pop())
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr828:
                                                                                                                                                                                                               if(_loc17_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr830:
                                                                                                                                                                                                                  §§push(0.1);
                                                                                                                                                                                                                  if(_loc17_ || _loc3_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc17_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr841:
                                                                                                                                                                                                                        §§push(Number(§§pop()));
                                                                                                                                                                                                                        if(_loc17_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           _loc9_ = §§pop();
                                                                                                                                                                                                                           addr844:
                                                                                                                                                                                                                           §§push(_loc10_);
                                                                                                                                                                                                                           if(_loc17_ || _loc2_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(!_loc18_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(_loc17_ || _loc2_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(0.1);
                                                                                                                                                                                                                                    if(!(_loc18_ && param1))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(!(_loc18_ && _loc2_))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(§§pop() < §§pop())
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             addr769:
                                                                                                                                                                                                                                             if(_loc17_ || param1)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(!(_loc18_ && param1))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(0.1);
                                                                                                                                                                                                                                                   if(_loc17_ || param1)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      addr801:
                                                                                                                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   if(_loc17_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      _loc10_ = §§pop();
                                                                                                                                                                                                                                                      addr805:
                                                                                                                                                                                                                                                      if(!_loc18_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(!_loc18_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            addr725:
                                                                                                                                                                                                                                                            §§push(_loc2_);
                                                                                                                                                                                                                                                            §§push(_loc9_);
                                                                                                                                                                                                                                                            if(!_loc18_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(§§pop() / texture.height);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§pop().scaleY = §§pop();
                                                                                                                                                                                                                                                            addr734:
                                                                                                                                                                                                                                                            §§push(_loc2_);
                                                                                                                                                                                                                                                            §§push(_loc10_);
                                                                                                                                                                                                                                                            if(!_loc18_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(_loc9_);
                                                                                                                                                                                                                                                               if(_loc17_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  addr696:
                                                                                                                                                                                                                                                                  §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                  if(!(_loc18_ && param1))
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(_loc3_);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§pop().scaleDeltaY = §§pop() / texture.height;
                                                                                                                                                                                                                                                                  if(!_loc18_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(!(_loc18_ && _loc3_))
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(!(_loc18_ && param1))
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(_loc17_ || _loc2_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(false)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§goto(addr725);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              var _loc11_:ColorArgb = _loc2_.colorArgb;
                                                                                                                                                                                                                                                                              var _loc12_:ColorArgb = _loc2_.colorArgbDelta;
                                                                                                                                                                                                                                                                              if(!_loc18_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 _loc11_.red = this.§^5§.red;
                                                                                                                                                                                                                                                                                 _loc11_.green = this.§^5§.green;
                                                                                                                                                                                                                                                                                 _loc11_.blue = this.§^5§.blue;
                                                                                                                                                                                                                                                                                 _loc11_.alpha = this.§^5§.alpha;
                                                                                                                                                                                                                                                                                 addr1155:
                                                                                                                                                                                                                                                                                 addr1141:
                                                                                                                                                                                                                                                                                 addr1148:
                                                                                                                                                                                                                                                                                 addr1161:
                                                                                                                                                                                                                                                                                 if(this.§!!=§.red != 0)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    addr1097:
                                                                                                                                                                                                                                                                                    §§push(_loc11_);
                                                                                                                                                                                                                                                                                    §§push(_loc11_.red);
                                                                                                                                                                                                                                                                                    if(!(_loc18_ && this))
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§push(this.§!!=§.red);
                                                                                                                                                                                                                                                                                       if(!(_loc18_ && param1))
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§push(Math.random() * 2);
                                                                                                                                                                                                                                                                                          if(!_loc18_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(§§pop() - 1);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§pop().red = §§pop();
                                                                                                                                                                                                                                                                                    if(_loc17_ || _loc3_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       addr1059:
                                                                                                                                                                                                                                                                                       §§push(this.§!!=§.green);
                                                                                                                                                                                                                                                                                       if(_loc17_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          addr1062:
                                                                                                                                                                                                                                                                                          if(§§pop() != 0)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             addr1063:
                                                                                                                                                                                                                                                                                             if(!_loc18_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§push(_loc11_);
                                                                                                                                                                                                                                                                                                §§push(_loc11_.green);
                                                                                                                                                                                                                                                                                                if(_loc17_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§push(this.§!!=§.green);
                                                                                                                                                                                                                                                                                                   if(!(_loc18_ && _loc3_))
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§push(Math.random() * 2);
                                                                                                                                                                                                                                                                                                      if(!_loc18_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§push(§§pop() - 1);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§pop().green = §§pop();
                                                                                                                                                                                                                                                                                                addr988:
                                                                                                                                                                                                                                                                                                addr1090:
                                                                                                                                                                                                                                                                                                §§push(this.§!!=§);
                                                                                                                                                                                                                                                                                                if(!(_loc18_ && param1))
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§push(§§pop().blue);
                                                                                                                                                                                                                                                                                                   if(!(_loc18_ && _loc3_))
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(_loc17_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         addr1009:
                                                                                                                                                                                                                                                                                                         if(§§pop() != 0)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            addr1010:
                                                                                                                                                                                                                                                                                                            if(_loc17_ || param1)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               addr1017:
                                                                                                                                                                                                                                                                                                               §§push(_loc11_);
                                                                                                                                                                                                                                                                                                               §§push(_loc11_.blue);
                                                                                                                                                                                                                                                                                                               if(_loc17_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  §§push(this.§!!=§.blue);
                                                                                                                                                                                                                                                                                                                  if(!(_loc18_ && _loc2_))
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§push(Math.random() * 2);
                                                                                                                                                                                                                                                                                                                     if(_loc17_ || this)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        §§push(§§pop() - 1);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§pop().blue = §§pop();
                                                                                                                                                                                                                                                                                                               addr1047:
                                                                                                                                                                                                                                                                                                               if(!(_loc18_ && _loc2_))
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  addr894:
                                                                                                                                                                                                                                                                                                                  §§push(this.§!!=§);
                                                                                                                                                                                                                                                                                                                  if(!_loc18_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     if(!_loc18_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        §§push(§§pop().alpha);
                                                                                                                                                                                                                                                                                                                        if(!_loc18_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           §§push(0);
                                                                                                                                                                                                                                                                                                                           if(_loc17_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              if(!_loc18_)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 if(_loc17_ || this)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    if(§§pop() != §§pop())
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       if(_loc17_)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          if(_loc17_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             if(!(_loc18_ && this))
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                if(!(_loc18_ && _loc2_))
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   if(_loc17_ || param1)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      §§push(_loc11_);
                                                                                                                                                                                                                                                                                                                                                      §§push(_loc11_.alpha);
                                                                                                                                                                                                                                                                                                                                                      if(_loc17_)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         §§push(this.§!!=§.alpha);
                                                                                                                                                                                                                                                                                                                                                         if(_loc17_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            §§push(Math.random() * 2);
                                                                                                                                                                                                                                                                                                                                                            if(!(_loc18_ && this))
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               §§push(§§pop() - 1);
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      §§pop().alpha = §§pop();
                                                                                                                                                                                                                                                                                                                                                      addr977:
                                                                                                                                                                                                                                                                                                                                                      if(!(_loc18_ && this))
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         if(!_loc18_)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            if(false)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               §§goto(addr988);
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            addr1162:
                                                                                                                                                                                                                                                                                                                                                            §§push(this.§ W§.red);
                                                                                                                                                                                                                                                                                                                                                            if(!_loc18_)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               addr1167:
                                                                                                                                                                                                                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            var _loc13_:* = §§pop();
                                                                                                                                                                                                                                                                                                                                                            §§push(this.§ W§.green);
                                                                                                                                                                                                                                                                                                                                                            if(_loc17_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            var _loc14_:* = §§pop();
                                                                                                                                                                                                                                                                                                                                                            §§push(this.§ W§.blue);
                                                                                                                                                                                                                                                                                                                                                            if(_loc17_)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            var _loc15_:* = §§pop();
                                                                                                                                                                                                                                                                                                                                                            §§push(this.§ W§.alpha);
                                                                                                                                                                                                                                                                                                                                                            if(!_loc18_)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            var _loc16_:* = §§pop();
                                                                                                                                                                                                                                                                                                                                                            if(!_loc18_)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               addr1576:
                                                                                                                                                                                                                                                                                                                                                               addr1574:
                                                                                                                                                                                                                                                                                                                                                               addr1575:
                                                                                                                                                                                                                                                                                                                                                               if(this.§9?§.red != 0)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  if(!(_loc18_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     addr1596:
                                                                                                                                                                                                                                                                                                                                                                     _loc13_ += this.§9?§.red * (Math.random() * 2 - 1);
                                                                                                                                                                                                                                                                                                                                                                     addr1593:
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  addr1597:
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               addr1533:
                                                                                                                                                                                                                                                                                                                                                               if(this.§9?§.green != 0)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  addr1535:
                                                                                                                                                                                                                                                                                                                                                                  §§push(_loc14_);
                                                                                                                                                                                                                                                                                                                                                                  if(_loc17_)
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     addr1540:
                                                                                                                                                                                                                                                                                                                                                                     §§push(this.§9?§.green);
                                                                                                                                                                                                                                                                                                                                                                     §§push(Math.random() * 2);
                                                                                                                                                                                                                                                                                                                                                                     if(_loc17_)
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        §§push(§§pop() - 1);
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     if(!(_loc18_ && _loc2_))
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        addr1557:
                                                                                                                                                                                                                                                                                                                                                                        §§push(Number(§§pop() + §§pop() * §§pop()));
                                                                                                                                                                                                                                                                                                                                                                        if(_loc17_)
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           _loc14_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                                           addr1444:
                                                                                                                                                                                                                                                                                                                                                                           addr1571:
                                                                                                                                                                                                                                                                                                                                                                           §§push(this.§9?§.blue);
                                                                                                                                                                                                                                                                                                                                                                           if(_loc17_ || param1)
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              if(!(_loc18_ && this))
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 if(!_loc18_)
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    addr1462:
                                                                                                                                                                                                                                                                                                                                                                                    §§push(0);
                                                                                                                                                                                                                                                                                                                                                                                    if(_loc17_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       if(§§pop() != §§pop())
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          if(_loc17_)
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             if(_loc17_ || param1)
                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                addr1480:
                                                                                                                                                                                                                                                                                                                                                                                                §§push(_loc15_);
                                                                                                                                                                                                                                                                                                                                                                                                §§push(this.§9?§);
                                                                                                                                                                                                                                                                                                                                                                                                if(_loc17_)
                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                   §§push(§§pop().blue);
                                                                                                                                                                                                                                                                                                                                                                                                   if(_loc17_ || param1)
                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                      if(!(_loc18_ && _loc2_))
                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                         addr1503:
                                                                                                                                                                                                                                                                                                                                                                                                         §§push(Math.random() * 2);
                                                                                                                                                                                                                                                                                                                                                                                                         if(_loc17_)
                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                            addr1506:
                                                                                                                                                                                                                                                                                                                                                                                                            §§push(§§pop() * (§§pop() - 1));
                                                                                                                                                                                                                                                                                                                                                                                                            if(_loc17_ || this)
                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                               if(!(_loc18_ && param1))
                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                  addr1522:
                                                                                                                                                                                                                                                                                                                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                  if(_loc17_)
                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                     addr1525:
                                                                                                                                                                                                                                                                                                                                                                                                                     §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                                                                     if(!_loc18_)
                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                        _loc15_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                        addr1528:
                                                                                                                                                                                                                                                                                                                                                                                                                        §§push(this.§9?§);
                                                                                                                                                                                                                                                                                                                                                                                                                        if(!(_loc18_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                           if(_loc17_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                                                                              if(_loc17_)
                                                                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                                                                 §§push(§§pop().alpha);
                                                                                                                                                                                                                                                                                                                                                                                                                                 if(!_loc18_)
                                                                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                                                                    if(!_loc18_)
                                                                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                                                                       if(_loc17_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                                                                          §§push(0);
                                                                                                                                                                                                                                                                                                                                                                                                                                          if(!_loc18_)
                                                                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                                                                             if(_loc17_)
                                                                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                                                                if(§§pop() != §§pop())
                                                                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                                                                   addr1369:
                                                                                                                                                                                                                                                                                                                                                                                                                                                   §§push(_loc16_);
                                                                                                                                                                                                                                                                                                                                                                                                                                                   if(!_loc18_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                                                                      if(!_loc18_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                                                                         §§push(this.§9?§);
                                                                                                                                                                                                                                                                                                                                                                                                                                                         if(_loc17_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                                                                            if(!_loc18_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                                                                               §§push(§§pop().alpha);
                                                                                                                                                                                                                                                                                                                                                                                                                                                               if(!_loc18_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  if(_loc17_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     §§push(Math.random() * 2);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     if(_loc17_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        if(!(_loc18_ && _loc2_))
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           addr1404:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           §§push(§§pop() - 1);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           if(_loc17_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              if(!(_loc18_ && _loc2_))
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 addr1414:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 if(_loc17_ || param1)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    if(_loc17_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       if(_loc17_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          if(_loc17_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             addr1439:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             _loc16_ = Number(§§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             addr1440:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             §§push(_loc12_);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             §§push(_loc13_);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             if(_loc17_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                §§push(_loc11_.red);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                if(!_loc18_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   addr1330:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   if(_loc17_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      §§push(_loc3_);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   §§pop().red = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   addr1331:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   §§push(_loc12_);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   §§push(_loc14_);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   if(!(_loc18_ && param1))
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      §§push(_loc11_.green);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      if(_loc17_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         addr1298:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         if(_loc17_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            §§push(_loc3_);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         §§pop().green = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         addr1299:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         if(!(_loc18_ && param1))
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            if(_loc17_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               if(!(_loc18_ && param1))
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  §§push(_loc12_);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  §§push(_loc15_);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  if(!(_loc18_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     §§push(_loc11_.blue);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     if(_loc17_ || this)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        addr1263:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        if(!(_loc18_ && param1))
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           §§push(_loc3_);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        §§pop().blue = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        addr1264:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        if(!(_loc18_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           if(!(_loc18_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              §§push(_loc12_);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              §§push(_loc16_);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              if(_loc17_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 §§push(_loc11_.alpha);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 if(_loc17_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    addr1221:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    if(!_loc18_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       §§push(_loc3_);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    §§pop().alpha = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    if(!_loc18_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       if(!_loc18_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          if(_loc18_ && _loc2_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             §§goto(addr1535);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          return;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr1299);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr1264);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr1221);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr1528);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr1440);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr1263);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  addr1315:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               §§goto(addr1597);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            §§goto(addr1369);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         §§goto(addr1331);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   §§goto(addr1298);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             §§goto(addr1330);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr1557);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr1480);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr1439);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr1557);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr1593);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr1506);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr1503);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr1404);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr1506);
                                                                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                                                                               §§goto(addr1414);
                                                                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                                                                            §§goto(addr1540);
                                                                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                                                                         §§goto(addr1480);
                                                                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                                                                      §§goto(addr1533);
                                                                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                                                                §§goto(addr1439);
                                                                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                                                                             §§goto(addr1576);
                                                                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr1462);
                                                                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr1522);
                                                                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr1525);
                                                                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr1439);
                                                                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr1574);
                                                                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr1576);
                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr1444);
                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr1535);
                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                               §§goto(addr1596);
                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                         §§goto(addr1540);
                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                      §§goto(addr1596);
                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                   §§goto(addr1506);
                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                §§goto(addr1596);
                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                             §§goto(addr1571);
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr1528);
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr1576);
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr1575);
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr1557);
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr1525);
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr1596);
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               §§goto(addr1444);
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            §§goto(addr1315);
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         §§goto(addr1155);
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      §§goto(addr1047);
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   §§goto(addr1141);
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                §§goto(addr1097);
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             §§goto(addr1063);
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          §§goto(addr1010);
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       §§goto(addr977);
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    §§goto(addr1162);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§goto(addr1155);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §§goto(addr1062);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§goto(addr1009);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§goto(addr1167);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr1155);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr988);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr1090);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr1097);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr894);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr1059);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr1167);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr1059);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr1148);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr988);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr1155);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr1161);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr1059);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr1017);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr872);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr769);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr805);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr734);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                                               if(!_loc17_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr696);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr828);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr844);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr841);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr878);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr851);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr725);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr869);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr820);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr881);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr812);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr801);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr880);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr871);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr841);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr882);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr844);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr869);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr870);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr830);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr667);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr537);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr508);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr485);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr493);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr555);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr645);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr601);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr594);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr667);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr643);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr655);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr628);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr580);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr508);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr623);
                                                                                                                                                }
                                                                                                                                                §§goto(addr659);
                                                                                                                                             }
                                                                                                                                             §§goto(addr644);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr667);
                                                                                                                                    }
                                                                                                                                    §§goto(addr623);
                                                                                                                                 }
                                                                                                                                 §§goto(addr667);
                                                                                                                              }
                                                                                                                              §§goto(addr594);
                                                                                                                           }
                                                                                                                           §§goto(addr659);
                                                                                                                        }
                                                                                                                        §§goto(addr593);
                                                                                                                        addr635:
                                                                                                                     }
                                                                                                                     §§goto(addr641);
                                                                                                                  }
                                                                                                                  §§goto(addr655);
                                                                                                               }
                                                                                                               §§goto(addr659);
                                                                                                            }
                                                                                                            §§goto(addr623);
                                                                                                         }
                                                                                                         §§goto(addr663);
                                                                                                      }
                                                                                                      §§goto(addr667);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr567);
                                                                                             }
                                                                                             §§goto(addr635);
                                                                                          }
                                                                                          §§goto(addr440);
                                                                                       }
                                                                                       §§goto(addr448);
                                                                                    }
                                                                                    §§goto(addr421);
                                                                                 }
                                                                                 continue loop1;
                                                                              }
                                                                              continue loop3;
                                                                           }
                                                                           §§goto(addr411);
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            continue loop13;
                                                         }
                                                         continue loop12;
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          §§goto(addr136);
                                       }
                                    }
                                    else
                                    {
                                       addr193:
                                       §§push(Math.random() * 2);
                                       if(!_loc18_)
                                       {
                                          addr200:
                                          §§push(§§pop() + §§pop() * (§§pop() - 1));
                                          if(_loc17_ || _loc3_)
                                          {
                                             §§goto(addr209);
                                          }
                                       }
                                       §§goto(addr200);
                                    }
                                 }
                                 §§push(this.§[";§);
                                 if(!_loc18_)
                                 {
                                    §§goto(addr193);
                                 }
                                 §§goto(addr200);
                                 addr179:
                              }
                           }
                           §§goto(addr209);
                        }
                        §§goto(addr193);
                     }
                  }
                  §§goto(addr200);
               }
               §§goto(addr172);
            }
            §§goto(addr209);
         }
         §§goto(addr179);
      }
      
      override protected function advanceParticle(param1:§[M§, param2:Number) : void
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         var _loc12_:* = NaN;
         var _loc3_:PDParticle = param1 as PDParticle;
         §§push(_loc3_.§ B§ - _loc3_.§^#§);
         if(_loc13_)
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:*;
         §§push(_loc4_ = §§pop());
         if(_loc13_ || _loc3_)
         {
            §§push(param2);
            if(_loc13_ || this)
            {
               §§push(§§pop() > §§pop());
               if(!_loc14_)
               {
                  if(§§pop())
                  {
                     if(_loc13_ || param1)
                     {
                        §§push(param2);
                        if(!_loc14_)
                        {
                           §§push(Number(§§pop()));
                           if(_loc13_ || _loc3_)
                           {
                              addr97:
                              §§push(Number(§§pop()));
                              if(!_loc14_)
                              {
                                 param2 = §§pop();
                                 if(_loc13_)
                                 {
                                    _loc3_.§^#§ += param2;
                                    loop0:
                                    while(true)
                                    {
                                       if(this.§>5§ == this.§?!X§)
                                       {
                                          if(_loc13_)
                                          {
                                             §§push(_loc3_.skipUpdate);
                                             loop1:
                                             while(true)
                                             {
                                                §§push(!§§pop());
                                                loop2:
                                                while(true)
                                                {
                                                   §§push(§§pop());
                                                   loop3:
                                                   while(true)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         while(true)
                                                         {
                                                            §§pop();
                                                            addr1372:
                                                            while(true)
                                                            {
                                                               §§push(this.§,g§);
                                                               addr1330:
                                                               while(true)
                                                               {
                                                                  §§push(!§§pop());
                                                               }
                                                            }
                                                         }
                                                         addr1371:
                                                      }
                                                      while(true)
                                                      {
                                                         loop6:
                                                         while(true)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               loop7:
                                                               while(true)
                                                               {
                                                                  §§push(this.§,g§);
                                                                  loop8:
                                                                  while(true)
                                                                  {
                                                                     if(!§§pop())
                                                                     {
                                                                        _loc3_.rotation += _loc3_.rotationDelta * param2;
                                                                        loop9:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc3_);
                                                                           §§push(_loc3_.radius);
                                                                           if(_loc13_)
                                                                           {
                                                                              §§push(_loc3_.radiusDelta);
                                                                              if(!(_loc14_ && param2))
                                                                              {
                                                                                 §§push(§§pop() * param2);
                                                                              }
                                                                              §§push(§§pop() - §§pop());
                                                                           }
                                                                           §§pop().radius = §§pop();
                                                                           loop10:
                                                                           while(true)
                                                                           {
                                                                              loop11:
                                                                              while(true)
                                                                              {
                                                                                 _loc3_.x = §'"9§ - Math.cos(_loc3_.rotation) * _loc3_.radius;
                                                                                 loop12:
                                                                                 while(true)
                                                                                 {
                                                                                    _loc3_.y = §0!d§ - Math.sin(_loc3_.rotation) * _loc3_.radius;
                                                                                    loop13:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc3_.radius);
                                                                                       addr1227:
                                                                                       loop14:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(this.§!!Z§);
                                                                                          loop15:
                                                                                          while(true)
                                                                                          {
                                                                                             if(§§pop() < §§pop())
                                                                                             {
                                                                                                loop16:
                                                                                                while(true)
                                                                                                {
                                                                                                   _loc3_.§^#§ = _loc3_.§ B§;
                                                                                                   loop17:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      addr1212:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc3_.skipUpdate);
                                                                                                            addr588:
                                                                                                            loop144:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(!§§pop());
                                                                                                               loop126:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(_loc13_ || param2)
                                                                                                                  {
                                                                                                                     if(_loc14_)
                                                                                                                     {
                                                                                                                        continue loop2;
                                                                                                                     }
                                                                                                                     if(_loc14_)
                                                                                                                     {
                                                                                                                        continue loop1;
                                                                                                                     }
                                                                                                                     §§push(§§pop());
                                                                                                                     if(_loc13_ || _loc3_)
                                                                                                                     {
                                                                                                                        if(_loc14_)
                                                                                                                        {
                                                                                                                           continue loop3;
                                                                                                                        }
                                                                                                                        if(!§§pop())
                                                                                                                        {
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(!_loc14_)
                                                                                                                              {
                                                                                                                                 break loop126;
                                                                                                                              }
                                                                                                                              loop113:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(§§pop())
                                                                                                                                 {
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(_loc3_);
                                                                                                                                       §§push(_loc3_.velocityX);
                                                                                                                                       if(_loc13_ || this)
                                                                                                                                       {
                                                                                                                                          §§push(2 * param2);
                                                                                                                                          if(!(_loc14_ && this))
                                                                                                                                          {
                                                                                                                                             §§push(this.§2P§);
                                                                                                                                             if(_loc13_ || param1)
                                                                                                                                             {
                                                                                                                                                §§push(_loc8_);
                                                                                                                                                if(_loc13_ || param1)
                                                                                                                                                {
                                                                                                                                                   addr858:
                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                   if(_loc13_ || this)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc10_);
                                                                                                                                                   }
                                                                                                                                                   §§pop().velocityX = §§pop() + §§pop() * §§pop();
                                                                                                                                                   loop118:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc3_);
                                                                                                                                                      §§push(_loc3_.velocityY);
                                                                                                                                                      if(!_loc14_)
                                                                                                                                                      {
                                                                                                                                                         §§push(2 * param2);
                                                                                                                                                         if(_loc13_)
                                                                                                                                                         {
                                                                                                                                                            §§push(this.§^!p§);
                                                                                                                                                            if(!(_loc14_ && param1))
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc9_);
                                                                                                                                                               if(_loc13_ || param2)
                                                                                                                                                               {
                                                                                                                                                                  addr802:
                                                                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                                                                  if(!_loc14_)
                                                                                                                                                                  {
                                                                                                                                                                     addr800:
                                                                                                                                                                     §§push(§§pop() + _loc11_);
                                                                                                                                                                  }
                                                                                                                                                                  §§pop().velocityY = §§pop() + §§pop() * §§pop();
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(!_loc14_)
                                                                                                                                                                     {
                                                                                                                                                                        _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
                                                                                                                                                                        continue loop118;
                                                                                                                                                                     }
                                                                                                                                                                     loop104:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc11_);
                                                                                                                                                                        addr935:
                                                                                                                                                                        loop105:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc13_ || this)
                                                                                                                                                                           {
                                                                                                                                                                              addr942:
                                                                                                                                                                              if(_loc14_ && param2)
                                                                                                                                                                              {
                                                                                                                                                                                 continue loop14;
                                                                                                                                                                              }
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(-§§pop());
                                                                                                                                                                                 addr950:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!_loc14_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr952:
                                                                                                                                                                                       §§push(_loc3_.tangentialAcceleration);
                                                                                                                                                                                       loop102:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc13_ || param1)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!_loc14_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                                                                loop106:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc13_ || param2)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc13_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr974:
                                                                                                                                                                                                            if(!(_loc14_ && _loc3_))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               break;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                                                                               addr1010:
                                                                                                                                                                                                               loop71:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc13_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!(_loc14_ && param1))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        _loc9_ = §§pop();
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!(_loc14_ && _loc3_))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr985:
                                                                                                                                                                                                                              §§push(_loc10_);
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                                                                                                                 addr986:
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(!(_loc14_ && param2))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       _loc12_ = §§pop();
                                                                                                                                                                                                                                       continue loop104;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    loop66:
                                                                                                                                                                                                                                    while(!(_loc14_ && _loc3_))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr1041:
                                                                                                                                                                                                                                       if(!(_loc14_ && param2))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          _loc8_ = §§pop();
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(_loc9_);
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(!(_loc14_ && this))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(_loc3_.radialAcceleration);
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(!_loc14_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                         continue loop71;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      addr901:
                                                                                                                                                                                                                                                      if(!(_loc13_ || param2))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         continue;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      if(!(_loc13_ || param1))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         continue loop15;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(_loc13_ || param2)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(!(_loc14_ && param1))
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                  addr931:
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     _loc11_ = §§pop();
                                                                                                                                                                                                                                                                     addr932:
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        continue loop113;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               addr930:
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            else
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(Number(§§pop()));
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               addr1200:
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         loop35:
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            _loc5_ = §§pop();
                                                                                                                                                                                                                                                            addr1202:
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(_loc14_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  continue loop13;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               if(_loc13_ || param2)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(_loc3_.y - _loc3_.startY);
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                     loop38:
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        _loc6_ = §§pop();
                                                                                                                                                                                                                                                                        addr1172:
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(Number(Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_)));
                                                                                                                                                                                                                                                                           addr1126:
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(§§pop());
                                                                                                                                                                                                                                                                              if(!_loc14_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    _loc7_ = §§pop();
                                                                                                                                                                                                                                                                                    if(_loc13_ || param2)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       addr1138:
                                                                                                                                                                                                                                                                                       §§push(0.01);
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(§§pop() < §§pop())
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             continue loop9;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          addr1106:
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(_loc5_);
                                                                                                                                                                                                                                                                                             addr1108:
                                                                                                                                                                                                                                                                                             while(_loc13_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§push(_loc7_);
                                                                                                                                                                                                                                                                                                loop48:
                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                                                                                   addr1112:
                                                                                                                                                                                                                                                                                                   loop146:
                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                      addr1113:
                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         _loc8_ = §§pop();
                                                                                                                                                                                                                                                                                                         addr1114:
                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§push(_loc6_);
                                                                                                                                                                                                                                                                                                            if(!(_loc14_ && _loc3_))
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§push(_loc7_);
                                                                                                                                                                                                                                                                                                               continue loop48;
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            addr1096:
                                                                                                                                                                                                                                                                                                            addr1096:
                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               if(!(_loc14_ && param2))
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                  break loop66;
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               continue loop146;
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            continue loop146;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             continue loop38;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       addr1138:
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    addr1155:
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       _loc7_ = §§pop();
                                                                                                                                                                                                                                                                                       addr1156:
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(_loc13_ || _loc3_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§goto(addr1106);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§push(_loc3_);
                                                                                                                                                                                                                                                                                                §§push(_loc3_.radius);
                                                                                                                                                                                                                                                                                                if(_loc13_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§push(_loc3_.radiusDelta);
                                                                                                                                                                                                                                                                                                   if(!(_loc14_ && param2))
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§push(§§pop() * param2);
                                                                                                                                                                                                                                                                                                      if(!_loc14_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§push(§§pop() * 2);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§pop().radius = §§pop();
                                                                                                                                                                                                                                                                                                addr1317:
                                                                                                                                                                                                                                                                                                while(_loc13_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   if(_loc13_ || _loc3_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      continue loop11;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr1372);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                continue loop7;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             addr1357:
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 addr1129:
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr1138);
                                                                                                                                                                                                                                                                              §§goto(addr1041);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  addr1170:
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               else
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  addr1336:
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr1357);
                                                                                                                                                                                                                                                               continue loop35;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   while(!_loc14_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(_loc13_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                                                                                                                         loop61:
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            _loc11_ = §§pop();
                                                                                                                                                                                                                                                            addr1058:
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(!(_loc14_ && param2))
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  addr1065:
                                                                                                                                                                                                                                                                  if(_loc13_ || param1)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(_loc8_);
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(_loc3_.radialAcceleration);
                                                                                                                                                                                                                                                                        addr1032:
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                           addr1033:
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              continue loop66;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        continue loop105;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     addr1030:
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  else
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§goto(addr1200);
                                                                                                                                                                                                                                                                        §§goto(addr1065);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     addr1195:
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr1156);
                                                                                                                                                                                                                                                               continue loop61;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         addr1057:
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr1155);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                                                                                                                      addr1076:
                                                                                                                                                                                                                                                      loop58:
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         _loc10_ = §§pop();
                                                                                                                                                                                                                                                         addr1077:
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§goto(addr1052);
                                                                                                                                                                                                                                                            continue loop58;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   addr1052:
                                                                                                                                                                                                                                                   addr1075:
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr1032);
                                                                                                                                                                                                                                                addr885:
                                                                                                                                                                                                                                                if(!(_loc13_ || param1))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   continue;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§push(_loc3_.tangentialAcceleration);
                                                                                                                                                                                                                                                if(!(_loc13_ || _loc3_))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   continue loop102;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr901);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          addr1049:
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1126);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       _loc9_ = §§pop();
                                                                                                                                                                                                                                       §§goto(addr1034);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    addr1034:
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              addr985:
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§goto(addr1075);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        addr1020:
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1113);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1076);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr974);
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr985);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      _loc10_ = §§pop();
                                                                                                                                                                                                      addr982:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(_loc12_);
                                                                                                                                                                                                         if(_loc13_ || param1)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc14_ && _loc3_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue loop106;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            if(!(_loc14_ && param2))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§goto(addr885);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr986);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr916);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr982:
                                                                                                                                                                                                      addr972:
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1057);
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1138);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1088);
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1033);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1030);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  addr804:
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr800);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr802);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr858);
                                                                                                                                    }
                                                                                                                                    addr811:
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    §§push(_loc3_);
                                                                                                                                    §§push(_loc3_.velocityX);
                                                                                                                                    if(!_loc14_)
                                                                                                                                    {
                                                                                                                                       §§push(param2);
                                                                                                                                       if(!_loc14_)
                                                                                                                                       {
                                                                                                                                          §§push(this.§2P§);
                                                                                                                                          if(!(_loc14_ && this))
                                                                                                                                          {
                                                                                                                                             §§push(_loc8_);
                                                                                                                                             if(_loc13_)
                                                                                                                                             {
                                                                                                                                                addr740:
                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                if(_loc13_ || _loc3_)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc10_);
                                                                                                                                                }
                                                                                                                                                §§pop().velocityX = §§pop() + §§pop() * §§pop();
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(!_loc14_)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc13_)
                                                                                                                                                      {
                                                                                                                                                         continue loop16;
                                                                                                                                                      }
                                                                                                                                                      if(!_loc13_)
                                                                                                                                                      {
                                                                                                                                                         continue loop0;
                                                                                                                                                      }
                                                                                                                                                      §§push(_loc3_);
                                                                                                                                                      §§push(_loc3_.velocityY);
                                                                                                                                                      if(_loc13_)
                                                                                                                                                      {
                                                                                                                                                         §§push(param2);
                                                                                                                                                         if(_loc13_)
                                                                                                                                                         {
                                                                                                                                                            §§push(this.§^!p§);
                                                                                                                                                            if(!(_loc14_ && param2))
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc9_);
                                                                                                                                                               if(_loc13_ || param2)
                                                                                                                                                               {
                                                                                                                                                                  addr700:
                                                                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                                                                  if(!_loc14_)
                                                                                                                                                                  {
                                                                                                                                                                     addr698:
                                                                                                                                                                     §§push(§§pop() + _loc11_);
                                                                                                                                                                  }
                                                                                                                                                                  §§pop().velocityY = §§pop() + §§pop() * §§pop();
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(!_loc14_)
                                                                                                                                                                     {
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           _loc3_.rotation += _loc3_.rotationDelta * param2;
                                                                                                                                                                           addr657:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr632);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        addr704:
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1020);
                                                                                                                                                                  }
                                                                                                                                                                  addr702:
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr698);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr700);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr982);
                                                                                                                                                   §§goto(addr740);
                                                                                                                                                }
                                                                                                                                                addr741:
                                                                                                                                             }
                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr740);
                                                                                                                                 }
                                                                                                                                 §§goto(addr982);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           addr611:
                                                                                                                        }
                                                                                                                        loop127:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(§§pop())
                                                                                                                           {
                                                                                                                              loop121:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(this.§,g§);
                                                                                                                                 loop122:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(!_loc13_)
                                                                                                                                    {
                                                                                                                                       continue loop144;
                                                                                                                                    }
                                                                                                                                    if(_loc13_)
                                                                                                                                    {
                                                                                                                                       if(!(_loc13_ || param1))
                                                                                                                                       {
                                                                                                                                          continue loop8;
                                                                                                                                       }
                                                                                                                                       if(§§pop())
                                                                                                                                       {
                                                                                                                                          loop109:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(param2);
                                                                                                                                             if(!_loc14_)
                                                                                                                                             {
                                                                                                                                                if(!(_loc14_ && param2))
                                                                                                                                                {
                                                                                                                                                   if(!(_loc14_ && param1))
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() * 2);
                                                                                                                                                      if(_loc13_ || param2)
                                                                                                                                                      {
                                                                                                                                                         addr544:
                                                                                                                                                         if(_loc13_ || param2)
                                                                                                                                                         {
                                                                                                                                                            if(!_loc14_)
                                                                                                                                                            {
                                                                                                                                                               if(_loc13_)
                                                                                                                                                               {
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(Number(§§pop()));
                                                                                                                                                                     addr556:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(!(_loc14_ && this))
                                                                                                                                                                        {
                                                                                                                                                                           if(!_loc14_)
                                                                                                                                                                           {
                                                                                                                                                                              if(!(_loc14_ && _loc3_))
                                                                                                                                                                              {
                                                                                                                                                                                 if(!_loc14_)
                                                                                                                                                                                 {
                                                                                                                                                                                    param2 = §§pop();
                                                                                                                                                                                    loop110:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!_loc14_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc13_ || this)
                                                                                                                                                                                          {
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                _loc3_.scaleX += _loc3_.scaleDeltaX * param2;
                                                                                                                                                                                                loop116:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc13_ || _loc3_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      _loc3_.scaleY += _loc3_.scaleDeltaY * param2;
                                                                                                                                                                                                      loop123:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!(_loc14_ && param2))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc13_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(_loc3_.colorArgb);
                                                                                                                                                                                                               loop124:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(_loc3_.colorArgb);
                                                                                                                                                                                                                  loop135:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§§pop().red);
                                                                                                                                                                                                                     loop129:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(_loc3_.colorArgbDelta);
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(§§pop().red);
                                                                                                                                                                                                                           loop87:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(param2);
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                 loop86:
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                    loop132:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§pop().red = §§pop();
                                                                                                                                                                                                                                       loop130:
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(_loc3_.colorArgb);
                                                                                                                                                                                                                                          loop137:
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(_loc14_ && param2)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                continue loop124;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§push(_loc3_.colorArgb);
                                                                                                                                                                                                                                             loop136:
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(§§pop().green);
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(_loc3_.colorArgbDelta);
                                                                                                                                                                                                                                                   loop134:
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(§§pop().green);
                                                                                                                                                                                                                                                      loop133:
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(param2);
                                                                                                                                                                                                                                                         loop85:
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                            loop88:
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§pop().green = §§pop();
                                                                                                                                                                                                                                                                  addr402:
                                                                                                                                                                                                                                                                  addr423:
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(_loc14_ && this)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        continue loop110;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     if(!(_loc13_ || param2))
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        continue loop12;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     if(!(_loc14_ && this))
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        break;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr1317);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(_loc3_.colorArgb);
                                                                                                                                                                                                                                                                     loop75:
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(!_loc13_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           continue loop137;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§push(_loc3_.colorArgb);
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(_loc14_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              continue loop136;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           if(_loc14_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              continue loop135;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§push(§§pop().blue);
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(_loc3_.colorArgbDelta);
                                                                                                                                                                                                                                                                              addr354:
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(!(_loc13_ || param2))
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    continue loop134;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§push(§§pop().blue);
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(param2);
                                                                                                                                                                                                                                                                                    addr363:
                                                                                                                                                                                                                                                                                    addr271:
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                       addr364:
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(_loc14_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             continue loop133;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(_loc13_ || _loc3_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§pop().blue = §§pop();
                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   if(_loc13_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(!_loc13_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         continue loop130;
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      if(_loc13_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         continue loop75;
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr1202);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   else
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§goto(addr402);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                continue loop75;
                                                                                                                                                                                                                                                                                                addr375:
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             continue loop132;
                                                                                                                                                                                                                                                                                             addr315:
                                                                                                                                                                                                                                                                                             if(_loc14_ && this)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                continue;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             if(!(_loc13_ || _loc3_))
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                continue loop129;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§pop().alpha = §§pop();
                                                                                                                                                                                                                                                                                             loop92:
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(!_loc13_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   while(!_loc14_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(!_loc13_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         continue loop9;
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§push(this.§,g§);
                                                                                                                                                                                                                                                                                                      if(!(_loc14_ && this))
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         if(!(_loc13_ || this))
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            continue loop126;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         if(!_loc14_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            if(_loc13_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§push(!§§pop());
                                                                                                                                                                                                                                                                                                               if(!_loc13_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  continue loop122;
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               addr500:
                                                                                                                                                                                                                                                                                                               if(!_loc14_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  continue loop127;
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr611);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            else
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§goto(addr1371);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         else
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§goto(addr1176);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr1330);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr500);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   break loop126;
                                                                                                                                                                                                                                                                                                   addr614:
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                if(_loc13_ || this)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   _loc3_.red = _loc3_.colorArgb.red;
                                                                                                                                                                                                                                                                                                   loop93:
                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(_loc13_ || this)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         _loc3_.green = _loc3_.colorArgb.green;
                                                                                                                                                                                                                                                                                                         loop94:
                                                                                                                                                                                                                                                                                                         while(_loc13_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            _loc3_.blue = _loc3_.colorArgb.blue;
                                                                                                                                                                                                                                                                                                            while(_loc13_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               if(!(_loc13_ || _loc3_))
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  continue loop123;
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               if(!(_loc13_ || _loc3_))
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  continue loop121;
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               if(_loc13_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  if(_loc13_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     _loc3_.alpha = _loc3_.colorArgb.alpha;
                                                                                                                                                                                                                                                                                                                     while(_loc13_ || param1)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        if(!(_loc14_ && param2))
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           if(!_loc14_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 §§push(_loc3_);
                                                                                                                                                                                                                                                                                                                                 §§push(_loc3_.skipUpdate);
                                                                                                                                                                                                                                                                                                                                 if(_loc13_)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    §§push(!§§pop());
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§pop().skipUpdate = §§pop();
                                                                                                                                                                                                                                                                                                                                 if(_loc14_ && _loc3_)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    break;
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§goto(addr123);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              continue;
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           continue loop10;
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        continue loop17;
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     continue loop94;
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr811);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr804);
                                                                                                                                                                                                                                                                                                               if(_loc14_ && param1)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  continue;
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               if(!_loc14_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  if(!(_loc13_ || _loc3_))
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     continue loop116;
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  if(_loc14_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     continue loop109;
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  if(_loc13_ || param2)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     if(!_loc14_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        return;
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr741);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr642);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               else
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  §§goto(addr375);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            continue loop93;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         continue loop92;
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr1077);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   loop29:
                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§push(this.§,g§);
                                                                                                                                                                                                                                                                                                      addr1176:
                                                                                                                                                                                                                                                                                                      loop30:
                                                                                                                                                                                                                                                                                                      while(!(_loc14_ && param2))
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§push(!§§pop());
                                                                                                                                                                                                                                                                                                         while(!(_loc14_ && this))
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            if(_loc14_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               continue loop6;
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               if(§§pop())
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  §§goto(addr1195);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr632);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            if(_loc13_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§push(!§§pop());
                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  §§push(§§pop());
                                                                                                                                                                                                                                                                                                                  addr1221:
                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     if(!§§pop())
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        break loop30;
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr1193);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               addr1220:
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr1184);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         addr1184:
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§pop();
                                                                                                                                                                                                                                                                                                         continue loop29;
                                                                                                                                                                                                                                                                                                         §§goto(addr1176);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr1330);
                                                                                                                                                                                                                                                                                                §§goto(addr702);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    if(!(_loc13_ || param1))
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       continue;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    if(_loc14_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       continue loop86;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§push(param2);
                                                                                                                                                                                                                                                                                    if(_loc13_ || _loc3_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(_loc14_ && param2)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          continue loop85;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       if(_loc14_ && _loc3_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          continue loop86;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                       if(!_loc14_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(!_loc13_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             continue loop88;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          if(!(_loc13_ || _loc3_))
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             continue loop87;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr315);
                                                                                                                                                                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§goto(addr364);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr367);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§goto(addr363);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr416);
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
                                                                                                                                                                                                                                 continue loop87;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1058);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr760);
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr629);
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             addr458:
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr932);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr657);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1170);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr935);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr916);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr931);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  addr555:
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1108);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1010);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr972);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr556);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1096);
                                                                                                                                                }
                                                                                                                                                §§goto(addr950);
                                                                                                                                             }
                                                                                                                                             §§goto(addr544);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr458);
                                                                                                                                    }
                                                                                                                                    §§goto(addr1184);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr108);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr1221);
                                                                                                                  }
                                                                                                                  §§goto(addr1220);
                                                                                                               }
                                                                                                               §§pop();
                                                                                                               §§goto(addr614);
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr1212);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr1336);
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr1212);
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          §§goto(addr1372);
                                       }
                                       else
                                       {
                                          §§push(_loc3_.skipUpdate);
                                       }
                                       §§goto(addr1217);
                                    }
                                 }
                                 §§goto(addr423);
                              }
                              §§goto(addr985);
                           }
                           §§goto(addr555);
                        }
                        §§goto(addr1227);
                     }
                     §§goto(addr704);
                  }
                  else
                  {
                     §§push(_loc4_);
                     if(!(_loc14_ && this))
                     {
                        §§push(Number(§§pop()));
                        if(!_loc14_)
                        {
                           §§goto(addr97);
                        }
                        §§goto(addr949);
                     }
                  }
                  §§goto(addr930);
               }
               §§goto(addr588);
            }
            §§goto(addr1129);
         }
         §§goto(addr1112);
      }
      
      private function §3@§(param1:XML, param2:Texture) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.§,$§ = parseFloat(param1.sourcePositionVariance.attribute("x"));
            while(true)
            {
               this.§1`§ = parseFloat(param1.sourcePositionVariance.attribute("y"));
               loop1:
               while(true)
               {
                  this.§2P§ = parseFloat(param1.gravity.attribute("x"));
                  while(true)
                  {
                     this.§^!p§ = parseFloat(param1.gravity.attribute("y"));
                     while(true)
                     {
                        this.§>5§ = this.§4Y§(param1.emitterType);
                        while(true)
                        {
                           this.§<!3§ = this.§4Y§(param1.maxParticles);
                           loop5:
                           while(true)
                           {
                              this.§&_§ = Math.max(0.01,this.§4;§(param1.particleLifeSpan));
                              loop6:
                              while(true)
                              {
                                 this.§-!t§ = this.§4;§(param1.particleLifespanVariance);
                                 loop7:
                                 while(true)
                                 {
                                    if(param1.particleInterval.length() == 1)
                                    {
                                       while(true)
                                       {
                                          this.§[!v§ = this.§4;§(param1.particleInterval);
                                          addr748:
                                          while(true)
                                          {
                                          }
                                       }
                                       addr742:
                                    }
                                    else
                                    {
                                       this.§[!v§ = 0;
                                       while(true)
                                       {
                                       }
                                       addr735:
                                    }
                                    while(true)
                                    {
                                       this.§+7§ = this.§4;§(param1.startParticleSize);
                                       loop10:
                                       while(true)
                                       {
                                          §§push(this);
                                          §§push(this.§+7§);
                                          if(_loc4_)
                                          {
                                             §§push(param2.height);
                                             if(_loc4_ || this)
                                             {
                                                addr719:
                                                §§push(§§pop() * §§pop());
                                                if(!(_loc3_ && this))
                                                {
                                                   §§push(param2.width);
                                                }
                                                §§pop().§<X§ = §§pop();
                                                loop11:
                                                while(true)
                                                {
                                                   this.§<S§ = this.§4;§(param1.startParticleSizeVariance);
                                                   while(true)
                                                   {
                                                      §§push(this);
                                                      §§push(this.§<S§);
                                                      if(_loc4_)
                                                      {
                                                         §§push(param2.height);
                                                         if(_loc4_)
                                                         {
                                                            addr683:
                                                            §§push(§§pop() * §§pop());
                                                            if(_loc4_ || _loc3_)
                                                            {
                                                               §§push(param2.width);
                                                            }
                                                            §§pop().§^"?§ = §§pop();
                                                            loop13:
                                                            while(true)
                                                            {
                                                               if(param1.startParticleSizeX.length() == 1)
                                                               {
                                                                  addr655:
                                                                  while(true)
                                                                  {
                                                                     this.§+7§ = this.§4;§(param1.startParticleSizeX);
                                                                     addr661:
                                                                     while(true)
                                                                     {
                                                                     }
                                                                  }
                                                                  addr655:
                                                               }
                                                               while(true)
                                                               {
                                                                  if(param1.startParticleSizeVarianceX.length() == 1)
                                                                  {
                                                                     while(_loc4_ || this)
                                                                     {
                                                                        continue loop5;
                                                                     }
                                                                     continue loop10;
                                                                     addr621:
                                                                  }
                                                                  else
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        if(param1.startParticleSizeY.length() == 1)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              this.§<X§ = this.§4;§(param1.startParticleSizeY);
                                                                              addr614:
                                                                              while(true)
                                                                              {
                                                                              }
                                                                              addr397:
                                                                              if(!_loc3_)
                                                                              {
                                                                                 continue loop7;
                                                                              }
                                                                           }
                                                                        }
                                                                        loop22:
                                                                        while(true)
                                                                        {
                                                                           if(param1.startParticleSizeVarianceY.length() == 1)
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 this.§^"?§ = this.§4;§(param1.startParticleSizeVarianceY);
                                                                                 addr601:
                                                                                 addr201:
                                                                                 while(true)
                                                                                 {
                                                                                 }
                                                                                 if(!(_loc4_ || param1))
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 this.§ W§ = this.§5"<§(param1.finishColor);
                                                                                 loop57:
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc4_ || this)
                                                                                    {
                                                                                       if(!(_loc3_ && this))
                                                                                       {
                                                                                          this.§9?§ = this.§5"<§(param1.finishColorVariance);
                                                                                          loop58:
                                                                                          for(; !_loc3_; while(true)
                                                                                          {
                                                                                             if(_loc3_ && _loc3_)
                                                                                             {
                                                                                                continue loop58;
                                                                                             }
                                                                                             if(_loc3_)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             §<!7§ = this.§,e§(param1.textureSmoothing);
                                                                                             §§goto(addr104);
                                                                                             §§goto(addr61);
                                                                                          },continue loop57)
                                                                                          {
                                                                                             §6"=§ = this.§5$§(param1.blendFuncSource);
                                                                                             loop59:
                                                                                             while(_loc4_ || this)
                                                                                             {
                                                                                                §'!"§ = this.§5$§(param1.blendFuncDestination);
                                                                                                continue loop58;
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!(_loc4_ || param2))
                                                                                                   {
                                                                                                      continue loop59;
                                                                                                   }
                                                                                                   addr111:
                                                                                                   if(!(_loc3_ && _loc3_))
                                                                                                   {
                                                                                                      if(_loc4_)
                                                                                                      {
                                                                                                         if(_loc4_)
                                                                                                         {
                                                                                                            if(param1.emissionVariance.length == 1)
                                                                                                            {
                                                                                                               if(_loc4_ || _loc3_)
                                                                                                               {
                                                                                                                  addr37:
                                                                                                                  if(!(_loc3_ && param1))
                                                                                                                  {
                                                                                                                     addr44:
                                                                                                                     if(!(_loc3_ && param2))
                                                                                                                     {
                                                                                                                        if(!_loc4_)
                                                                                                                        {
                                                                                                                           continue loop1;
                                                                                                                        }
                                                                                                                        §8!L§ = this.§4;§(param1.emissionVariance);
                                                                                                                        addr59:
                                                                                                                        if(!_loc4_)
                                                                                                                        {
                                                                                                                           continue;
                                                                                                                        }
                                                                                                                        if(_loc3_ && param1)
                                                                                                                        {
                                                                                                                           continue loop58;
                                                                                                                        }
                                                                                                                        addr68:
                                                                                                                        if(!(_loc3_ && _loc3_))
                                                                                                                        {
                                                                                                                           addr75:
                                                                                                                           if(!(_loc3_ && param1))
                                                                                                                           {
                                                                                                                              addr82:
                                                                                                                              if(_loc4_ || _loc3_)
                                                                                                                              {
                                                                                                                                 addr89:
                                                                                                                                 if(!(_loc3_ && param1))
                                                                                                                                 {
                                                                                                                                    break;
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    this.§%!u§ = this.§4;§(param1.FinishParticleSizeVarianceX);
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       loop37:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(param1.finishParticleSizeY.length() == 1)
                                                                                                                                          {
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                this.§^!&§ = this.§4;§(param1.finishParticleSizeY);
                                                                                                                                                addr481:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             addr475:
                                                                                                                                          }
                                                                                                                                          loop40:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(param1.FinishParticleSizeVarianceY.length() == 1)
                                                                                                                                             {
                                                                                                                                                loop41:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(!_loc4_)
                                                                                                                                                   {
                                                                                                                                                      continue loop40;
                                                                                                                                                   }
                                                                                                                                                   if(!(_loc3_ && _loc3_))
                                                                                                                                                   {
                                                                                                                                                      if(_loc4_ || _loc3_)
                                                                                                                                                      {
                                                                                                                                                         if(!_loc4_)
                                                                                                                                                         {
                                                                                                                                                            continue loop11;
                                                                                                                                                         }
                                                                                                                                                         if(!(_loc3_ && param1))
                                                                                                                                                         {
                                                                                                                                                            this.§6!E§ = this.§4;§(param1.FinishParticleSizeVarianceY);
                                                                                                                                                            loop42:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               addr417:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  this.§5J§ = deg2rad(this.§4;§(param1.angle));
                                                                                                                                                                  addr426:
                                                                                                                                                                  while(!_loc3_)
                                                                                                                                                                  {
                                                                                                                                                                     if(!_loc3_)
                                                                                                                                                                     {
                                                                                                                                                                        this.§[";§ = deg2rad(this.§4;§(param1.angleVariance));
                                                                                                                                                                        while(_loc4_ || param1)
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr397);
                                                                                                                                                                           §§goto(addr82);
                                                                                                                                                                        }
                                                                                                                                                                        continue loop37;
                                                                                                                                                                        addr390:
                                                                                                                                                                     }
                                                                                                                                                                     continue loop13;
                                                                                                                                                                     §§goto(addr44);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr601);
                                                                                                                                                                  continue loop42;
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            addr468:
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr748);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      break;
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr507);
                                                                                                                                                   addr366:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(!(_loc4_ || param1))
                                                                                                                                                      {
                                                                                                                                                         continue loop41;
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr373);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr525);
                                                                                                                                                }
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(this);
                                                                                                                                                   §§push(this.§,"A§);
                                                                                                                                                   if(_loc4_)
                                                                                                                                                   {
                                                                                                                                                      §§push(param2.height);
                                                                                                                                                      if(_loc4_ || _loc3_)
                                                                                                                                                      {
                                                                                                                                                         addr574:
                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                         if(!(_loc3_ && _loc3_))
                                                                                                                                                         {
                                                                                                                                                            §§push(param2.width);
                                                                                                                                                         }
                                                                                                                                                         §§pop().§^!&§ = §§pop();
                                                                                                                                                         break loop57;
                                                                                                                                                      }
                                                                                                                                                      §§push(§§pop() / §§pop());
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr574);
                                                                                                                                                }
                                                                                                                                                addr437:
                                                                                                                                                addr588:
                                                                                                                                             }
                                                                                                                                             §§goto(addr417);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr89);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr390);
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              §§goto(addr351);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr323);
                                                                                                                     }
                                                                                                                     §§goto(addr426);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§goto(addr216);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr59);
                                                                                                            }
                                                                                                            break;
                                                                                                         }
                                                                                                         continue loop6;
                                                                                                      }
                                                                                                      §§goto(addr366);
                                                                                                      §§goto(addr437);
                                                                                                   }
                                                                                                   §§goto(addr194);
                                                                                                }
                                                                                                return;
                                                                                             }
                                                                                             continue loop22;
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             this.§,"A§ = this.§4;§(param1.finishParticleSizeX);
                                                                                             §§goto(addr507);
                                                                                          }
                                                                                       }
                                                                                       break;
                                                                                    }
                                                                                    §§goto(addr540);
                                                                                 }
                                                                                 loop65:
                                                                                 while(true)
                                                                                 {
                                                                                    addr526:
                                                                                    while(true)
                                                                                    {
                                                                                       if(param1.FinishParticleSizeVariance.length() == 1)
                                                                                       {
                                                                                          §§goto(addr532);
                                                                                       }
                                                                                       §§goto(addr495);
                                                                                       continue loop65;
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              if(param1.finishParticleSize.length() == 1)
                                                                              {
                                                                                 §§goto(addr582);
                                                                              }
                                                                              §§goto(addr526);
                                                                              §§goto(addr601);
                                                                           }
                                                                        }
                                                                     }
                                                                     addr602:
                                                                  }
                                                                  §§goto(addr661);
                                                               }
                                                            }
                                                         }
                                                         §§push(§§pop() / §§pop());
                                                      }
                                                      §§goto(addr683);
                                                   }
                                                }
                                             }
                                             §§push(§§pop() / §§pop());
                                          }
                                          §§goto(addr719);
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        while(_loc4_ || param2)
                        {
                           this.§"!0§ = deg2rad(this.§4;§(param1.rotatePerSecondVariance));
                           §§goto(addr244);
                        }
                     }
                     if(!(_loc4_ || this))
                     {
                        continue;
                     }
                     this.§^5§ = this.§5"<§(param1.startColor);
                     §§goto(addr216);
                  }
               }
               while(!(_loc3_ && param2))
               {
                  §§goto(addr602);
                  §§goto(addr540);
               }
            }
         }
         §§goto(addr588);
      }
      
      protected function §4Y§(param1:XMLList) : int
      {
         return parseInt(param1.attribute("value"));
      }
      
      protected function §4;§(param1:XMLList) : Number
      {
         return parseFloat(param1.attribute("value"));
      }
      
      protected function §5"A§(param1:XMLList) : String
      {
         return param1.attribute("value");
      }
      
      protected function §5"<§(param1:XMLList) : ColorArgb
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:ColorArgb = new ColorArgb();
         if(!_loc4_)
         {
            _loc2_.red = parseFloat(param1.attribute("red"));
            loop0:
            while(true)
            {
               _loc2_.green = parseFloat(param1.attribute("green"));
               while(true)
               {
                  _loc2_.blue = parseFloat(param1.attribute("blue"));
                  loop2:
                  while(!(_loc4_ && param1))
                  {
                     while(true)
                     {
                        _loc2_.alpha = parseFloat(param1.attribute("alpha"));
                        if(_loc3_)
                        {
                           continue loop0;
                        }
                        continue loop2;
                     }
                     return _loc2_;
                  }
               }
            }
         }
         §§goto(addr81);
      }
      
      protected function §5$§(param1:XMLList) : String
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(this.§4Y§(param1));
         if(_loc5_ || param1)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(_loc2_);
         if(!(_loc4_ && this))
         {
            var _loc3_:* = §§pop();
            if(!_loc4_)
            {
               §§push(0);
               if(!(_loc4_ && this))
               {
                  §§push(_loc3_);
                  if(_loc5_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc5_ || _loc2_)
                        {
                           §§push(0);
                           if(_loc5_ || _loc3_)
                           {
                              addr402:
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
                              addr402:
                           }
                           else
                           {
                              addr234:
                              §§push(_loc3_);
                              if(!(_loc4_ && _loc3_))
                              {
                                 addr242:
                                 if(§§pop() === §§pop())
                                 {
                                    if(!(_loc4_ && _loc2_))
                                    {
                                       §§push(3);
                                       if(_loc4_)
                                       {
                                          addr354:
                                          §§push(_loc3_);
                                          if(!_loc4_)
                                          {
                                             addr357:
                                             if(§§pop() === §§pop())
                                             {
                                                if(_loc5_ || this)
                                                {
                                                   addr375:
                                                   §§push(8);
                                                   if(_loc5_)
                                                   {
                                                      addr378:
                                                   }
                                                }
                                                else
                                                {
                                                   addr389:
                                                   §§push(9);
                                                   if(_loc5_ || param1)
                                                   {
                                                      addr397:
                                                   }
                                                }
                                             }
                                             else
                                             {
                                                §§push(775);
                                                if(!(_loc4_ && this))
                                                {
                                                   addr387:
                                                   §§push(_loc3_);
                                                }
                                             }
                                             §§goto(addr402);
                                          }
                                          if(§§pop() === §§pop())
                                          {
                                             §§goto(addr389);
                                          }
                                          else
                                          {
                                             §§goto(addr402);
                                             §§push(10);
                                          }
                                       }
                                    }
                                    else
                                    {
                                       addr268:
                                       §§push(4);
                                       if(_loc4_)
                                       {
                                       }
                                    }
                                    §§goto(addr402);
                                 }
                                 else
                                 {
                                    §§push(770);
                                    if(!(_loc4_ && this))
                                    {
                                       §§push(_loc3_);
                                       if(_loc5_)
                                       {
                                          addr265:
                                          if(§§pop() === §§pop())
                                          {
                                             if(!_loc4_)
                                             {
                                                §§goto(addr268);
                                             }
                                             else
                                             {
                                                addr347:
                                                §§push(7);
                                                if(_loc5_)
                                                {
                                                   addr350:
                                                }
                                                §§goto(addr402);
                                             }
                                          }
                                          else
                                          {
                                             §§push(771);
                                             if(_loc5_)
                                             {
                                                addr275:
                                                §§push(_loc3_);
                                                if(_loc5_ || _loc2_)
                                                {
                                                   addr283:
                                                   if(§§pop() === §§pop())
                                                   {
                                                      if(_loc5_ || _loc3_)
                                                      {
                                                         addr291:
                                                         §§push(5);
                                                         if(_loc5_ || _loc3_)
                                                         {
                                                            addr299:
                                                            §§goto(addr402);
                                                         }
                                                         else
                                                         {
                                                            addr308:
                                                            §§push(_loc3_);
                                                            if(!(_loc4_ && _loc2_))
                                                            {
                                                               if(§§pop() === §§pop())
                                                               {
                                                                  if(!_loc4_)
                                                                  {
                                                                     §§push(6);
                                                                     if(_loc5_ || param1)
                                                                     {
                                                                        §§goto(addr402);
                                                                     }
                                                                     else
                                                                     {
                                                                        addr331:
                                                                        §§push(_loc3_);
                                                                        if(_loc5_ || param1)
                                                                        {
                                                                           if(§§pop() === §§pop())
                                                                           {
                                                                              if(_loc5_ || _loc3_)
                                                                              {
                                                                                 §§goto(addr347);
                                                                              }
                                                                              §§goto(addr402);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§push(774);
                                                                              if(!_loc4_)
                                                                              {
                                                                                 §§goto(addr354);
                                                                              }
                                                                              §§goto(addr387);
                                                                           }
                                                                        }
                                                                        §§goto(addr354);
                                                                     }
                                                                  }
                                                                  §§goto(addr347);
                                                               }
                                                               else
                                                               {
                                                                  §§push(773);
                                                                  if(!_loc4_)
                                                                  {
                                                                     §§goto(addr331);
                                                                  }
                                                               }
                                                               §§goto(addr387);
                                                            }
                                                            §§goto(addr354);
                                                         }
                                                      }
                                                      §§goto(addr375);
                                                   }
                                                   else
                                                   {
                                                      §§push(772);
                                                      if(!(_loc4_ && _loc2_))
                                                      {
                                                         §§goto(addr308);
                                                      }
                                                   }
                                                }
                                                §§goto(addr357);
                                             }
                                          }
                                          §§goto(addr397);
                                       }
                                       §§goto(addr357);
                                    }
                                 }
                                 §§goto(addr299);
                              }
                              §§goto(addr283);
                           }
                           §§goto(addr402);
                        }
                        §§goto(addr347);
                     }
                     else
                     {
                        §§push(1);
                        if(!_loc4_)
                        {
                           §§push(_loc3_);
                           if(!(_loc4_ && _loc3_))
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(_loc5_ || param1)
                                 {
                                    §§push(1);
                                    if(_loc5_ || _loc2_)
                                    {
                                       §§goto(addr402);
                                    }
                                    else
                                    {
                                       §§goto(addr331);
                                    }
                                 }
                                 §§goto(addr389);
                              }
                              else
                              {
                                 §§push(768);
                                 if(!_loc4_)
                                 {
                                    §§push(_loc3_);
                                    if(_loc5_)
                                    {
                                       if(§§pop() === §§pop())
                                       {
                                          if(!_loc4_)
                                          {
                                             addr222:
                                             §§push(2);
                                             if(_loc5_)
                                             {
                                                §§goto(addr402);
                                             }
                                             else
                                             {
                                                §§goto(addr275);
                                             }
                                          }
                                          §§goto(addr291);
                                       }
                                       else
                                       {
                                          §§push(769);
                                          if(!(_loc4_ && _loc2_))
                                          {
                                             §§goto(addr234);
                                          }
                                       }
                                       §§goto(addr378);
                                    }
                                    §§goto(addr265);
                                 }
                              }
                              §§goto(addr350);
                           }
                           §§goto(addr242);
                        }
                     }
                     §§goto(addr234);
                  }
                  §§goto(addr242);
               }
               §§goto(addr402);
            }
            §§goto(addr222);
         }
         §§goto(addr402);
      }
      
      protected function §,e§(param1:XMLList) : String
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(this.§5"A§(param1));
         if(_loc4_ || this)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(_loc4_)
         {
            §§push(_loc2_);
            loop0:
            while(true)
            {
               §§push(§=w§.§8!Q§);
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  loop2:
                  while(true)
                  {
                     §§push(§§pop());
                     loop3:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           while(true)
                           {
                              §§pop();
                              loop5:
                              while(true)
                              {
                                 §§push(_loc2_);
                                 loop6:
                                 while(true)
                                 {
                                    §§push(§=w§.§>o§);
                                    addr129:
                                    while(true)
                                    {
                                       §§push(§§pop() == §§pop());
                                       if(_loc4_)
                                       {
                                          while(true)
                                          {
                                             §§push(§§pop());
                                             if(_loc3_)
                                             {
                                                break;
                                             }
                                             if(!§§pop())
                                             {
                                                addr137:
                                                while(_loc4_)
                                                {
                                                   §§pop();
                                                }
                                                continue loop2;
                                                addr137:
                                             }
                                             else
                                             {
                                                addr89:
                                             }
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   if(_loc4_ || this)
                                                   {
                                                      §§push(_loc2_);
                                                   }
                                                   else
                                                   {
                                                      addr100:
                                                      if(!(_loc3_ && _loc2_))
                                                      {
                                                         if(!(_loc4_ || this))
                                                         {
                                                            continue loop5;
                                                         }
                                                         while(true)
                                                         {
                                                            §§goto(addr32);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         addr140:
                                                         while(true)
                                                         {
                                                            §§push(_loc2_);
                                                            continue loop6;
                                                            §§goto(addr100);
                                                         }
                                                         addr140:
                                                      }
                                                   }
                                                   addr99:
                                                   return §§pop();
                                                }
                                                addr32:
                                                addr46:
                                                while(true)
                                                {
                                                   §§push(§=w§.§8!Q§);
                                                   if(_loc4_)
                                                   {
                                                      if(_loc4_)
                                                      {
                                                         continue loop0;
                                                      }
                                                      continue loop6;
                                                   }
                                                }
                                                return §§pop();
                                             }
                                             §§goto(addr140);
                                          }
                                          continue loop3;
                                          addr132:
                                       }
                                       §§goto(addr137);
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr132);
                     }
                  }
               }
            }
         }
         §§goto(addr124);
      }
   }
}

import §<!E§.§[M§;

class PDParticle extends §[M§
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
