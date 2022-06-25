package §9!N§
{
   import §4>§.§#i§;
   import §4>§.Texture;
   import §9!k§.deg2rad;
   import flash.display3D.Context3DBlendFactor;
   
   public class ParticleDesignerPS extends §@!K§
   {
       
      
      private const §=!t§:int = 0;
      
      private const §=t§:int = 1;
      
      private var § P§:Number;
      
      private var §;!&§:int;
      
      private var §;!Y§:Number;
      
      private var §5!H§:Number;
      
      private var §^!;§:int;
      
      private var §+z§:Number;
      
      private var §`!?§:Number;
      
      private var §=9§:Number;
      
      private var §]!=§:Number;
      
      private var §"!`§:Number;
      
      private var §=e§:Number;
      
      private var §;!U§:Number;
      
      private var §;!9§:Number;
      
      private var §@!x§:Number;
      
      private var §7=§:Number;
      
      private var §;`§:Number;
      
      private var §%!-§:Number;
      
      private var §#u§:Number;
      
      private var §&!&§:Number;
      
      private var §"!q§:Number;
      
      private var §?3§:Number;
      
      private var §2!%§:Number;
      
      private var §=!Y§:Number;
      
      private var § e§:Number;
      
      private var § b§:Number;
      
      private var §@=§:Number;
      
      private var §'q§:Number;
      
      private var §]!Z§:Number;
      
      private var §-!H§:Number;
      
      private var §&9§:Number;
      
      private var § !Y§:Number;
      
      private var §-"§:ColorArgb;
      
      private var §?+§:ColorArgb;
      
      private var §4!F§:ColorArgb;
      
      private var §'z§:ColorArgb;
      
      public function ParticleDesignerPS(param1:XML, param2:Texture)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            this.§6!;§(param1,param2);
         }
         §§push(this.§^!;§);
         §§push(this.§+z§);
         if(_loc5_)
         {
            §§push(§§pop() + this.§=9§);
         }
         §§push(§§pop() / §§pop());
         if(_loc5_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(!_loc4_)
         {
            super(param2,_loc3_,this.§^!;§,§%r§,§6!h§);
         }
         do
         {
            §3!Z§ = false;
         }
         while(_loc4_ && _loc3_);
         
      }
      
      public function get §;G§() : int
      {
         return this.§^!;§;
      }
      
      override protected function createParticle() : §4!h§
      {
         return new PDParticle();
      }
      
      private function get §`+§() : Boolean
      {
         return this.§;G§ >= 20;
      }
      
      override protected function initParticle(param1:§4!h§) : void
      {
         var _loc17_:Boolean = true;
         var _loc18_:Boolean = false;
         var _loc2_:PDParticle = null;
         var _loc3_:* = NaN;
         _loc2_ = param1 as PDParticle;
         if(!_loc18_)
         {
            §§push(this.§+z§);
            if(_loc17_)
            {
               §§push(this.§`!?§);
               if(_loc17_ || _loc2_)
               {
                  §§push(Math.random() * 2);
                  if(!_loc18_)
                  {
                     §§push(§§pop() - 1);
                     if(_loc17_ || _loc3_)
                     {
                        §§push(§§pop() * §§pop());
                        while(true)
                        {
                           §§push(§§pop() + §§pop());
                           if(_loc17_ || this)
                           {
                              §§push(Number(§§pop()));
                              if(!_loc18_)
                              {
                                 addr178:
                                 _loc3_ = §§pop();
                                 loop1:
                                 while(true)
                                 {
                                    §§push(_loc3_);
                                    if(_loc17_ || _loc2_)
                                    {
                                       §§push(0);
                                       if(_loc17_)
                                       {
                                          if(!_loc18_)
                                          {
                                             if(§§pop() > §§pop())
                                             {
                                                while(true)
                                                {
                                                   _loc2_.alpha = 0;
                                                   addr112:
                                                   while(_loc17_)
                                                   {
                                                      continue loop1;
                                                   }
                                                   addr138:
                                                }
                                             }
                                             return;
                                          }
                                          break;
                                       }
                                       addr193:
                                       §§push(Math.random() * 2);
                                       if(!(_loc18_ && _loc2_))
                                       {
                                          addr205:
                                          addr206:
                                          addr204:
                                          §§push(§§pop() + §§pop() * (§§pop() - 1));
                                          if(_loc17_ || param1)
                                          {
                                          }
                                          var _loc4_:* = §§pop();
                                          §§push(this.§&!&§);
                                          if(_loc17_ || _loc3_)
                                          {
                                             §§push(this.§"!q§);
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
                                             if(_loc17_)
                                             {
                                                addr250:
                                                §§push(Number(§§pop()));
                                             }
                                             var _loc5_:* = §§pop();
                                             if(!(_loc18_ && _loc2_))
                                             {
                                                §§push(_loc2_);
                                                §§push(_loc5_);
                                                if(!(_loc18_ && this))
                                                {
                                                   §§push(§§pop() * Math.cos(_loc4_));
                                                }
                                                §§pop().velocityX = §§pop();
                                                while(true)
                                                {
                                                   §§push(_loc2_);
                                                   §§push(_loc5_);
                                                   if(!(_loc18_ && _loc2_))
                                                   {
                                                      §§push(§§pop() * -Math.sin(_loc4_));
                                                   }
                                                   §§pop().velocityY = §§pop();
                                                   loop9:
                                                   for(; !(_loc18_ && this); if(_loc18_ && param1)
                                                   {
                                                      continue;
                                                   },_loc2_.tangentialAcceleration = this.§ b§,if(_loc17_)
                                                   {
                                                      §§goto(addr267);
                                                   },§§goto(addr281))
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(_loc2_);
                                                         §§push(this.§'q§);
                                                         if(!(_loc18_ && this))
                                                         {
                                                            §§push(this.§]!Z§);
                                                            if(_loc17_ || _loc2_)
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
                                                         §§pop().radius = §§pop();
                                                         loop11:
                                                         while(true)
                                                         {
                                                            §§push(_loc2_);
                                                            §§push(this.§'q§);
                                                            if(_loc17_)
                                                            {
                                                               §§push(§§pop() / _loc3_);
                                                            }
                                                            §§pop().radiusDelta = §§pop();
                                                            loop12:
                                                            while(true)
                                                            {
                                                               §§push(_loc2_);
                                                               §§push(this.§%!-§);
                                                               if(_loc17_ || param1)
                                                               {
                                                                  §§push(this.§#u§);
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
                                                               §§pop().rotation = §§pop();
                                                               loop13:
                                                               while(true)
                                                               {
                                                                  §§push(_loc2_);
                                                                  §§push(this.§&9§);
                                                                  if(!(_loc18_ && _loc3_))
                                                                  {
                                                                     §§push(this.§ !Y§);
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
                                                                  }
                                                                  §§pop().rotationDelta = §§pop();
                                                                  while(true)
                                                                  {
                                                                     if(_loc17_)
                                                                     {
                                                                        continue loop11;
                                                                     }
                                                                     continue loop12;
                                                                     addr267:
                                                                     if(_loc18_ && param1)
                                                                     {
                                                                        continue;
                                                                     }
                                                                     if(false)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           _loc2_.radialAcceleration = this.§=!Y§;
                                                                           addr281:
                                                                           while(_loc17_)
                                                                           {
                                                                              continue loop9;
                                                                           }
                                                                           continue loop13;
                                                                           §§goto(addr267);
                                                                        }
                                                                        continue;
                                                                        addr276:
                                                                     }
                                                                     §§push(Math.random() * 2);
                                                                     if(_loc17_)
                                                                     {
                                                                        §§push(§§pop() - 1);
                                                                        if(!(_loc18_ && _loc2_))
                                                                        {
                                                                           addr451:
                                                                           §§push(Number(§§pop()));
                                                                        }
                                                                        var _loc6_:* = §§pop();
                                                                        §§push(this.§]!=§);
                                                                        if(_loc17_ || _loc3_)
                                                                        {
                                                                           §§push(this.§"!`§);
                                                                           if(_loc17_)
                                                                           {
                                                                              §§push(§§pop() * _loc6_);
                                                                              if(_loc17_)
                                                                              {
                                                                                 addr470:
                                                                                 §§push(§§pop() + §§pop());
                                                                                 if(_loc17_ || param1)
                                                                                 {
                                                                                    addr478:
                                                                                    §§push(Number(§§pop()));
                                                                                 }
                                                                                 §§push(§§pop());
                                                                              }
                                                                              var _loc7_:* = §§pop();
                                                                              if(!(_loc18_ && param1))
                                                                              {
                                                                                 §§push(Number(§§pop()));
                                                                              }
                                                                              var _loc8_:* = §§pop();
                                                                              if(_loc17_)
                                                                              {
                                                                                 if(!isNaN(this.§;!9§))
                                                                                 {
                                                                                    addr689:
                                                                                    §§push(Number(this.§;!9§));
                                                                                    if(_loc17_ || _loc2_)
                                                                                    {
                                                                                       _loc8_ = §§pop();
                                                                                       addr700:
                                                                                       if(!isNaN(this.§@!x§))
                                                                                       {
                                                                                          addr649:
                                                                                          §§push(_loc8_);
                                                                                          if(_loc17_ || this)
                                                                                          {
                                                                                             §§push(this.§@!x§);
                                                                                             if(_loc17_)
                                                                                             {
                                                                                                §§push(Math.random() * 2);
                                                                                                if(_loc17_)
                                                                                                {
                                                                                                   §§push(§§pop() - 1);
                                                                                                   if(!_loc18_)
                                                                                                   {
                                                                                                      §§push(§§pop() * §§pop());
                                                                                                      if(_loc17_ || param1)
                                                                                                      {
                                                                                                         addr679:
                                                                                                         §§push(Number(§§pop() + §§pop()));
                                                                                                         if(_loc17_)
                                                                                                         {
                                                                                                            _loc8_ = §§pop();
                                                                                                            addr683:
                                                                                                            §§push(_loc7_);
                                                                                                            if(!(_loc18_ && _loc2_))
                                                                                                            {
                                                                                                               §§push(0.1);
                                                                                                               if(!_loc18_)
                                                                                                               {
                                                                                                                  if(§§pop() < §§pop())
                                                                                                                  {
                                                                                                                     addr630:
                                                                                                                     §§push(0.1);
                                                                                                                     if(_loc17_)
                                                                                                                     {
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                        if(_loc17_ || param1)
                                                                                                                        {
                                                                                                                           _loc7_ = §§pop();
                                                                                                                           addr642:
                                                                                                                           §§push(_loc8_);
                                                                                                                           if(!(_loc18_ && _loc3_))
                                                                                                                           {
                                                                                                                              if(!_loc18_)
                                                                                                                              {
                                                                                                                                 if(!(_loc18_ && _loc2_))
                                                                                                                                 {
                                                                                                                                    §§push(0.1);
                                                                                                                                    if(_loc17_ || this)
                                                                                                                                    {
                                                                                                                                       if(§§pop() < §§pop())
                                                                                                                                       {
                                                                                                                                          if(_loc17_)
                                                                                                                                          {
                                                                                                                                             if(_loc17_)
                                                                                                                                             {
                                                                                                                                                §§push(0.1);
                                                                                                                                                if(_loc17_)
                                                                                                                                                {
                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                   if(!(_loc18_ && this))
                                                                                                                                                   {
                                                                                                                                                      addr594:
                                                                                                                                                      _loc8_ = §§pop();
                                                                                                                                                      addr595:
                                                                                                                                                      if(!(_loc18_ && param1))
                                                                                                                                                      {
                                                                                                                                                         if(!(_loc18_ && param1))
                                                                                                                                                         {
                                                                                                                                                            if(_loc17_ || _loc3_)
                                                                                                                                                            {
                                                                                                                                                               addr535:
                                                                                                                                                               §§push(_loc2_);
                                                                                                                                                               §§push(_loc7_);
                                                                                                                                                               if(!_loc18_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() / texture.width);
                                                                                                                                                               }
                                                                                                                                                               §§pop().scaleX = §§pop();
                                                                                                                                                               if(!(_loc18_ && this))
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc2_);
                                                                                                                                                                  §§push(_loc8_);
                                                                                                                                                                  if(!_loc18_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc7_);
                                                                                                                                                                     if(_loc17_)
                                                                                                                                                                     {
                                                                                                                                                                        addr518:
                                                                                                                                                                        §§push(§§pop() - §§pop());
                                                                                                                                                                        if(_loc17_ || _loc2_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc3_);
                                                                                                                                                                        }
                                                                                                                                                                        §§pop().scaleDeltaX = §§pop() / texture.width;
                                                                                                                                                                        if(!(_loc18_ && _loc2_))
                                                                                                                                                                        {
                                                                                                                                                                           if(!_loc18_)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc17_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(false)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§goto(addr535);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§push(this.§=e§);
                                                                                                                                                                                 if(!(_loc18_ && _loc2_))
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(this.§;!U§);
                                                                                                                                                                                    if(!_loc18_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr714:
                                                                                                                                                                                       §§push(§§pop() * _loc6_);
                                                                                                                                                                                       if(!(_loc18_ && _loc2_))
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                                                                          if(!(_loc18_ && _loc3_))
                                                                                                                                                                                          {
                                                                                                                                                                                             addr732:
                                                                                                                                                                                             var _loc9_:*;
                                                                                                                                                                                             §§push(_loc9_ = Number(§§pop()));
                                                                                                                                                                                             if(!_loc18_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                                                                             }
                                                                                                                                                                                             var _loc10_:* = §§pop();
                                                                                                                                                                                             if(!(_loc18_ && param1))
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!isNaN(this.§7=§))
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr951:
                                                                                                                                                                                                   _loc10_ = Number(this.§7=§);
                                                                                                                                                                                                   addr952:
                                                                                                                                                                                                   addr950:
                                                                                                                                                                                                   addr948:
                                                                                                                                                                                                   if(!isNaN(this.§;`§))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr918:
                                                                                                                                                                                                      §§push(_loc10_);
                                                                                                                                                                                                      §§push(this.§;`§);
                                                                                                                                                                                                      if(_loc17_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(Math.random() * 2);
                                                                                                                                                                                                         if(!_loc18_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop() - 1);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§push(Number(§§pop() + §§pop()));
                                                                                                                                                                                                      if(_loc17_ || _loc3_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         _loc10_ = §§pop();
                                                                                                                                                                                                         addr940:
                                                                                                                                                                                                         if(!_loc18_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr871:
                                                                                                                                                                                                            §§push(_loc9_);
                                                                                                                                                                                                            if(!(_loc18_ && _loc3_))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!_loc18_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr881:
                                                                                                                                                                                                                  §§push(0.1);
                                                                                                                                                                                                                  if(!(_loc18_ && _loc2_))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(§§pop() < §§pop())
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr889:
                                                                                                                                                                                                                        if(!(_loc18_ && this))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr897:
                                                                                                                                                                                                                           §§push(Number(0.1));
                                                                                                                                                                                                                           if(_loc17_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(_loc17_ || param1)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 _loc9_ = §§pop();
                                                                                                                                                                                                                                 addr908:
                                                                                                                                                                                                                                 if(!_loc18_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr825:
                                                                                                                                                                                                                                    §§push(_loc10_);
                                                                                                                                                                                                                                    if(_loc17_ || _loc3_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(!_loc18_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(0.1);
                                                                                                                                                                                                                                          if(!_loc18_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(§§pop() < §§pop())
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr840:
                                                                                                                                                                                                                                                §§push(0.1);
                                                                                                                                                                                                                                                if(_loc17_ || this)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(_loc17_ || _loc3_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(_loc17_ || _loc3_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         addr863:
                                                                                                                                                                                                                                                         _loc10_ = Number(§§pop());
                                                                                                                                                                                                                                                         addr864:
                                                                                                                                                                                                                                                         if(!_loc18_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(!_loc18_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               addr803:
                                                                                                                                                                                                                                                               §§push(_loc2_);
                                                                                                                                                                                                                                                               §§push(_loc9_);
                                                                                                                                                                                                                                                               if(_loc17_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(§§pop() / texture.height);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§pop().scaleY = §§pop();
                                                                                                                                                                                                                                                               if(_loc17_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(_loc2_);
                                                                                                                                                                                                                                                                  §§push(_loc10_);
                                                                                                                                                                                                                                                                  if(_loc17_ || _loc2_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(_loc9_);
                                                                                                                                                                                                                                                                     if(_loc17_ || this)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                        if(_loc17_ || _loc3_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           addr773:
                                                                                                                                                                                                                                                                           §§push(§§pop() / _loc3_);
                                                                                                                                                                                                                                                                           if(_loc17_ || _loc3_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              addr781:
                                                                                                                                                                                                                                                                              §§push(§§pop() / texture.height);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§pop().scaleDeltaY = §§pop();
                                                                                                                                                                                                                                                                        if(_loc17_ || _loc2_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(_loc17_ || param1)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(_loc17_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(false)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§goto(addr803);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 var _loc11_:ColorArgb = _loc2_.colorArgb;
                                                                                                                                                                                                                                                                                 var _loc12_:ColorArgb = _loc2_.colorArgbDelta;
                                                                                                                                                                                                                                                                                 if(_loc17_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    _loc11_.red = this.§-"§.red;
                                                                                                                                                                                                                                                                                    _loc11_.green = this.§-"§.green;
                                                                                                                                                                                                                                                                                    _loc11_.blue = this.§-"§.blue;
                                                                                                                                                                                                                                                                                    addr1226:
                                                                                                                                                                                                                                                                                    addr1220:
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 _loc11_.alpha = this.§-"§.alpha;
                                                                                                                                                                                                                                                                                 addr1199:
                                                                                                                                                                                                                                                                                 addr1213:
                                                                                                                                                                                                                                                                                 if(!(_loc18_ && _loc3_))
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    addr1148:
                                                                                                                                                                                                                                                                                    §§push(this.§?+§.red);
                                                                                                                                                                                                                                                                                    if(!_loc18_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       addr1152:
                                                                                                                                                                                                                                                                                       if(§§pop() != 0)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(_loc17_ || param1)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(_loc11_);
                                                                                                                                                                                                                                                                                             §§push(_loc11_.red);
                                                                                                                                                                                                                                                                                             if(!(_loc18_ && _loc2_))
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§push(this.§?+§.red);
                                                                                                                                                                                                                                                                                                if(!_loc18_)
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
                                                                                                                                                                                                                                                                                             §§pop().red = §§pop();
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          addr1190:
                                                                                                                                                                                                                                                                                          if(_loc17_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             addr1107:
                                                                                                                                                                                                                                                                                             §§push(this.§?+§.green);
                                                                                                                                                                                                                                                                                             if(_loc17_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                addr1111:
                                                                                                                                                                                                                                                                                                §§push(0);
                                                                                                                                                                                                                                                                                                if(_loc17_ || _loc2_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   if(§§pop() != §§pop())
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      addr1119:
                                                                                                                                                                                                                                                                                                      §§push(_loc11_);
                                                                                                                                                                                                                                                                                                      §§push(_loc11_.green);
                                                                                                                                                                                                                                                                                                      if(_loc17_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§push(this.§?+§.green);
                                                                                                                                                                                                                                                                                                         if(!(_loc18_ && param1))
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
                                                                                                                                                                                                                                                                                                      §§pop().green = §§pop();
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   addr1042:
                                                                                                                                                                                                                                                                                                   §§push(this.§?+§.blue);
                                                                                                                                                                                                                                                                                                   if(_loc17_ || _loc3_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      addr1054:
                                                                                                                                                                                                                                                                                                      §§push(0);
                                                                                                                                                                                                                                                                                                      if(!(_loc18_ && this))
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         if(§§pop() != §§pop())
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            addr1062:
                                                                                                                                                                                                                                                                                                            if(_loc17_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               if(!(_loc18_ && _loc2_))
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  if(!(_loc18_ && this))
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§push(_loc11_);
                                                                                                                                                                                                                                                                                                                     §§push(_loc11_.blue);
                                                                                                                                                                                                                                                                                                                     if(!_loc18_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        §§push(this.§?+§.blue);
                                                                                                                                                                                                                                                                                                                        if(!_loc18_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           §§push(Math.random() * 2);
                                                                                                                                                                                                                                                                                                                           if(!(_loc18_ && _loc3_))
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              §§push(§§pop() - 1);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§pop().blue = §§pop();
                                                                                                                                                                                                                                                                                                                     addr1103:
                                                                                                                                                                                                                                                                                                                     §§push(this.§?+§);
                                                                                                                                                                                                                                                                                                                     if(_loc17_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        if(_loc17_ || param1)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           if(!_loc18_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              §§push(§§pop().alpha);
                                                                                                                                                                                                                                                                                                                              if(!(_loc18_ && _loc2_))
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 §§push(0);
                                                                                                                                                                                                                                                                                                                                 if(_loc17_)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    if(§§pop() != §§pop())
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       if(!_loc18_)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          if(!(_loc18_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             if(_loc17_ || param1)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                §§push(_loc11_);
                                                                                                                                                                                                                                                                                                                                                §§push(_loc11_.alpha);
                                                                                                                                                                                                                                                                                                                                                if(!_loc18_)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   §§push(this.§?+§.alpha);
                                                                                                                                                                                                                                                                                                                                                   if(!_loc18_)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      §§push(Math.random() * 2);
                                                                                                                                                                                                                                                                                                                                                      if(!(_loc18_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         §§push(§§pop() - 1);
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                §§pop().alpha = §§pop();
                                                                                                                                                                                                                                                                                                                                                addr1031:
                                                                                                                                                                                                                                                                                                                                                if(!(_loc18_ && this))
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   if(_loc17_)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      if(false)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         §§goto(addr1042);
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      addr1227:
                                                                                                                                                                                                                                                                                                                                                      §§push(this.§4!F§.red);
                                                                                                                                                                                                                                                                                                                                                      if(!(_loc18_ && _loc2_))
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         addr1238:
                                                                                                                                                                                                                                                                                                                                                         var _loc13_:Number = §§pop();
                                                                                                                                                                                                                                                                                                                                                         §§push(this.§4!F§.green);
                                                                                                                                                                                                                                                                                                                                                         if(!(_loc18_ && _loc2_))
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         var _loc14_:* = §§pop();
                                                                                                                                                                                                                                                                                                                                                         §§push(this.§4!F§.blue);
                                                                                                                                                                                                                                                                                                                                                         if(_loc17_)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         var _loc15_:* = §§pop();
                                                                                                                                                                                                                                                                                                                                                         §§push(this.§4!F§.alpha);
                                                                                                                                                                                                                                                                                                                                                         if(_loc17_)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         var _loc16_:* = §§pop();
                                                                                                                                                                                                                                                                                                                                                         if(_loc17_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            addr1632:
                                                                                                                                                                                                                                                                                                                                                            addr1631:
                                                                                                                                                                                                                                                                                                                                                            addr1633:
                                                                                                                                                                                                                                                                                                                                                            if(this.§'z§.red != 0)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               addr1646:
                                                                                                                                                                                                                                                                                                                                                               _loc13_ += this.§'z§.red * (Math.random() * 2 - 1);
                                                                                                                                                                                                                                                                                                                                                               addr1647:
                                                                                                                                                                                                                                                                                                                                                               addr1645:
                                                                                                                                                                                                                                                                                                                                                               addr1643:
                                                                                                                                                                                                                                                                                                                                                               addr1638:
                                                                                                                                                                                                                                                                                                                                                               addr1644:
                                                                                                                                                                                                                                                                                                                                                               addr1635:
                                                                                                                                                                                                                                                                                                                                                               addr1642:
                                                                                                                                                                                                                                                                                                                                                               addr1634:
                                                                                                                                                                                                                                                                                                                                                               addr1637:
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            if(this.§'z§.green != 0)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               addr1582:
                                                                                                                                                                                                                                                                                                                                                               §§push(_loc14_);
                                                                                                                                                                                                                                                                                                                                                               if(_loc17_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  if(!_loc18_)
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     addr1594:
                                                                                                                                                                                                                                                                                                                                                                     §§push(this.§'z§);
                                                                                                                                                                                                                                                                                                                                                                     if(_loc17_ || param1)
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        addr1620:
                                                                                                                                                                                                                                                                                                                                                                        _loc14_ = Number(§§pop() + §§pop().green * (Math.random() * 2 - 1));
                                                                                                                                                                                                                                                                                                                                                                        addr1621:
                                                                                                                                                                                                                                                                                                                                                                        addr1608:
                                                                                                                                                                                                                                                                                                                                                                        addr1607:
                                                                                                                                                                                                                                                                                                                                                                        addr1619:
                                                                                                                                                                                                                                                                                                                                                                        addr1606:
                                                                                                                                                                                                                                                                                                                                                                        addr1602:
                                                                                                                                                                                                                                                                                                                                                                        if(_loc17_ || param1)
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           addr1527:
                                                                                                                                                                                                                                                                                                                                                                           §§push(this.§'z§.blue);
                                                                                                                                                                                                                                                                                                                                                                           if(!(_loc18_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              addr1535:
                                                                                                                                                                                                                                                                                                                                                                              §§push(0);
                                                                                                                                                                                                                                                                                                                                                                              if(!(_loc18_ && param1))
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 if(§§pop() != §§pop())
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    addr1543:
                                                                                                                                                                                                                                                                                                                                                                                    §§push(_loc15_);
                                                                                                                                                                                                                                                                                                                                                                                    if(_loc17_ || param1)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       if(!_loc18_)
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          addr1556:
                                                                                                                                                                                                                                                                                                                                                                                          §§push(this.§'z§.blue);
                                                                                                                                                                                                                                                                                                                                                                                          if(_loc17_)
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             §§push(Math.random() * 2);
                                                                                                                                                                                                                                                                                                                                                                                             if(!_loc18_)
                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                if(!_loc18_)
                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                   addr1567:
                                                                                                                                                                                                                                                                                                                                                                                                   §§push(§§pop() - 1);
                                                                                                                                                                                                                                                                                                                                                                                                   if(!_loc18_)
                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                      addr1572:
                                                                                                                                                                                                                                                                                                                                                                                                      _loc15_ = Number(§§pop() + §§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                      addr1573:
                                                                                                                                                                                                                                                                                                                                                                                                      addr1571:
                                                                                                                                                                                                                                                                                                                                                                                                      addr1570:
                                                                                                                                                                                                                                                                                                                                                                                                      if(_loc17_)
                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                         addr1405:
                                                                                                                                                                                                                                                                                                                                                                                                         §§push(this.§'z§);
                                                                                                                                                                                                                                                                                                                                                                                                         if(_loc17_)
                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                            if(!_loc18_)
                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                               if(!_loc18_)
                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                  §§push(§§pop().alpha);
                                                                                                                                                                                                                                                                                                                                                                                                                  if(_loc17_)
                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                     if(_loc17_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                        if(!_loc18_)
                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                           §§push(0);
                                                                                                                                                                                                                                                                                                                                                                                                                           if(_loc17_ || this)
                                                                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                                                                              if(_loc17_)
                                                                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                                                                 if(§§pop() != §§pop())
                                                                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                                                                    if(!_loc18_)
                                                                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                                                                       §§push(_loc16_);
                                                                                                                                                                                                                                                                                                                                                                                                                                       if(_loc17_)
                                                                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                                                                          if(!_loc18_)
                                                                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                                                                             §§push(this.§'z§);
                                                                                                                                                                                                                                                                                                                                                                                                                                             if(!_loc18_)
                                                                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                                                                if(!_loc18_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                                                                   §§push(§§pop().alpha);
                                                                                                                                                                                                                                                                                                                                                                                                                                                   if(_loc17_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                                                                      if(_loc17_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                                                                         if(!_loc18_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                                                                            if(_loc17_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                                                                               §§push(Math.random() * 2);
                                                                                                                                                                                                                                                                                                                                                                                                                                                               if(!(_loc18_ && _loc2_))
                                                                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  if(!_loc18_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     addr1483:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     §§push(§§pop() - 1);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     if(!(_loc18_ && param1))
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        if(_loc17_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           addr1493:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           if(!_loc18_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              if(_loc17_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 if(!_loc18_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    addr1505:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    if(_loc17_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       if(!_loc18_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          if(!_loc18_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             addr1512:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             if(!(_loc18_ && this))
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                _loc16_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                addr1520:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                if(_loc17_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   addr1375:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   §§push(_loc12_);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   §§push(_loc13_);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   if(!_loc18_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      §§push(_loc11_.red);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      if(!(_loc18_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         addr1399:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         if(_loc17_ || this)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            §§push(_loc3_);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         §§pop().red = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         addr1400:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         if(_loc17_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            if(_loc17_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               §§push(_loc12_);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               §§push(_loc14_);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               if(!(_loc18_ && _loc2_))
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  §§push(_loc11_.green);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  if(!_loc18_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     addr1364:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     if(!(_loc18_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        §§push(_loc3_);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     §§pop().green = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     addr1365:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     if(!(_loc18_ && _loc2_))
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        if(_loc17_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           §§push(_loc12_);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           §§push(_loc15_);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           if(_loc17_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              §§push(_loc11_.blue);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              if(_loc17_ || param1)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 addr1336:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 if(!(_loc18_ && this))
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    §§push(_loc3_);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 §§pop().blue = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 addr1337:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 if(_loc17_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    §§push(_loc12_);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    §§push(_loc16_);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    if(_loc17_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       §§push(_loc11_.alpha);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       if(!(_loc18_ && param1))
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          if(_loc17_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             addr1300:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             §§push(§§pop() / _loc3_);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          §§pop().alpha = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          if(!(_loc18_ && this))
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             if(_loc18_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                §§goto(addr1400);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             return;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr1337);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr1300);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr1365);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr1336);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr1621);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr1520);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               §§goto(addr1364);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            §§goto(addr1647);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         §§goto(addr1573);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   §§goto(addr1399);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                §§goto(addr1543);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             §§goto(addr1572);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr1632);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr1645);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr1571);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr1512);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr1608);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr1556);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr1643);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr1567);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr1607);
                                                                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                                                                               §§goto(addr1483);
                                                                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                                                                            §§goto(addr1638);
                                                                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                                                                         §§goto(addr1644);
                                                                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                                                                      §§goto(addr1570);
                                                                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                                                                   §§goto(addr1493);
                                                                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                                                                §§goto(addr1594);
                                                                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                                                                             §§goto(addr1556);
                                                                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr1635);
                                                                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr1505);
                                                                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr1520);
                                                                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr1375);
                                                                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr1632);
                                                                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr1535);
                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr1619);
                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr1527);
                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr1512);
                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                               §§goto(addr1631);
                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                            §§goto(addr1632);
                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                         §§goto(addr1527);
                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                      §§goto(addr1582);
                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                   §§goto(addr1606);
                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                §§goto(addr1642);
                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                             §§goto(addr1567);
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr1602);
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr1620);
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr1572);
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr1405);
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr1633);
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr1632);
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr1634);
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr1637);
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr1646);
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               §§goto(addr1620);
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            §§goto(addr1527);
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         §§goto(addr1646);
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      §§goto(addr1238);
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   §§goto(addr1119);
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                §§goto(addr1103);
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             §§goto(addr1199);
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          §§goto(addr1062);
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       §§goto(addr1031);
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    §§goto(addr1227);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§goto(addr1054);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §§goto(addr1238);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§goto(addr1148);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§goto(addr1107);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr1042);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr1226);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr1190);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr1119);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr1103);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr1111);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr1238);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr1152);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr1238);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr1213);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr1107);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr1238);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr1220);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr908);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr864);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr803);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr773);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr781);
                                                                                                                                                                                                                                                                  addr824:
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr840);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr940);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr889);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr871);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr897);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr863);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr803);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr881);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr897);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr863);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr952);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr918);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr825);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr918);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr950);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr918);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr948);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr951);
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr871);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr824);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr732);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr649);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr595);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr535);
                                                                                                                                                                     }
                                                                                                                                                                     §§push(§§pop() / §§pop());
                                                                                                                                                                     if(_loc18_ && _loc2_)
                                                                                                                                                                     {
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr518);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr642);
                                                                                                                                                               addr616:
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr700);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr683);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr630);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr732);
                                                                                                                                                }
                                                                                                                                                §§goto(addr594);
                                                                                                                                             }
                                                                                                                                             §§goto(addr689);
                                                                                                                                          }
                                                                                                                                          §§goto(addr594);
                                                                                                                                       }
                                                                                                                                       §§goto(addr535);
                                                                                                                                    }
                                                                                                                                    §§goto(addr732);
                                                                                                                                 }
                                                                                                                                 §§goto(addr683);
                                                                                                                              }
                                                                                                                              §§goto(addr630);
                                                                                                                           }
                                                                                                                           §§goto(addr594);
                                                                                                                        }
                                                                                                                        §§goto(addr732);
                                                                                                                     }
                                                                                                                     §§goto(addr679);
                                                                                                                  }
                                                                                                                  §§goto(addr642);
                                                                                                               }
                                                                                                               §§goto(addr714);
                                                                                                            }
                                                                                                            §§goto(addr689);
                                                                                                         }
                                                                                                         §§goto(addr732);
                                                                                                      }
                                                                                                      §§goto(addr714);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr714);
                                                                                          }
                                                                                          §§goto(addr732);
                                                                                       }
                                                                                       §§goto(addr683);
                                                                                    }
                                                                                    §§goto(addr732);
                                                                                 }
                                                                                 §§goto(addr683);
                                                                              }
                                                                              §§goto(addr616);
                                                                           }
                                                                           §§goto(addr470);
                                                                        }
                                                                        §§goto(addr478);
                                                                     }
                                                                     §§goto(addr451);
                                                                  }
                                                                  continue loop11;
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             §§goto(addr421);
                                          }
                                          §§goto(addr250);
                                       }
                                       §§goto(addr205);
                                    }
                                 }
                                 continue;
                              }
                              §§goto(addr205);
                              §§push(Number(§§pop()));
                           }
                           §§goto(addr178);
                        }
                     }
                     §§goto(addr205);
                  }
                  §§goto(addr204);
               }
            }
            §§goto(addr205);
         }
         §§goto(addr65);
      }
      
      override protected function advanceParticle(param1:§4!h§, param2:Number) : void
      {
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = true;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc3_:PDParticle = param1 as PDParticle;
         §§push(_loc3_.§3!&§ - _loc3_.§45§);
         if(_loc14_ || this)
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:*;
         §§push(_loc4_ = §§pop());
         if(!_loc13_)
         {
            §§push(param2);
            if(_loc14_)
            {
               §§push(§§pop() > §§pop());
               if(_loc14_ || param2)
               {
                  if(§§pop())
                  {
                     if(!(_loc13_ && param2))
                     {
                        §§push(param2);
                        if(!(_loc13_ && param1))
                        {
                           §§push(Number(§§pop()));
                           if(_loc14_ || param2)
                           {
                              addr103:
                              §§push(Number(§§pop()));
                              if(!_loc13_)
                              {
                                 addr106:
                                 param2 = §§pop();
                                 if(_loc14_ || _loc3_)
                                 {
                                    _loc3_.§45§ += param2;
                                    while(true)
                                    {
                                       if(this.§;!&§ != this.§=t§)
                                       {
                                          §§push(_loc3_.skipUpdate);
                                          while(true)
                                          {
                                             §§push(!§§pop());
                                             while(true)
                                             {
                                                §§push(§§pop());
                                                while(true)
                                                {
                                                   if(!§§pop())
                                                   {
                                                      while(true)
                                                      {
                                                         if(!_loc13_)
                                                         {
                                                            §§pop();
                                                            while(true)
                                                            {
                                                               §§push(this.§`+§);
                                                               while(true)
                                                               {
                                                                  §§push(!§§pop());
                                                                  while(true)
                                                                  {
                                                                     if(!_loc13_)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc3_.x - _loc3_.startX);
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(Number(§§pop()));
                                                                                    loop86:
                                                                                    while(true)
                                                                                    {
                                                                                       _loc5_ = §§pop();
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc3_.y - _loc3_.startY);
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(Number(§§pop()));
                                                                                             while(true)
                                                                                             {
                                                                                                _loc6_ = §§pop();
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc14_ || _loc3_)
                                                                                                   {
                                                                                                      §§push(Number(Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_)));
                                                                                                      loop112:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop());
                                                                                                         while(true)
                                                                                                         {
                                                                                                            _loc7_ = §§pop();
                                                                                                            addr1146:
                                                                                                            §§push(0.01);
                                                                                                            loop32:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(§§pop() < §§pop())
                                                                                                               {
                                                                                                                  addr1148:
                                                                                                                  if(!(_loc14_ || _loc3_))
                                                                                                                  {
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  §§push(0.01);
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     addr1157:
                                                                                                                     addr1158:
                                                                                                                     _loc7_ = Number(§§pop());
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                     }
                                                                                                                  }
                                                                                                                  addr1156:
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(_loc5_);
                                                                                                                  addr1119:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(!_loc13_)
                                                                                                                     {
                                                                                                                        §§push(_loc7_);
                                                                                                                        continue loop32;
                                                                                                                     }
                                                                                                                     continue loop86;
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
                                                                                                               §§goto(addr1350);
                                                                                                            }
                                                                                                            continue loop112;
                                                                                                         }
                                                                                                      }
                                                                                                      addr1144:
                                                                                                   }
                                                                                                   §§goto(addr1209);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr681);
                                                                        }
                                                                        addr1181:
                                                                     }
                                                                     §§goto(addr1328);
                                                                  }
                                                               }
                                                               if(_loc13_ && param2)
                                                               {
                                                                  continue;
                                                               }
                                                               _loc3_.rotation += _loc3_.rotationDelta * param2;
                                                               §§goto(addr702);
                                                            }
                                                         }
                                                         §§goto(addr1325);
                                                      }
                                                   }
                                                   §§goto(addr1181);
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr1357);
                              }
                              §§goto(addr1206);
                           }
                           §§goto(addr1075);
                        }
                        §§goto(addr106);
                     }
                     §§goto(addr1363);
                  }
                  else
                  {
                     §§push(_loc4_);
                     if(_loc14_)
                     {
                        §§push(Number(§§pop()));
                        if(!(_loc13_ && _loc3_))
                        {
                           §§goto(addr103);
                        }
                        §§goto(addr1107);
                     }
                  }
                  §§goto(addr1144);
               }
               §§goto(addr1323);
            }
            §§goto(addr999);
         }
         §§goto(addr1028);
      }
      
      private function §6!;§(param1:XML, param2:Texture) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§;!Y§ = parseFloat(param1.sourcePositionVariance.attribute("x"));
            loop0:
            while(true)
            {
               this.§5!H§ = parseFloat(param1.sourcePositionVariance.attribute("y"));
               loop1:
               while(true)
               {
                  this.§?3§ = parseFloat(param1.gravity.attribute("x"));
                  while(true)
                  {
                     this.§2!%§ = parseFloat(param1.gravity.attribute("y"));
                     loop3:
                     while(true)
                     {
                        this.§;!&§ = this.§!!v§(param1.emitterType);
                        loop4:
                        while(true)
                        {
                           this.§^!;§ = this.§!!v§(param1.maxParticles);
                           loop5:
                           while(true)
                           {
                              this.§+z§ = Math.max(0.01,this.§+@§(param1.particleLifeSpan));
                              loop6:
                              while(true)
                              {
                                 this.§`!?§ = this.§+@§(param1.particleLifespanVariance);
                                 loop7:
                                 while(true)
                                 {
                                    if(param1.particleInterval.length() == 1)
                                    {
                                       loop62:
                                       while(true)
                                       {
                                          this.§=9§ = this.§+@§(param1.particleInterval);
                                          loop63:
                                          while(true)
                                          {
                                             loop9:
                                             while(true)
                                             {
                                                this.§]!=§ = this.§+@§(param1.startParticleSize);
                                                while(_loc3_)
                                                {
                                                   §§push(this);
                                                   §§push(this.§]!=§);
                                                   if(_loc3_)
                                                   {
                                                      §§push(param2.height);
                                                      if(_loc3_)
                                                      {
                                                         addr694:
                                                         §§push(§§pop() * §§pop());
                                                         if(!_loc4_)
                                                         {
                                                            §§push(param2.width);
                                                         }
                                                         §§pop().§=e§ = §§pop();
                                                         loop11:
                                                         while(true)
                                                         {
                                                            this.§"!`§ = this.§+@§(param1.startParticleSizeVariance);
                                                            loop12:
                                                            while(_loc3_)
                                                            {
                                                               §§push(this);
                                                               §§push(this.§"!`§);
                                                               if(_loc3_ || param1)
                                                               {
                                                                  §§push(param2.height);
                                                                  if(!_loc4_)
                                                                  {
                                                                     addr659:
                                                                     §§push(§§pop() * §§pop());
                                                                     if(!_loc4_)
                                                                     {
                                                                        §§push(param2.width);
                                                                     }
                                                                     §§pop().§;!U§ = §§pop();
                                                                     continue loop11;
                                                                  }
                                                                  §§push(§§pop() / §§pop());
                                                               }
                                                               §§goto(addr659);
                                                               addr269:
                                                               if(!(_loc3_ || this))
                                                               {
                                                                  continue;
                                                               }
                                                               this.§-!H§ = this.§+@§(param1.minRadius);
                                                               loop52:
                                                               for(; !(_loc4_ && param1); while(true)
                                                               {
                                                                  if(!(_loc3_ || param2))
                                                                  {
                                                                     continue loop52;
                                                                  }
                                                                  §§goto(addr194);
                                                                  §§goto(addr153);
                                                               },§§goto(addr624))
                                                               {
                                                                  this.§&9§ = deg2rad(this.§+@§(param1.rotatePerSecond));
                                                                  loop53:
                                                                  while(true)
                                                                  {
                                                                     if(_loc3_)
                                                                     {
                                                                        this.§ !Y§ = deg2rad(this.§+@§(param1.rotatePerSecondVariance));
                                                                        addr220:
                                                                        while(!(_loc4_ && _loc3_))
                                                                        {
                                                                           this.§-"§ = this.§?!c§(param1.startColor);
                                                                           continue loop52;
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           if(!(_loc4_ && param2))
                                                                           {
                                                                              this.§&!&§ = this.§+@§(param1.speed);
                                                                              break loop52;
                                                                           }
                                                                           break;
                                                                           §§goto(addr220);
                                                                        }
                                                                        addr220:
                                                                        loop42:
                                                                        while(true)
                                                                        {
                                                                           loop43:
                                                                           while(true)
                                                                           {
                                                                              this.§%!-§ = deg2rad(this.§+@§(param1.angle));
                                                                              while(true)
                                                                              {
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    this.§#u§ = deg2rad(this.§+@§(param1.angleVariance));
                                                                                    §§goto(addr398);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       this.§"!`§ = this.§+@§(param1.startParticleSizeVarianceX);
                                                                                       while(true)
                                                                                       {
                                                                                          addr590:
                                                                                          loop19:
                                                                                          while(true)
                                                                                          {
                                                                                             if(param1.startParticleSizeY.length() == 1)
                                                                                             {
                                                                                                while(_loc3_)
                                                                                                {
                                                                                                   this.§=e§ = this.§+@§(param1.startParticleSizeY);
                                                                                                   while(true)
                                                                                                   {
                                                                                                   }
                                                                                                }
                                                                                                continue loop4;
                                                                                                addr596:
                                                                                             }
                                                                                             loop22:
                                                                                             while(true)
                                                                                             {
                                                                                                if(param1.startParticleSizeVarianceY.length() == 1)
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      this.§;!U§ = this.§+@§(param1.startParticleSizeVarianceY);
                                                                                                      addr587:
                                                                                                      while(_loc3_)
                                                                                                      {
                                                                                                      }
                                                                                                      continue loop19;
                                                                                                      addr49:
                                                                                                      if(!(_loc4_ && this))
                                                                                                      {
                                                                                                         §@b§ = this.§+@§(param1.emissionVariance);
                                                                                                         addr62:
                                                                                                         if(_loc3_)
                                                                                                         {
                                                                                                            addr19:
                                                                                                            return;
                                                                                                         }
                                                                                                         continue loop53;
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   if(param1.finishParticleSize.length() == 1)
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         this.§;!9§ = this.§+@§(param1.finishParticleSize);
                                                                                                         loop27:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(this);
                                                                                                            §§push(this.§;!9§);
                                                                                                            if(!(_loc4_ && param2))
                                                                                                            {
                                                                                                               §§push(param2.height);
                                                                                                               if(_loc3_ || _loc3_)
                                                                                                               {
                                                                                                                  addr560:
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                  if(_loc3_ || this)
                                                                                                                  {
                                                                                                                     §§push(param2.width);
                                                                                                                  }
                                                                                                                  §§pop().§7=§ = §§pop();
                                                                                                                  loop28:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     addr509:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(param1.FinishParticleSizeVariance.length() == 1)
                                                                                                                        {
                                                                                                                           continue loop1;
                                                                                                                        }
                                                                                                                        loop33:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(param1.finishParticleSizeX.length() == 1)
                                                                                                                           {
                                                                                                                              addr465:
                                                                                                                              while(!(_loc4_ && param2))
                                                                                                                              {
                                                                                                                                 this.§;!9§ = this.§+@§(param1.finishParticleSizeX);
                                                                                                                                 while(!(_loc4_ && param1))
                                                                                                                                 {
                                                                                                                                 }
                                                                                                                                 while(_loc3_)
                                                                                                                                 {
                                                                                                                                    continue loop9;
                                                                                                                                    §§goto(addr478);
                                                                                                                                 }
                                                                                                                                 addr478:
                                                                                                                                 continue loop3;
                                                                                                                                 if(_loc3_ || param1)
                                                                                                                                 {
                                                                                                                                    if(_loc3_)
                                                                                                                                    {
                                                                                                                                       this.§]!Z§ = this.§+@§(param1.maxRadiusVariance);
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(_loc4_ && param1)
                                                                                                                                          {
                                                                                                                                             continue loop11;
                                                                                                                                          }
                                                                                                                                          §§goto(addr269);
                                                                                                                                          addr194:
                                                                                                                                          if(!(_loc4_ && param1))
                                                                                                                                          {
                                                                                                                                             if(_loc3_)
                                                                                                                                             {
                                                                                                                                                continue loop6;
                                                                                                                                             }
                                                                                                                                             continue loop62;
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       continue loop12;
                                                                                                                                       addr262:
                                                                                                                                    }
                                                                                                                                    continue loop22;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(this);
                                                                                                                                 §§push(this.§@!x§);
                                                                                                                                 if(!_loc4_)
                                                                                                                                 {
                                                                                                                                    §§push(param2.height);
                                                                                                                                    if(_loc3_)
                                                                                                                                    {
                                                                                                                                       addr507:
                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                       if(_loc3_ || _loc3_)
                                                                                                                                       {
                                                                                                                                          §§push(param2.width);
                                                                                                                                       }
                                                                                                                                       §§pop().§;`§ = §§pop();
                                                                                                                                       continue loop33;
                                                                                                                                    }
                                                                                                                                    §§push(§§pop() / §§pop());
                                                                                                                                 }
                                                                                                                                 §§goto(addr507);
                                                                                                                                 §§goto(addr465);
                                                                                                                              }
                                                                                                                              addr465:
                                                                                                                              addr528:
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(param1.FinishParticleSizeVarianceX.length() == 1)
                                                                                                                              {
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    this.§@!x§ = this.§+@§(param1.FinishParticleSizeVarianceX);
                                                                                                                                    break loop53;
                                                                                                                                 }
                                                                                                                                 addr452:
                                                                                                                              }
                                                                                                                              addr431:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(param1.finishParticleSizeY.length() == 1)
                                                                                                                                 {
                                                                                                                                    addr437:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       this.§7=§ = this.§+@§(param1.finishParticleSizeY);
                                                                                                                                       addr443:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(_loc4_)
                                                                                                                                          {
                                                                                                                                             continue loop27;
                                                                                                                                          }
                                                                                                                                          addr445:
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    addr437:
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(param1.FinishParticleSizeVarianceY.length() != 1)
                                                                                                                                    {
                                                                                                                                       continue loop43;
                                                                                                                                    }
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       this.§;`§ = this.§+@§(param1.FinishParticleSizeVarianceY);
                                                                                                                                       continue loop42;
                                                                                                                                    }
                                                                                                                                    §§goto(addr445);
                                                                                                                                 }
                                                                                                                                 break loop53;
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        continue loop28;
                                                                                                                     }
                                                                                                                  }
                                                                                                                  addr561:
                                                                                                               }
                                                                                                               §§push(§§pop() / §§pop());
                                                                                                            }
                                                                                                            §§goto(addr560);
                                                                                                         }
                                                                                                         if(_loc3_ || param1)
                                                                                                         {
                                                                                                            continue loop7;
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr509);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    addr611:
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        addr398:
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr284);
                                                                     }
                                                                     §§goto(addr443);
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§goto(addr431);
                                                                  }
                                                               }
                                                               while(true)
                                                               {
                                                                  if(!_loc4_)
                                                                  {
                                                                     if(!(_loc3_ || _loc3_))
                                                                     {
                                                                        continue loop63;
                                                                     }
                                                                     this.§"!q§ = this.§+@§(param1.speedVariance);
                                                                     §§goto(addr345);
                                                                  }
                                                                  break;
                                                                  §§goto(addr247);
                                                               }
                                                               addr247:
                                                               §§goto(addr561);
                                                            }
                                                            continue loop0;
                                                         }
                                                      }
                                                      §§push(§§pop() / §§pop());
                                                   }
                                                   §§goto(addr694);
                                                }
                                                continue loop5;
                                             }
                                          }
                                       }
                                    }
                                    else
                                    {
                                       this.§=9§ = 0;
                                    }
                                    §§goto(addr712);
                                 }
                              }
                           }
                        }
                     }
                     while(!(_loc4_ && param2))
                     {
                        §§goto(addr605);
                     }
                  }
               }
            }
         }
         §§goto(addr437);
      }
      
      protected function §!!v§(param1:XMLList) : int
      {
         return parseInt(param1.attribute("value"));
      }
      
      protected function §+@§(param1:XMLList) : Number
      {
         return parseFloat(param1.attribute("value"));
      }
      
      protected function §<!3§(param1:XMLList) : String
      {
         return param1.attribute("value");
      }
      
      protected function §?!c§(param1:XMLList) : ColorArgb
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:ColorArgb = new ColorArgb();
         if(!_loc3_)
         {
            _loc2_.red = parseFloat(param1.attribute("red"));
            while(true)
            {
               _loc2_.green = parseFloat(param1.attribute("green"));
               while(!(_loc3_ && param1))
               {
                  _loc2_.blue = parseFloat(param1.attribute("blue"));
                  loop2:
                  while(_loc4_ || _loc2_)
                  {
                     while(true)
                     {
                        _loc2_.alpha = parseFloat(param1.attribute("alpha"));
                        if(_loc4_ || _loc2_)
                        {
                           break;
                        }
                        continue loop2;
                     }
                     return _loc2_;
                  }
               }
            }
         }
         §§goto(addr80);
      }
      
      protected function §,!;§(param1:XMLList) : String
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(this.§!!v§(param1));
         if(!_loc4_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(_loc2_);
         if(!_loc4_)
         {
            var _loc3_:* = §§pop();
            if(!_loc4_)
            {
               §§push(0);
               if(!(_loc4_ && _loc2_))
               {
                  §§push(_loc3_);
                  if(_loc5_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc5_)
                        {
                           addr151:
                           §§push(0);
                           if(!(_loc5_ || _loc3_))
                           {
                              addr307:
                           }
                        }
                        else
                        {
                           addr276:
                           §§push(5);
                           if(_loc4_)
                           {
                              addr339:
                              §§push(_loc3_);
                              if(!_loc4_)
                              {
                                 addr352:
                                 if(§§pop() === §§pop())
                                 {
                                    if(_loc5_)
                                    {
                                       addr355:
                                       §§push(8);
                                       if(_loc5_ || _loc2_)
                                       {
                                          addr377:
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
                                          addr377:
                                          addr363:
                                       }
                                       else
                                       {
                                          addr372:
                                          §§goto(addr377);
                                       }
                                    }
                                    else
                                    {
                                       addr369:
                                       §§push(9);
                                       if(_loc5_)
                                       {
                                          §§goto(addr372);
                                       }
                                    }
                                 }
                                 else
                                 {
                                    §§push(775);
                                    if(!_loc4_)
                                    {
                                       addr367:
                                       §§push(_loc3_);
                                    }
                                 }
                                 §§goto(addr377);
                              }
                              if(§§pop() === §§pop())
                              {
                                 §§goto(addr369);
                              }
                              else
                              {
                                 §§push(10);
                              }
                           }
                           else
                           {
                              addr279:
                           }
                        }
                     }
                     else
                     {
                        §§push(1);
                        if(_loc5_)
                        {
                           §§push(_loc3_);
                           if(_loc5_)
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(!(_loc4_ && this))
                                 {
                                    §§push(1);
                                    if(_loc4_)
                                    {
                                    }
                                    §§goto(addr377);
                                 }
                                 else
                                 {
                                    §§goto(addr355);
                                 }
                              }
                              else
                              {
                                 §§push(768);
                                 if(_loc5_)
                                 {
                                    §§push(_loc3_);
                                    if(!(_loc4_ && _loc3_))
                                    {
                                       if(§§pop() === §§pop())
                                       {
                                          if(!_loc4_)
                                          {
                                             §§push(2);
                                             if(_loc5_)
                                             {
                                                §§goto(addr377);
                                             }
                                             else
                                             {
                                                §§goto(addr372);
                                             }
                                          }
                                          else
                                          {
                                             addr253:
                                             §§push(4);
                                             if(!_loc5_)
                                             {
                                             }
                                             §§goto(addr377);
                                          }
                                          §§goto(addr377);
                                       }
                                       else
                                       {
                                          §§push(769);
                                          if(!(_loc4_ && _loc2_))
                                          {
                                             §§push(_loc3_);
                                             if(!(_loc4_ && param1))
                                             {
                                                if(§§pop() === §§pop())
                                                {
                                                   if(_loc5_)
                                                   {
                                                      §§push(3);
                                                      if(_loc5_ || _loc3_)
                                                      {
                                                      }
                                                      §§goto(addr377);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr253);
                                                   }
                                                }
                                                else
                                                {
                                                   §§push(770);
                                                   if(_loc5_ || _loc2_)
                                                   {
                                                      §§push(_loc3_);
                                                      if(!(_loc4_ && param1))
                                                      {
                                                         addr250:
                                                         if(§§pop() === §§pop())
                                                         {
                                                            if(_loc5_)
                                                            {
                                                               §§goto(addr253);
                                                            }
                                                            §§goto(addr355);
                                                         }
                                                         else
                                                         {
                                                            §§push(771);
                                                            if(!(_loc4_ && _loc3_))
                                                            {
                                                               addr265:
                                                               §§push(_loc3_);
                                                               if(_loc5_ || _loc2_)
                                                               {
                                                                  addr273:
                                                                  if(§§pop() === §§pop())
                                                                  {
                                                                     if(_loc5_)
                                                                     {
                                                                        §§goto(addr276);
                                                                     }
                                                                     §§goto(addr369);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(772);
                                                                     if(_loc5_)
                                                                     {
                                                                        §§push(_loc3_);
                                                                        if(!(_loc4_ && _loc3_))
                                                                        {
                                                                           addr291:
                                                                           if(§§pop() === §§pop())
                                                                           {
                                                                              if(!(_loc4_ && _loc3_))
                                                                              {
                                                                                 §§push(6);
                                                                                 if(_loc5_ || _loc2_)
                                                                                 {
                                                                                    §§goto(addr307);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr330:
                                                                                    §§goto(addr377);
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr369);
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              §§push(773);
                                                                              if(_loc5_ || _loc2_)
                                                                              {
                                                                                 addr316:
                                                                                 §§push(_loc3_);
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    if(§§pop() === §§pop())
                                                                                    {
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          §§push(7);
                                                                                          if(!(_loc4_ && this))
                                                                                          {
                                                                                             §§goto(addr330);
                                                                                          }
                                                                                          §§goto(addr377);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr355);
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§push(774);
                                                                                       if(!(_loc4_ && _loc3_))
                                                                                       {
                                                                                          §§goto(addr339);
                                                                                       }
                                                                                       §§goto(addr367);
                                                                                    }
                                                                                    §§goto(addr377);
                                                                                 }
                                                                                 §§goto(addr352);
                                                                              }
                                                                           }
                                                                           §§goto(addr377);
                                                                        }
                                                                        §§goto(addr352);
                                                                     }
                                                                     §§goto(addr367);
                                                                  }
                                                               }
                                                               §§goto(addr291);
                                                            }
                                                         }
                                                         §§goto(addr316);
                                                      }
                                                      §§goto(addr291);
                                                   }
                                                }
                                                §§goto(addr279);
                                             }
                                             §§goto(addr250);
                                          }
                                       }
                                       §§goto(addr265);
                                    }
                                    §§goto(addr339);
                                 }
                                 §§goto(addr307);
                              }
                              §§goto(addr377);
                           }
                           §§goto(addr352);
                        }
                        §§goto(addr330);
                     }
                     §§goto(addr377);
                  }
                  §§goto(addr273);
               }
               §§goto(addr367);
            }
            §§goto(addr151);
         }
         §§goto(addr377);
      }
      
      protected function §+8§(param1:XMLList) : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(this.§<!3§(param1));
         if(_loc3_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(!(_loc4_ && _loc3_))
         {
            §§push(_loc2_);
            loop0:
            while(true)
            {
               §§push(§#i§.§@R§);
               addr131:
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  if(_loc3_ || this)
                  {
                     §§push(§§pop());
                     loop2:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           addr141:
                           while(true)
                           {
                              §§pop();
                              addr142:
                              while(true)
                              {
                                 §§push(_loc2_);
                                 addr116:
                                 while(true)
                                 {
                                    §§push(§#i§.§!!7§);
                                    addr118:
                                    while(true)
                                    {
                                       §§push(§§pop() == §§pop());
                                    }
                                 }
                              }
                           }
                           addr141:
                        }
                        loop3:
                        while(true)
                        {
                           addr120:
                           while(true)
                           {
                              §§push(§§pop());
                              if(!_loc3_)
                              {
                                 break;
                              }
                              if(!§§pop())
                              {
                                 while(true)
                                 {
                                    if(_loc3_)
                                    {
                                       §§pop();
                                       addr127:
                                       while(true)
                                       {
                                          §§push(_loc2_);
                                          if(_loc3_)
                                          {
                                             continue loop0;
                                          }
                                       }
                                       addr127:
                                    }
                                    else
                                    {
                                       §§goto(addr141);
                                    }
                                 }
                                 §§goto(addr142);
                                 addr124:
                              }
                              else
                              {
                                 while(§§pop())
                                 {
                                    if(_loc4_)
                                    {
                                       break;
                                    }
                                    if(!(_loc4_ && this))
                                    {
                                       if(_loc3_)
                                       {
                                          addr95:
                                          §§push(_loc2_);
                                          while(true)
                                          {
                                             if(!(_loc4_ && this))
                                             {
                                                break loop3;
                                             }
                                          }
                                          addr95:
                                       }
                                       else
                                       {
                                          §§goto(addr142);
                                       }
                                       §§goto(addr116);
                                    }
                                    else
                                    {
                                       §§goto(addr127);
                                    }
                                 }
                                 §§push(§#i§.§@R§);
                                 if(_loc3_ || _loc3_)
                                 {
                                    return §§pop();
                                 }
                                 addr81:
                              }
                              §§goto(addr95);
                           }
                           continue loop2;
                        }
                        return §§pop();
                     }
                  }
                  §§goto(addr141);
               }
            }
         }
         §§goto(addr127);
      }
   }
}

import §9!N§.§4!h§;

class PDParticle extends §4!h§
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
