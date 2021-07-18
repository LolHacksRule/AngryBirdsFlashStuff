package § !+§
{
   import §4v§.deg2rad;
   import §]!a§.§ !g§;
   import §]!a§.Texture;
   import flash.display3D.Context3DBlendFactor;
   
   public class §3+§ extends §1!&§
   {
       
      
      private const §'p§:int = 0;
      
      private const §#! §:int = 1;
      
      private var §65§:Number;
      
      private var §33§:int;
      
      private var §=!Y§:Number;
      
      private var §4g§:Number;
      
      private var §5!3§:int;
      
      private var §-!W§:Number;
      
      private var §,b§:Number;
      
      private var §9!>§:Number;
      
      private var § !%§:Number;
      
      private var §!!1§:Number;
      
      private var §+^§:Number;
      
      private var §0!^§:Number;
      
      private var §8O§:Number;
      
      private var §2O§:Number;
      
      private var §get §:Number;
      
      private var §&!$§:Number;
      
      private var §]C§:Number;
      
      private var §&8§:Number;
      
      private var §@c§:Number;
      
      private var §3o§:Number;
      
      private var §3!5§:Number;
      
      private var §!T§:Number;
      
      private var §"!0§:Number;
      
      private var §&!L§:Number;
      
      private var §`Y§:Number;
      
      private var §-E§:Number;
      
      private var §set §:Number;
      
      private var §6-§:Number;
      
      private var §[&§:Number;
      
      private var §`!B§:Number;
      
      private var §<E§:Number;
      
      private var §6!6§:ColorArgb;
      
      private var § !-§:ColorArgb;
      
      private var §4^§:ColorArgb;
      
      private var §8!X§:ColorArgb;
      
      public function §3+§(param1:XML, param2:Texture)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param2))
         {
            this.§8!E§(param1,param2);
         }
         §§push(this.§5!3§);
         §§push(this.§-!W§);
         if(!_loc5_)
         {
            §§push(§§pop() + this.§9!>§);
         }
         §§push(§§pop() / §§pop());
         if(!(_loc5_ && param1))
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(_loc4_ || param2)
         {
            super(param2,_loc3_,this.§5!3§,§6W§,§,!i§);
         }
         do
         {
            §@!,§ = false;
         }
         while(!(_loc4_ || param1));
         
      }
      
      public function get § =§() : int
      {
         return this.§5!3§;
      }
      
      override protected function createParticle() : §]!N§
      {
         return new PDParticle();
      }
      
      private function get §`!F§() : Boolean
      {
         return this.§ =§ >= 20;
      }
      
      override protected function initParticle(param1:§]!N§) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Deobfuscation is activated but decompilation still failed. If the file is NOT obfuscated, disable "Automatic deobfuscation" for better results.
          * Error type: ExecutionException (java.lang.StackOverflowError)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      override protected function advanceParticle(param1:§]!N§, param2:Number) : void
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
         §§push(_loc3_.§4A§ - _loc3_.§]!h§);
         if(!(_loc13_ && this))
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:*;
         §§push(_loc4_ = §§pop());
         if(!_loc13_)
         {
            §§push(param2);
            if(_loc14_ || param1)
            {
               §§push(§§pop() > §§pop());
               if(!(_loc13_ && _loc3_))
               {
                  if(§§pop())
                  {
                     if(!_loc13_)
                     {
                        §§push(param2);
                        if(_loc14_ || this)
                        {
                           §§push(Number(§§pop()));
                           if(_loc14_)
                           {
                              addr103:
                              §§push(Number(§§pop()));
                              if(_loc14_ || param1)
                              {
                                 param2 = §§pop();
                                 if(_loc14_ || param1)
                                 {
                                    _loc3_.§]!h§ += param2;
                                    loop0:
                                    while(true)
                                    {
                                       if(this.§33§ != this.§#! §)
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
                                                      loop124:
                                                      while(true)
                                                      {
                                                         §§pop();
                                                         loop125:
                                                         while(true)
                                                         {
                                                            §§push(this.§`!F§);
                                                            loop126:
                                                            while(true)
                                                            {
                                                               §§push(!§§pop());
                                                               loop127:
                                                               while(true)
                                                               {
                                                                  if(!_loc13_)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           loop5:
                                                                           while(true)
                                                                           {
                                                                              if(_loc14_ || this)
                                                                              {
                                                                                 §§push(_loc3_.x - _loc3_.startX);
                                                                                 loop6:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(Number(§§pop()));
                                                                                    loop7:
                                                                                    while(true)
                                                                                    {
                                                                                       if(!_loc13_)
                                                                                       {
                                                                                          _loc5_ = §§pop();
                                                                                          loop8:
                                                                                          while(true)
                                                                                          {
                                                                                             if(!_loc13_)
                                                                                             {
                                                                                                §§push(_loc3_.y - _loc3_.startY);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                loop19:
                                                                                                while(true)
                                                                                                {
                                                                                                   loop20:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      _loc3_.x = §5v§ - Math.cos(_loc3_.rotation) * _loc3_.radius;
                                                                                                      loop21:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         _loc3_.y = §9!I§ - Math.sin(_loc3_.rotation) * _loc3_.radius;
                                                                                                         loop22:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc3_.radius);
                                                                                                            addr1173:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(this.§[&§);
                                                                                                               loop24:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(§§pop() < §§pop())
                                                                                                                  {
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        _loc3_.§]!h§ = _loc3_.§4A§;
                                                                                                                        addr1180:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                        }
                                                                                                                     }
                                                                                                                     addr1176:
                                                                                                                  }
                                                                                                                  loop26:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     loop27:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc3_.skipUpdate);
                                                                                                                        loop28:
                                                                                                                        while(_loc14_)
                                                                                                                        {
                                                                                                                           §§push(!§§pop());
                                                                                                                           if(!(_loc13_ && this))
                                                                                                                           {
                                                                                                                              if(_loc13_)
                                                                                                                              {
                                                                                                                                 continue loop1;
                                                                                                                              }
                                                                                                                              §§push(§§pop());
                                                                                                                              if(_loc13_ && this)
                                                                                                                              {
                                                                                                                                 continue loop3;
                                                                                                                              }
                                                                                                                              if(_loc14_)
                                                                                                                              {
                                                                                                                                 if(!§§pop())
                                                                                                                                 {
                                                                                                                                    loop69:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(_loc13_)
                                                                                                                                       {
                                                                                                                                          continue loop127;
                                                                                                                                       }
                                                                                                                                       if(!_loc13_)
                                                                                                                                       {
                                                                                                                                          addr592:
                                                                                                                                          loop68:
                                                                                                                                          for(; !_loc13_; §§goto(addr592))
                                                                                                                                          {
                                                                                                                                             §§push(this.§`!F§);
                                                                                                                                             if(!(_loc13_ && param2))
                                                                                                                                             {
                                                                                                                                                if(!(_loc14_ || param2))
                                                                                                                                                {
                                                                                                                                                   continue loop28;
                                                                                                                                                }
                                                                                                                                                §§push(!§§pop());
                                                                                                                                                if(_loc14_ || _loc3_)
                                                                                                                                                {
                                                                                                                                                   if(_loc13_)
                                                                                                                                                   {
                                                                                                                                                      continue loop69;
                                                                                                                                                   }
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(§§pop())
                                                                                                                                                      {
                                                                                                                                                         if(!_loc13_)
                                                                                                                                                         {
                                                                                                                                                            if(_loc14_)
                                                                                                                                                            {
                                                                                                                                                               if(!_loc14_)
                                                                                                                                                               {
                                                                                                                                                                  continue loop21;
                                                                                                                                                               }
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(this.§`!F§);
                                                                                                                                                                  addr509:
                                                                                                                                                                  loop30:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(!_loc13_)
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc13_)
                                                                                                                                                                        {
                                                                                                                                                                           if(!§§pop())
                                                                                                                                                                           {
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 _loc3_.scaleX += _loc3_.scaleDeltaX * param2;
                                                                                                                                                                                 loop32:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    _loc3_.scaleY += _loc3_.scaleDeltaY * param2;
                                                                                                                                                                                    loop33:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!_loc13_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc14_ || this)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc14_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc3_.colorArgb);
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc3_.colorArgb);
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop().red);
                                                                                                                                                                                                      loop36:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(_loc3_.colorArgbDelta);
                                                                                                                                                                                                         loop37:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop().red);
                                                                                                                                                                                                            loop38:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(param2);
                                                                                                                                                                                                               loop39:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                                                                  loop40:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                                                                     loop41:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§pop().red = §§pop();
                                                                                                                                                                                                                        loop42:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(_loc14_ || _loc3_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(!_loc14_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 continue loop20;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§push(_loc3_.colorArgb);
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(_loc3_.colorArgb);
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(§§pop().green);
                                                                                                                                                                                                                                    loop45:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(_loc3_.colorArgbDelta);
                                                                                                                                                                                                                                       loop46:
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(§§pop().green);
                                                                                                                                                                                                                                          if(!(_loc13_ && param1))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(param2);
                                                                                                                                                                                                                                             loop47:
                                                                                                                                                                                                                                             while(_loc14_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                addr281:
                                                                                                                                                                                                                                                if(!(_loc14_ || _loc3_))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   continue;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                addr289:
                                                                                                                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                if(!(_loc13_ && param1))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(!_loc13_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(!_loc13_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         addr301:
                                                                                                                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                         if(!(_loc13_ && param1))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§pop().alpha = §§pop();
                                                                                                                                                                                                                                                            loop60:
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(!_loc13_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(!_loc13_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     _loc3_.red = _loc3_.colorArgb.red;
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        _loc3_.green = _loc3_.colorArgb.green;
                                                                                                                                                                                                                                                                        loop62:
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(_loc13_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              continue loop60;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           if(_loc14_ || param1)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(!_loc14_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 break;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              if(_loc14_ || param2)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 _loc3_.blue = _loc3_.colorArgb.blue;
                                                                                                                                                                                                                                                                                 continue;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              loop118:
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(_loc14_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(_loc8_);
                                                                                                                                                                                                                                                                                    loop99:
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(_loc14_ || _loc3_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          loop140:
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(_loc3_.radialAcceleration);
                                                                                                                                                                                                                                                                                             addr1003:
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(_loc14_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                      addr1007:
                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         if(!(_loc13_ && param1))
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            if(_loc14_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               _loc8_ = §§pop();
                                                                                                                                                                                                                                                                                                               loop97:
                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  if(_loc14_ || param2)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§push(_loc9_);
                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        if(_loc13_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           continue loop99;
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§push(§§pop() * _loc3_.radialAcceleration);
                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                           addr990:
                                                                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              _loc9_ = §§pop();
                                                                                                                                                                                                                                                                                                                              loop137:
                                                                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 §§push(_loc10_);
                                                                                                                                                                                                                                                                                                                                 addr970:
                                                                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                    loop139:
                                                                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       _loc12_ = §§pop();
                                                                                                                                                                                                                                                                                                                                       addr972:
                                                                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          if(!(_loc13_ && this))
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             if(_loc14_)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                §§push(_loc11_);
                                                                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   if(!_loc13_)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      continue loop6;
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   continue loop139;
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                continue loop139;
                                                                                                                                                                                                                                                                                                                                                addr909:
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             continue loop97;
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          continue loop137;
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     addr984:
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  else
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        §§push(_loc3_.skipUpdate);
                                                                                                                                                                                                                                                                                                                        loop100:
                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           §§push(!§§pop());
                                                                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              §§push(§§pop());
                                                                                                                                                                                                                                                                                                                              addr1311:
                                                                                                                                                                                                                                                                                                                              loop102:
                                                                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 if(!§§pop())
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       §§pop();
                                                                                                                                                                                                                                                                                                                                       addr1323:
                                                                                                                                                                                                                                                                                                                                       loop104:
                                                                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          §§push(this.§`!F§);
                                                                                                                                                                                                                                                                                                                                          addr1272:
                                                                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             if(_loc13_)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                continue loop104;
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             if(_loc13_ && param2)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                break;
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             if(_loc13_)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                continue loop100;
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             §§push(!§§pop());
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          continue loop102;
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    break loop30;
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     addr1307:
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         else
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            loop18:
                                                                                                                                                                                                                                                                                                            while(_loc14_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                  loop78:
                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     _loc7_ = §§pop();
                                                                                                                                                                                                                                                                                                                     addr1116:
                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        loop16:
                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           §§push(_loc5_);
                                                                                                                                                                                                                                                                                                                           addr1077:
                                                                                                                                                                                                                                                                                                                           addr1109:
                                                                                                                                                                                                                                                                                                                           while(_loc14_ || this)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 §§push(_loc7_);
                                                                                                                                                                                                                                                                                                                                 addr1085:
                                                                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                                                                                                                    addr1086:
                                                                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                       addr1087:
                                                                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          _loc8_ = §§pop();
                                                                                                                                                                                                                                                                                                                                          addr1088:
                                                                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             §§push(_loc6_);
                                                                                                                                                                                                                                                                                                                                             addr1064:
                                                                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                §§push(_loc7_);
                                                                                                                                                                                                                                                                                                                                                addr1065:
                                                                                                                                                                                                                                                                                                                                                while(_loc14_)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                                                                                                                                   loop77:
                                                                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                                      addr1069:
                                                                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         if(_loc14_)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            break loop77;
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         continue loop78;
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   addr1071:
                                                                                                                                                                                                                                                                                                                                                   _loc9_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                   while(!_loc13_)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      §§push(_loc8_);
                                                                                                                                                                                                                                                                                                                                                      if(_loc14_)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         addr1037:
                                                                                                                                                                                                                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                                         while(!(_loc13_ && this))
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            if(_loc14_ || this)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               addr1051:
                                                                                                                                                                                                                                                                                                                                                               _loc10_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                               while(!(_loc13_ && param1))
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  if(_loc13_)
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     continue loop0;
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     §§push(_loc9_);
                                                                                                                                                                                                                                                                                                                                                                     addr1027:
                                                                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                        addr1028:
                                                                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           _loc11_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                                           continue loop118;
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr1051);
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               continue loop19;
                                                                                                                                                                                                                                                                                                                                                               addr1052:
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            §§goto(addr1068);
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         §§goto(addr1069);
                                                                                                                                                                                                                                                                                                                                                         addr1037:
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      §§goto(addr1037);
                                                                                                                                                                                                                                                                                                                                                      §§goto(addr1071);
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   addr1068:
                                                                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
                                                                                                                                                                                                                                                                                                                                                      continue loop19;
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                continue loop24;
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              §§push(0.01);
                                                                                                                                                                                                                                                                                                                              addr1110:
                                                                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 if(§§pop() >= §§pop())
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    continue loop16;
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    continue loop18;
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
                                                                                                                                                                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            addr1123:
                                                                                                                                                                                                                                                                                                            addr1112:
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            _loc6_ = §§pop();
                                                                                                                                                                                                                                                                                                            continue loop8;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   addr1006:
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr1085);
                                                                                                                                                                                                                                                                                                continue loop140;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          addr1001:
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr1037);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr1116);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           else
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              loop50:
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(_loc14_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(!(_loc13_ && _loc3_))
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(!(_loc13_ && param1))
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(_loc14_ || this)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(_loc3_.colorArgb);
                                                                                                                                                                                                                                                                                             loop51:
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§push(_loc3_.colorArgb);
                                                                                                                                                                                                                                                                                                addr319:
                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§push(§§pop().blue);
                                                                                                                                                                                                                                                                                                   addr320:
                                                                                                                                                                                                                                                                                                   while(_loc14_ || this)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§push(_loc3_.colorArgbDelta);
                                                                                                                                                                                                                                                                                                      loop54:
                                                                                                                                                                                                                                                                                                      while(!(_loc13_ && param2))
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§push(§§pop().blue);
                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§push(param2);
                                                                                                                                                                                                                                                                                                            loop56:
                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                               addr339:
                                                                                                                                                                                                                                                                                                               while(!(_loc13_ && param1))
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  if(_loc14_ || this)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                     while(!(_loc13_ && param1))
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        §§pop().blue = §§pop();
                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           if(!(_loc13_ && this))
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              continue loop51;
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           continue loop42;
                                                                                                                                                                                                                                                                                                                           addr136:
                                                                                                                                                                                                                                                                                                                           if(_loc13_ && param1)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              continue;
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           if(_loc13_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              continue loop68;
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           if(!(_loc13_ && param2))
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              return;
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           addr1234:
                                                                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              §§push(_loc3_);
                                                                                                                                                                                                                                                                                                                              §§push(_loc3_.radius);
                                                                                                                                                                                                                                                                                                                              if(_loc14_)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 §§push(_loc3_.radiusDelta);
                                                                                                                                                                                                                                                                                                                                 if(_loc14_)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    §§push(§§pop() * param2);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §§pop().radius = §§pop();
                                                                                                                                                                                                                                                                                                                              continue loop20;
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        continue loop47;
                                                                                                                                                                                                                                                                                                                        if(!(_loc14_ || this))
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           continue;
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        if(!(_loc13_ && param1))
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           if(_loc13_ && param2)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              continue loop41;
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§push(_loc3_.colorArgbDelta);
                                                                                                                                                                                                                                                                                                                           if(!_loc14_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              continue loop54;
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           if(!_loc14_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              continue loop46;
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§push(§§pop().alpha);
                                                                                                                                                                                                                                                                                                                           if(_loc14_ || param1)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              §§push(param2);
                                                                                                                                                                                                                                                                                                                              if(!(_loc14_ || param2))
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 continue loop56;
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §§goto(addr281);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§goto(addr289);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           §§pop().green = §§pop();
                                                                                                                                                                                                                                                                                                                           continue loop50;
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     continue loop45;
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  continue loop38;
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               continue loop40;
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      continue loop37;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   continue loop36;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§goto(addr1111);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          addr634:
                                                                                                                                                                                                                                                                                          if(_loc13_ && param2)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             addr802:
                                                                                                                                                                                                                                                                                             §§push(_loc3_);
                                                                                                                                                                                                                                                                                             §§push(_loc3_.velocityX);
                                                                                                                                                                                                                                                                                             if(!(_loc13_ && param2))
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§push(2 * param2);
                                                                                                                                                                                                                                                                                                if(_loc14_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§push(this.§3!5§);
                                                                                                                                                                                                                                                                                                   if(!(_loc13_ && this))
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§push(_loc8_);
                                                                                                                                                                                                                                                                                                      if(!(_loc13_ && param1))
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         addr844:
                                                                                                                                                                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                         if(!(_loc13_ && this))
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§push(_loc10_);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§pop().velocityX = §§pop() + §§pop() * §§pop();
                                                                                                                                                                                                                                                                                                         break loop68;
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr844);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             _loc3_.x += _loc3_.velocityX * param2;
                                                                                                                                                                                                                                                                                             break loop50;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          addr609:
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    break;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 continue loop33;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(_loc13_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    continue loop8;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 if(_loc14_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    _loc3_.y += _loc3_.velocityY * param2;
                                                                                                                                                                                                                                                                                    break loop62;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr1176);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr1111);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(!_loc13_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              continue loop27;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr972);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(this.§`!F§);
                                                                                                                                                                                                                                                                     addr1288:
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(§§pop())
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§goto(addr1289);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        else
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           _loc3_.rotation += _loc3_.rotationDelta * param2;
                                                                                                                                                                                                                                                                           §§goto(addr1234);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  addr1286:
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               else
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(!(_loc14_ || _loc3_))
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        break loop60;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     continue loop22;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  addr547:
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            addr691:
                                                                                                                                                                                                                                                            if(!_loc13_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               _loc3_.rotation += _loc3_.rotationDelta * param2;
                                                                                                                                                                                                                                                               §§goto(addr634);
                                                                                                                                                                                                                                                               addr693:
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(_loc3_);
                                                                                                                                                                                                                                                               §§push(_loc3_.velocityY);
                                                                                                                                                                                                                                                               if(!(_loc13_ && _loc3_))
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(param2);
                                                                                                                                                                                                                                                                  if(!_loc13_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(this.§!T§);
                                                                                                                                                                                                                                                                     if(_loc14_ || this)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(_loc9_);
                                                                                                                                                                                                                                                                        if(!(_loc13_ && _loc3_))
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           addr688:
                                                                                                                                                                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                           if(_loc14_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(_loc11_);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§pop().velocityY = §§pop() + §§pop() * §§pop();
                                                                                                                                                                                                                                                                           continue;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr688);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr693);
                                                                                                                                                                                                                                                            addr720:
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr320);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§goto(addr391);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      addr390:
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr337);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr339);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             continue loop39;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr390);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           else
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr514:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(param2);
                                                                                                                                                                                                                                 if(_loc14_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(_loc14_ || param1)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(_loc14_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(!_loc13_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(!_loc13_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(§§pop() * 2);
                                                                                                                                                                                                                                                if(_loc14_ || param2)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr539:
                                                                                                                                                                                                                                                   if(_loc13_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      break loop42;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   if(_loc14_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr1087);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                if(!_loc13_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   param2 = §§pop();
                                                                                                                                                                                                                                                   §§goto(addr547);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr984);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr1028);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr970);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          loop132:
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(_loc14_ || param1)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(!_loc13_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(!_loc13_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(!_loc13_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(_loc14_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(_loc3_.tangentialAcceleration);
                                                                                                                                                                                                                                                            if(_loc14_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               addr876:
                                                                                                                                                                                                                                                               if(_loc14_ || param2)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(!_loc13_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(!_loc14_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           break;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        if(_loc14_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                           break loop42;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr1006);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     addr966:
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        _loc10_ = §§pop();
                                                                                                                                                                                                                                                                        break loop33;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(!(_loc13_ && _loc3_))
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(_loc14_ || param2)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§goto(addr966);
                                                                                                                                                                                                                                                                           §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        else
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§goto(addr1077);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr1027);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  addr951:
                                                                                                                                                                                                                                                                  addr884:
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               else
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     _loc7_ = §§pop();
                                                                                                                                                                                                                                                                     §§goto(addr876);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  addr1108:
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr1109);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            else
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               while(!_loc13_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(_loc14_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(!_loc13_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(_loc14_ || _loc3_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§goto(addr951);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           addr950:
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr1110);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr1065);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr1003);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr988);
                                                                                                                                                                                                                                                               addr937:
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr1003);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr1007);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr989);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr990);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr909);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             else
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(_loc14_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(!(_loc13_ && param2))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(!(_loc14_ || param1))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            continue loop7;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§goto(addr937);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr1086);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   continue loop132;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                addr919:
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          addr857:
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1064);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr884);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr539);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              addr514:
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr1087);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           _loc11_ = §§pop();
                                                                                                                                                                                                                           addr892:
                                                                                                                                                                                                                           while(_loc13_ && this)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§goto(addr1072);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           if(!(_loc13_ && this))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(this.§`!F§);
                                                                                                                                                                                                                              break loop28;
                                                                                                                                                                                                                              addr906:
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           continue loop5;
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
                                                                                                                                                                                             §§goto(addr1323);
                                                                                                                                                                                          }
                                                                                                                                                                                          break;
                                                                                                                                                                                       }
                                                                                                                                                                                       continue loop32;
                                                                                                                                                                                    }
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr857);
                                                                                                                                                                                       §§goto(addr966);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 addr561:
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr514);
                                                                                                                                                                        }
                                                                                                                                                                        break;
                                                                                                                                                                     }
                                                                                                                                                                     continue loop2;
                                                                                                                                                                  }
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(!§§pop())
                                                                                                                                                                     {
                                                                                                                                                                        continue loop26;
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1286);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            addr733:
                                                                                                                                                            while(!_loc13_)
                                                                                                                                                            {
                                                                                                                                                               if(!_loc13_)
                                                                                                                                                               {
                                                                                                                                                                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
                                                                                                                                                                  §§goto(addr733);
                                                                                                                                                                  continue;
                                                                                                                                                               }
                                                                                                                                                               continue loop125;
                                                                                                                                                            }
                                                                                                                                                            if(_loc14_ || _loc3_)
                                                                                                                                                            {
                                                                                                                                                               if(_loc13_)
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr892);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr609);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1088);
                                                                                                                                                            addr779:
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr514);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr124);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr509);
                                                                                                                                          }
                                                                                                                                          §§pop();
                                                                                                                                          if(!(_loc13_ && _loc3_))
                                                                                                                                          {
                                                                                                                                             §§push(_loc3_);
                                                                                                                                             §§push(_loc3_.velocityY);
                                                                                                                                             if(_loc14_)
                                                                                                                                             {
                                                                                                                                                §§push(2 * param2);
                                                                                                                                                if(_loc14_)
                                                                                                                                                {
                                                                                                                                                   §§push(this.§!T§);
                                                                                                                                                   if(_loc14_ || param1)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc9_);
                                                                                                                                                      if(!(_loc13_ && param1))
                                                                                                                                                      {
                                                                                                                                                         addr776:
                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                         if(!_loc13_)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc11_);
                                                                                                                                                         }
                                                                                                                                                         §§pop().velocityY = §§pop() + §§pop() * §§pop();
                                                                                                                                                         §§goto(addr779);
                                                                                                                                                      }
                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr776);
                                                                                                                                          }
                                                                                                                                          §§goto(addr1052);
                                                                                                                                       }
                                                                                                                                       §§goto(addr1272);
                                                                                                                                    }
                                                                                                                                    continue loop127;
                                                                                                                                    addr588:
                                                                                                                                 }
                                                                                                                                 §§goto(addr499);
                                                                                                                              }
                                                                                                                              §§goto(addr1311);
                                                                                                                           }
                                                                                                                           §§goto(addr588);
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(!(_loc14_ || param2))
                                                                                                                           {
                                                                                                                              continue loop126;
                                                                                                                           }
                                                                                                                           if(!(_loc14_ || param2))
                                                                                                                           {
                                                                                                                              continue loop124;
                                                                                                                           }
                                                                                                                           if(!§§pop())
                                                                                                                           {
                                                                                                                              §§push(_loc3_);
                                                                                                                              §§push(_loc3_.velocityX);
                                                                                                                              if(_loc14_)
                                                                                                                              {
                                                                                                                                 §§push(param2);
                                                                                                                                 if(_loc14_)
                                                                                                                                 {
                                                                                                                                    §§push(this.§3!5§);
                                                                                                                                    if(!_loc13_)
                                                                                                                                    {
                                                                                                                                       §§push(_loc8_);
                                                                                                                                       if(!_loc13_)
                                                                                                                                       {
                                                                                                                                          addr718:
                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                          if(!_loc13_)
                                                                                                                                          {
                                                                                                                                             addr716:
                                                                                                                                             §§push(§§pop() + _loc10_);
                                                                                                                                          }
                                                                                                                                          §§pop().velocityX = §§pop() + §§pop() * §§pop();
                                                                                                                                          §§goto(addr720);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr716);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr718);
                                                                                                                           }
                                                                                                                           §§goto(addr802);
                                                                                                                           §§goto(addr906);
                                                                                                                        }
                                                                                                                        continue loop126;
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr1123);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr1173);
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr1180);
                                                                           }
                                                                        }
                                                                        §§goto(addr634);
                                                                     }
                                                                     addr1139:
                                                                  }
                                                                  §§goto(addr1288);
                                                               }
                                                            }
                                                         }
                                                      }
                                                      addr1168:
                                                   }
                                                   §§goto(addr1139);
                                                }
                                             }
                                          }
                                       }
                                       §§goto(addr1307);
                                    }
                                 }
                                 §§goto(addr1061);
                              }
                              §§goto(addr1084);
                           }
                           §§goto(addr935);
                        }
                        §§goto(addr1084);
                     }
                     §§goto(addr507);
                  }
                  else
                  {
                     §§push(_loc4_);
                     if(!(_loc13_ && param1))
                     {
                        §§push(Number(§§pop()));
                        if(_loc14_ || param1)
                        {
                           §§goto(addr103);
                        }
                     }
                  }
                  §§goto(addr1114);
               }
               §§goto(addr1168);
            }
            §§goto(addr950);
         }
         §§goto(addr1001);
      }
      
      private function §8!E§(param1:XML, param2:Texture) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param2)
         {
            this.§=!Y§ = parseFloat(param1.sourcePositionVariance.attribute("x"));
            loop0:
            while(true)
            {
               this.§4g§ = parseFloat(param1.sourcePositionVariance.attribute("y"));
               while(true)
               {
                  this.§3!5§ = parseFloat(param1.gravity.attribute("x"));
                  loop2:
                  for(; !_loc4_; if(_loc4_ && this)
                  {
                     continue;
                  },this.§`!B§ = deg2rad(this.§catch§(param1.rotatePerSecond)),§§goto(addr255))
                  {
                     this.§!T§ = parseFloat(param1.gravity.attribute("y"));
                     loop3:
                     while(true)
                     {
                        this.§33§ = this.§6V§(param1.emitterType);
                        loop4:
                        while(true)
                        {
                           this.§5!3§ = this.§6V§(param1.maxParticles);
                           while(true)
                           {
                              this.§-!W§ = Math.max(0.01,this.§catch§(param1.particleLifeSpan));
                              loop6:
                              while(_loc3_)
                              {
                                 this.§,b§ = this.§catch§(param1.particleLifespanVariance);
                                 loop7:
                                 while(true)
                                 {
                                    if(param1.particleInterval.length() != 1)
                                    {
                                       this.§9!>§ = 0;
                                       loop8:
                                       while(true)
                                       {
                                          loop9:
                                          while(true)
                                          {
                                             this.§ !%§ = this.§catch§(param1.startParticleSize);
                                             loop10:
                                             while(!_loc4_)
                                             {
                                                §§push(this);
                                                §§push(this.§ !%§);
                                                if(_loc3_)
                                                {
                                                   §§push(param2.height);
                                                   if(_loc3_)
                                                   {
                                                      addr702:
                                                      §§push(§§pop() * §§pop());
                                                      if(_loc3_ || this)
                                                      {
                                                         §§push(param2.width);
                                                      }
                                                      §§pop().§+^§ = §§pop();
                                                      loop11:
                                                      while(true)
                                                      {
                                                         this.§!!1§ = this.§catch§(param1.startParticleSizeVariance);
                                                         loop12:
                                                         while(true)
                                                         {
                                                            §§push(this);
                                                            §§push(this.§!!1§);
                                                            if(!(_loc4_ && _loc3_))
                                                            {
                                                               §§push(param2.height);
                                                               if(!(_loc4_ && _loc3_))
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  if(_loc3_)
                                                                  {
                                                                     addr670:
                                                                     §§push(§§pop() / param2.width);
                                                                  }
                                                                  §§pop().§0!^§ = §§pop();
                                                                  loop13:
                                                                  while(true)
                                                                  {
                                                                     if(param1.startParticleSizeX.length() == 1)
                                                                     {
                                                                        continue;
                                                                     }
                                                                     loop16:
                                                                     while(true)
                                                                     {
                                                                        if(param1.startParticleSizeVarianceX.length() == 1)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              this.§!!1§ = this.§catch§(param1.startParticleSizeVarianceX);
                                                                              addr624:
                                                                              while(true)
                                                                              {
                                                                              }
                                                                           }
                                                                           addr618:
                                                                        }
                                                                        loop19:
                                                                        while(true)
                                                                        {
                                                                           if(param1.startParticleSizeY.length() == 1)
                                                                           {
                                                                              continue loop8;
                                                                           }
                                                                           addr572:
                                                                           while(true)
                                                                           {
                                                                              if(param1.startParticleSizeVarianceY.length() == 1)
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    this.§0!^§ = this.§catch§(param1.startParticleSizeVarianceY);
                                                                                    §§goto(addr584);
                                                                                 }
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 if(param1.finishParticleSize.length() == 1)
                                                                                 {
                                                                                    §§goto(addr549);
                                                                                 }
                                                                                 §§goto(addr497);
                                                                                 addr584:
                                                                                 while(true)
                                                                                 {
                                                                                 }
                                                                                 addr50:
                                                                                 if(!(_loc4_ && param1))
                                                                                 {
                                                                                    §;!E§ = this.§catch§(param1.emissionVariance);
                                                                                    addr63:
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       loop64:
                                                                                       while(true)
                                                                                       {
                                                                                          if(!(_loc4_ && _loc3_))
                                                                                          {
                                                                                             addr151:
                                                                                             if(_loc3_ || _loc3_)
                                                                                             {
                                                                                                if(_loc3_)
                                                                                                {
                                                                                                   §,!i§ = this.§8x§(param1.blendFuncDestination);
                                                                                                   loop65:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc3_ || param1)
                                                                                                      {
                                                                                                         addr108:
                                                                                                         if(!(_loc4_ && param1))
                                                                                                         {
                                                                                                            addr115:
                                                                                                            if(_loc4_ && param2)
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                            addr122:
                                                                                                            if(!(_loc4_ && param2))
                                                                                                            {
                                                                                                               addr129:
                                                                                                               if(!(_loc4_ && this))
                                                                                                               {
                                                                                                                  §#H§ = this.§8!f§(param1.textureSmoothing);
                                                                                                                  loop66:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(!_loc3_)
                                                                                                                     {
                                                                                                                        continue loop65;
                                                                                                                     }
                                                                                                                     if(!_loc4_)
                                                                                                                     {
                                                                                                                        if(_loc3_)
                                                                                                                        {
                                                                                                                           addr79:
                                                                                                                           if(!(_loc4_ && _loc3_))
                                                                                                                           {
                                                                                                                              addr86:
                                                                                                                              if(!(_loc4_ && _loc3_))
                                                                                                                              {
                                                                                                                                 if(param1.emissionVariance.length == 1)
                                                                                                                                 {
                                                                                                                                    if(!(_loc4_ && param2))
                                                                                                                                    {
                                                                                                                                       if(_loc4_)
                                                                                                                                       {
                                                                                                                                          continue;
                                                                                                                                       }
                                                                                                                                       addr43:
                                                                                                                                       if(_loc3_ || this)
                                                                                                                                       {
                                                                                                                                          §§goto(addr50);
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          addr549:
                                                                                                                                          loop53:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(!(_loc4_ && param2))
                                                                                                                                             {
                                                                                                                                                continue loop4;
                                                                                                                                             }
                                                                                                                                             loop31:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(this);
                                                                                                                                                §§push(this.§2O§);
                                                                                                                                                if(_loc3_)
                                                                                                                                                {
                                                                                                                                                   §§push(param2.height);
                                                                                                                                                   if(_loc3_)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                      if(_loc3_)
                                                                                                                                                      {
                                                                                                                                                         addr494:
                                                                                                                                                         §§push(§§pop() / param2.width);
                                                                                                                                                      }
                                                                                                                                                      §§pop().§&!$§ = §§pop();
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         loop33:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(param1.finishParticleSizeX.length() == 1)
                                                                                                                                                            {
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  this.§8O§ = this.§catch§(param1.finishParticleSizeX);
                                                                                                                                                                  addr476:
                                                                                                                                                                  while(!_loc4_)
                                                                                                                                                                  {
                                                                                                                                                                  }
                                                                                                                                                                  addr194:
                                                                                                                                                                  §§goto(addr584);
                                                                                                                                                                  if(!(_loc3_ || param1))
                                                                                                                                                                  {
                                                                                                                                                                     continue;
                                                                                                                                                                  }
                                                                                                                                                                  if(_loc4_)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop33;
                                                                                                                                                                  }
                                                                                                                                                                  addr203:
                                                                                                                                                                  if(_loc3_ || this)
                                                                                                                                                                  {
                                                                                                                                                                     this.§8!X§ = this.§'x§(param1.finishColorVariance);
                                                                                                                                                                     addr168:
                                                                                                                                                                     while(!(_loc4_ && param1))
                                                                                                                                                                     {
                                                                                                                                                                        addr175:
                                                                                                                                                                        if(!(_loc4_ && this))
                                                                                                                                                                        {
                                                                                                                                                                           if(!_loc4_)
                                                                                                                                                                           {
                                                                                                                                                                              §6W§ = this.§8x§(param1.blendFuncSource);
                                                                                                                                                                              continue loop64;
                                                                                                                                                                           }
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              this.§&8§ = deg2rad(this.§catch§(param1.angleVariance));
                                                                                                                                                                              addr389:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 this.§@c§ = this.§catch§(param1.speed);
                                                                                                                                                                                 addr372:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc3_ || this)
                                                                                                                                                                                    {
                                                                                                                                                                                       this.§3o§ = this.§catch§(param1.speedVariance);
                                                                                                                                                                                       addr562:
                                                                                                                                                                                       while(!_loc4_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!_loc3_)
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop3;
                                                                                                                                                                                          }
                                                                                                                                                                                          this.§"!0§ = this.§catch§(param1.radialAcceleration);
                                                                                                                                                                                          §§goto(addr122);
                                                                                                                                                                                       }
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc4_ && param2)
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop13;
                                                                                                                                                                                          }
                                                                                                                                                                                          if(!_loc4_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(this);
                                                                                                                                                                                             §§push(this.§8O§);
                                                                                                                                                                                             if(!(_loc4_ && _loc3_))
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(param2.height);
                                                                                                                                                                                                if(!(_loc4_ && _loc3_))
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr541:
                                                                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                                                                   if(_loc3_ || param2)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(param2.width);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§pop().§get § = §§pop();
                                                                                                                                                                                                   loop28:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr497:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(param1.FinishParticleSizeVariance.length() != 1)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue loop33;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            this.§2O§ = this.§catch§(param1.FinishParticleSizeVariance);
                                                                                                                                                                                                            continue loop31;
                                                                                                                                                                                                            §§goto(addr129);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         continue loop28;
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr542:
                                                                                                                                                                                                }
                                                                                                                                                                                                §§push(§§pop() / §§pop());
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr541);
                                                                                                                                                                                          }
                                                                                                                                                                                          else
                                                                                                                                                                                          {
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                this.§9!>§ = this.§catch§(param1.particleInterval);
                                                                                                                                                                                                break loop10;
                                                                                                                                                                                             }
                                                                                                                                                                                             addr727:
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       continue loop16;
                                                                                                                                                                                       addr562:
                                                                                                                                                                                       addr360:
                                                                                                                                                                                    }
                                                                                                                                                                                    continue loop8;
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           addr409:
                                                                                                                                                                        }
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc3_ || param2)
                                                                                                                                                                           {
                                                                                                                                                                              this.§`Y§ = this.§catch§(param1.tangentialAcceleration);
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc3_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!_loc3_)
                                                                                                                                                                                    {
                                                                                                                                                                                       break;
                                                                                                                                                                                       addr323:
                                                                                                                                                                                    }
                                                                                                                                                                                    this.§set § = this.§catch§(param1.maxRadius);
                                                                                                                                                                                    while(!_loc4_)
                                                                                                                                                                                    {
                                                                                                                                                                                       this.§6-§ = this.§catch§(param1.maxRadiusVariance);
                                                                                                                                                                                       continue loop53;
                                                                                                                                                                                    }
                                                                                                                                                                                    continue loop7;
                                                                                                                                                                                 }
                                                                                                                                                                                 continue loop19;
                                                                                                                                                                              }
                                                                                                                                                                              continue loop12;
                                                                                                                                                                              addr333:
                                                                                                                                                                           }
                                                                                                                                                                           addr441:
                                                                                                                                                                           addr441:
                                                                                                                                                                           loop41:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              addr410:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(param1.FinishParticleSizeVarianceY.length() == 1)
                                                                                                                                                                                 {
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       this.§&!$§ = this.§catch§(param1.FinishParticleSizeVarianceY);
                                                                                                                                                                                       break loop66;
                                                                                                                                                                                       §§goto(addr79);
                                                                                                                                                                                    }
                                                                                                                                                                                    addr416:
                                                                                                                                                                                 }
                                                                                                                                                                                 addr390:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    this.§]C§ = deg2rad(this.§catch§(param1.angle));
                                                                                                                                                                                    §§goto(addr409);
                                                                                                                                                                                 }
                                                                                                                                                                                 continue loop41;
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr175);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc3_)
                                                                                                                                                                        {
                                                                                                                                                                           break loop53;
                                                                                                                                                                        }
                                                                                                                                                                        continue loop2;
                                                                                                                                                                        §§goto(addr168);
                                                                                                                                                                     }
                                                                                                                                                                     addr168:
                                                                                                                                                                     continue loop2;
                                                                                                                                                                     addr284:
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr542);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(param1.FinishParticleSizeVarianceX.length() == 1)
                                                                                                                                                               {
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     this.§2O§ = this.§catch§(param1.FinishParticleSizeVarianceX);
                                                                                                                                                                     addr454:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc3_)
                                                                                                                                                                        {
                                                                                                                                                                           continue loop11;
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr476);
                                                                                                                                                                     }
                                                                                                                                                                     continue loop11;
                                                                                                                                                                     §§goto(addr86);
                                                                                                                                                                  }
                                                                                                                                                                  addr448:
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(param1.finishParticleSizeY.length() == 1)
                                                                                                                                                                     {
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           this.§get § = this.§catch§(param1.finishParticleSizeY);
                                                                                                                                                                           §§goto(addr441);
                                                                                                                                                                        }
                                                                                                                                                                        addr435:
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr410);
                                                                                                                                                                  }
                                                                                                                                                                  addr429:
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr497);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr494);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          while(!(_loc4_ && param2))
                                                                                                                                          {
                                                                                                                                             this.§8O§ = this.§catch§(param1.finishParticleSize);
                                                                                                                                             §§goto(addr562);
                                                                                                                                          }
                                                                                                                                          continue loop10;
                                                                                                                                          addr549:
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr63);
                                                                                                                                 }
                                                                                                                                 §§goto(addr24);
                                                                                                                              }
                                                                                                                              §§goto(addr448);
                                                                                                                           }
                                                                                                                           §§goto(addr416);
                                                                                                                        }
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     §§goto(addr168);
                                                                                                                     §§goto(addr549);
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(!_loc4_)
                                                                                                                     {
                                                                                                                        if(_loc4_)
                                                                                                                        {
                                                                                                                           continue loop0;
                                                                                                                        }
                                                                                                                        if(_loc3_)
                                                                                                                        {
                                                                                                                           §§goto(addr390);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§goto(addr618);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr435);
                                                                                                                  }
                                                                                                                  §§goto(addr441);
                                                                                                               }
                                                                                                               §§goto(addr503);
                                                                                                            }
                                                                                                            §§goto(addr360);
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            this.§ !-§ = this.§'x§(param1.startColorVariance);
                                                                                                            §§goto(addr108);
                                                                                                         }
                                                                                                         addr228:
                                                                                                      }
                                                                                                      while(!_loc4_)
                                                                                                      {
                                                                                                         this.§4^§ = this.§'x§(param1.finishColor);
                                                                                                         while(_loc3_)
                                                                                                         {
                                                                                                            §§goto(addr194);
                                                                                                         }
                                                                                                         §§goto(addr389);
                                                                                                         continue loop65;
                                                                                                      }
                                                                                                      continue loop6;
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!(_loc4_ && param1))
                                                                                                      {
                                                                                                         if(_loc3_ || _loc3_)
                                                                                                         {
                                                                                                            addr269:
                                                                                                            if(_loc3_ || _loc3_)
                                                                                                            {
                                                                                                               this.§<E§ = deg2rad(this.§catch§(param1.rotatePerSecondVariance));
                                                                                                               break loop64;
                                                                                                            }
                                                                                                            continue loop16;
                                                                                                         }
                                                                                                         §§goto(addr454);
                                                                                                      }
                                                                                                      break;
                                                                                                      §§goto(addr115);
                                                                                                   }
                                                                                                   §§goto(addr333);
                                                                                                   addr255:
                                                                                                }
                                                                                                §§goto(addr372);
                                                                                             }
                                                                                             break;
                                                                                          }
                                                                                          §§goto(addr192);
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          if(!(_loc4_ && this))
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                this.§6!6§ = this.§'x§(param1.startColor);
                                                                                                §§goto(addr228);
                                                                                             }
                                                                                             addr245:
                                                                                          }
                                                                                          break;
                                                                                          §§goto(addr151);
                                                                                       }
                                                                                       §§goto(addr323);
                                                                                    }
                                                                                 }
                                                                                 continue loop23;
                                                                                 addr24:
                                                                                 return;
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr670);
                                                         }
                                                      }
                                                   }
                                                   §§push(§§pop() / §§pop());
                                                }
                                                §§goto(addr702);
                                             }
                                             while(true)
                                             {
                                                continue loop9;
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr727);
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr245);
      }
      
      protected function §6V§(param1:XMLList) : int
      {
         return parseInt(param1.attribute("value"));
      }
      
      protected function §catch§(param1:XMLList) : Number
      {
         return parseFloat(param1.attribute("value"));
      }
      
      protected function §;!@§(param1:XMLList) : String
      {
         return param1.attribute("value");
      }
      
      protected function §'x§(param1:XMLList) : ColorArgb
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:ColorArgb = new ColorArgb();
         if(!_loc4_)
         {
            _loc2_.red = parseFloat(param1.attribute("red"));
         }
         do
         {
            _loc2_.green = parseFloat(param1.attribute("green"));
            do
            {
               _loc2_.blue = parseFloat(param1.attribute("blue"));
               do
               {
                  _loc2_.alpha = parseFloat(param1.attribute("alpha"));
               }
               while(_loc4_);
               
            }
            while(!(_loc3_ || _loc2_));
            
         }
         while(_loc4_);
         
         return _loc2_;
      }
      
      protected function §8x§(param1:XMLList) : String
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(this.§6V§(param1));
         if(_loc5_ || this)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(_loc2_);
         if(_loc5_ || _loc2_)
         {
            var _loc3_:* = §§pop();
            if(_loc5_)
            {
               §§push(0);
               if(!(_loc4_ && _loc3_))
               {
                  §§push(_loc3_);
                  if(!(_loc4_ && this))
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!(_loc4_ && _loc3_))
                        {
                           §§push(0);
                           if(_loc4_ && param1)
                           {
                              addr378:
                           }
                        }
                        else
                        {
                           addr293:
                           §§push(4);
                           if(!(_loc5_ || _loc2_))
                           {
                              addr350:
                           }
                        }
                     }
                     else
                     {
                        §§push(1);
                        if(!_loc4_)
                        {
                           §§push(_loc3_);
                           if(_loc5_ || _loc2_)
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(_loc5_ || this)
                                 {
                                    §§push(1);
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
                                       addr336:
                                       §§push(_loc3_);
                                       if(!_loc4_)
                                       {
                                          addr339:
                                          if(§§pop() === §§pop())
                                          {
                                             if(!_loc4_)
                                             {
                                                addr342:
                                                §§push(7);
                                                if(!(_loc4_ && _loc3_))
                                                {
                                                   §§goto(addr350);
                                                }
                                             }
                                             else
                                             {
                                                addr370:
                                                §§push(8);
                                                if(_loc4_ && _loc2_)
                                                {
                                                   addr382:
                                                   if(§§pop() === _loc3_)
                                                   {
                                                      addr384:
                                                      §§push(9);
                                                      if(!_loc4_)
                                                      {
                                                         addr397:
                                                      }
                                                      §§goto(addr402);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr402);
                                                      §§push(10);
                                                   }
                                                }
                                             }
                                             §§goto(addr402);
                                          }
                                          else
                                          {
                                             §§push(774);
                                             if(!_loc4_)
                                             {
                                                addr354:
                                                §§push(_loc3_);
                                                if(_loc5_ || _loc3_)
                                                {
                                                   addr362:
                                                   if(§§pop() === §§pop())
                                                   {
                                                      if(_loc5_ || this)
                                                      {
                                                         §§goto(addr370);
                                                      }
                                                      §§goto(addr384);
                                                   }
                                                   else
                                                   {
                                                      §§push(775);
                                                      if(_loc5_)
                                                      {
                                                         §§goto(addr382);
                                                      }
                                                   }
                                                   §§goto(addr397);
                                                }
                                                §§goto(addr382);
                                             }
                                          }
                                          §§goto(addr382);
                                       }
                                       §§goto(addr362);
                                    }
                                 }
                                 else
                                 {
                                    addr232:
                                    §§push(2);
                                    if(!(_loc5_ || param1))
                                    {
                                       addr268:
                                    }
                                 }
                              }
                              else
                              {
                                 §§push(768);
                                 if(_loc5_ || this)
                                 {
                                    §§push(_loc3_);
                                    if(!_loc4_)
                                    {
                                       if(§§pop() === §§pop())
                                       {
                                          if(!(_loc4_ && _loc2_))
                                          {
                                             §§goto(addr232);
                                          }
                                          else
                                          {
                                             addr316:
                                             §§push(5);
                                             if(_loc4_)
                                             {
                                                §§goto(addr397);
                                             }
                                             §§goto(addr402);
                                          }
                                       }
                                       else
                                       {
                                          §§push(769);
                                          if(!(_loc4_ && this))
                                          {
                                             §§push(_loc3_);
                                             if(_loc5_ || param1)
                                             {
                                                if(§§pop() === §§pop())
                                                {
                                                   if(!(_loc4_ && _loc2_))
                                                   {
                                                      addr265:
                                                      §§push(3);
                                                      if(!_loc4_)
                                                      {
                                                         §§goto(addr268);
                                                      }
                                                      §§goto(addr402);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr316);
                                                   }
                                                }
                                                else
                                                {
                                                   §§push(770);
                                                   if(!(_loc4_ && _loc3_))
                                                   {
                                                      §§push(_loc3_);
                                                      if(!(_loc4_ && _loc3_))
                                                      {
                                                         addr285:
                                                         if(§§pop() === §§pop())
                                                         {
                                                            if(_loc5_ || this)
                                                            {
                                                               §§goto(addr293);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr370);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§push(771);
                                                            if(_loc5_)
                                                            {
                                                               §§push(_loc3_);
                                                               if(!_loc4_)
                                                               {
                                                                  addr308:
                                                                  if(§§pop() === §§pop())
                                                                  {
                                                                     if(!(_loc4_ && _loc2_))
                                                                     {
                                                                        §§goto(addr316);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr342);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(772);
                                                                     if(!_loc4_)
                                                                     {
                                                                        §§push(_loc3_);
                                                                        if(!_loc4_)
                                                                        {
                                                                           if(§§pop() === §§pop())
                                                                           {
                                                                              if(_loc5_)
                                                                              {
                                                                                 §§push(6);
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    addr332:
                                                                                    §§goto(addr402);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr378);
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr384);
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              §§push(773);
                                                                              if(!_loc4_)
                                                                              {
                                                                                 §§goto(addr336);
                                                                              }
                                                                           }
                                                                           §§goto(addr402);
                                                                        }
                                                                        §§goto(addr382);
                                                                     }
                                                                  }
                                                                  §§goto(addr402);
                                                               }
                                                               §§goto(addr382);
                                                            }
                                                            §§goto(addr354);
                                                         }
                                                         §§goto(addr382);
                                                      }
                                                      §§goto(addr308);
                                                   }
                                                }
                                             }
                                             §§goto(addr285);
                                          }
                                          §§goto(addr332);
                                       }
                                       §§goto(addr402);
                                    }
                                    §§goto(addr339);
                                 }
                              }
                              §§goto(addr402);
                           }
                           §§goto(addr285);
                        }
                        §§goto(addr336);
                     }
                     §§goto(addr402);
                  }
                  §§goto(addr339);
               }
               §§goto(addr350);
            }
            §§goto(addr265);
         }
         §§goto(addr402);
      }
      
      protected function §8!f§(param1:XMLList) : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(this.§;!@§(param1));
         if(!_loc4_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(!(_loc4_ && param1))
         {
            §§push(_loc2_);
            while(true)
            {
               §§push(§ !g§.§5!8§);
               loop1:
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  if(!(_loc4_ && param1))
                  {
                     §§push(§§pop());
                     loop2:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           addr156:
                           while(true)
                           {
                              §§pop();
                              addr157:
                              while(true)
                              {
                                 §§push(_loc2_);
                                 addr116:
                                 while(true)
                                 {
                                    §§push(§ !g§.§62§);
                                    addr118:
                                    while(!_loc4_)
                                    {
                                       §§push(§§pop() == §§pop());
                                    }
                                    continue loop1;
                                 }
                              }
                           }
                           addr156:
                        }
                        while(true)
                        {
                           continue loop2;
                        }
                     }
                  }
                  §§goto(addr156);
               }
            }
         }
         §§goto(addr113);
      }
   }
}

import § !+§.§]!N§;

class PDParticle extends §]!N§
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
