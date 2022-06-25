package §4!<§
{
   import §7i§.§=!C§;
   import §7i§.Texture;
   import §8g§.deg2rad;
   import flash.display3D.Context3DBlendFactor;
   
   public class ParticleDesignerPS extends ParticleSystem
   {
       
      
      private const §@!5§:int = 0;
      
      private const §;N§:int = 1;
      
      private var §63§:Number;
      
      private var §!!3§:int;
      
      private var §4!=§:Number;
      
      private var § !8§:Number;
      
      private var §-!Y§:int;
      
      private var §,k§:Number;
      
      private var §>M§:Number;
      
      private var §=6§:Number;
      
      private var §6x§:Number;
      
      private var §7!+§:Number;
      
      private var §7!c§:Number;
      
      private var §4!O§:Number;
      
      private var §,W§:Number;
      
      private var §9]§:Number;
      
      private var §9d§:Number;
      
      private var §9!E§:Number;
      
      private var §<u§:Number;
      
      private var §&!&§:Number;
      
      private var §8%§:Number;
      
      private var §;A§:Number;
      
      private var §+!g§:Number;
      
      private var §%!'§:Number;
      
      private var §-!<§:Number;
      
      private var §=e§:Number;
      
      private var §#!b§:Number;
      
      private var §>!D§:Number;
      
      private var §[!1§:Number;
      
      private var §%O§:Number;
      
      private var §;>§:Number;
      
      private var §%y§:Number;
      
      private var §[U§:Number;
      
      private var §-h§:ColorArgb;
      
      private var §;[§:ColorArgb;
      
      private var §>!O§:ColorArgb;
      
      private var §!o§:ColorArgb;
      
      public function ParticleDesignerPS(param1:XML, param2:Texture)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            this.§^0§(param1,param2);
         }
         §§push(this.§-!Y§);
         §§push(this.§,k§);
         if(_loc5_)
         {
            §§push(§§pop() + this.§=6§);
         }
         §§push(§§pop() / §§pop());
         if(_loc5_ || param2)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(_loc5_ || this)
         {
            super(param2,_loc3_,this.§-!Y§,§?`§,§@f§);
            do
            {
               §1y§ = false;
            }
            while(!_loc5_);
            
         }
      }
      
      public function get §1p§() : int
      {
         return this.§-!Y§;
      }
      
      override protected function createParticle() : §0!W§
      {
         return new PDParticle();
      }
      
      private function get §46§() : Boolean
      {
         return this.§1p§ >= 20;
      }
      
      override protected function initParticle(param1:§0!W§) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Tip: You can try enabling "Automatic deobfuscation" in Settings
          * Error type: ExecutionException (java.lang.StackOverflowError)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      override protected function advanceParticle(param1:§0!W§, param2:Number) : void
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
         §§push(_loc3_.§?!D§ - _loc3_.§6§);
         if(!(_loc14_ && _loc3_))
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:* = §§pop();
         if(!_loc14_)
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
                                    _loc3_.§6§ += param2;
                                    loop7:
                                    while(true)
                                    {
                                       if(this.§!!3§ != this.§;N§)
                                       {
                                          §§push(_loc3_.skipUpdate);
                                          if(!_loc14_)
                                          {
                                             §§push(!§§pop());
                                             if(!(_loc14_ && this))
                                             {
                                                addr1188:
                                                §§push(Boolean(§§pop()));
                                             }
                                             loop8:
                                             while(true)
                                             {
                                                if(_loc13_ || this)
                                                {
                                                   §§push(§§pop());
                                                   loop9:
                                                   while(true)
                                                   {
                                                      if(!(_loc14_ && param2))
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                         loop10:
                                                         while(true)
                                                         {
                                                            if(!§§pop())
                                                            {
                                                               loop11:
                                                               while(true)
                                                               {
                                                                  §§pop();
                                                                  loop12:
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§46§);
                                                                     loop13:
                                                                     while(true)
                                                                     {
                                                                        if(!_loc14_)
                                                                        {
                                                                           if(!_loc14_)
                                                                           {
                                                                              §§push(!§§pop());
                                                                              loop14:
                                                                              while(true)
                                                                              {
                                                                                 §§push(Boolean(§§pop()));
                                                                                 addr1154:
                                                                                 while(true)
                                                                                 {
                                                                                    loop83:
                                                                                    while(true)
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          loop84:
                                                                                          while(true)
                                                                                          {
                                                                                             if(!(_loc14_ && param1))
                                                                                             {
                                                                                                if(!_loc14_)
                                                                                                {
                                                                                                   §§push(_loc3_.x - _loc3_.startX);
                                                                                                   loop85:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(Number(§§pop()));
                                                                                                      loop86:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         _loc5_ = §§pop();
                                                                                                         loop87:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc3_.y - _loc3_.startY);
                                                                                                            loop88:
                                                                                                            while(!(_loc14_ && _loc3_))
                                                                                                            {
                                                                                                               §§push(Number(§§pop()));
                                                                                                               addr861:
                                                                                                               if(_loc14_ && param1)
                                                                                                               {
                                                                                                                  continue;
                                                                                                               }
                                                                                                               §§push(_loc3_.tangentialAcceleration);
                                                                                                               if(_loc13_ || this)
                                                                                                               {
                                                                                                                  if(!_loc14_)
                                                                                                                  {
                                                                                                                     if(_loc13_ || param2)
                                                                                                                     {
                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                        loop130:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(!_loc13_)
                                                                                                                           {
                                                                                                                              continue loop85;
                                                                                                                           }
                                                                                                                           if(_loc13_ || param2)
                                                                                                                           {
                                                                                                                              addr896:
                                                                                                                              if(_loc13_ || param2)
                                                                                                                              {
                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                 loop131:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(_loc13_)
                                                                                                                                    {
                                                                                                                                       _loc11_ = §§pop();
                                                                                                                                       loop132:
                                                                                                                                       while(_loc13_)
                                                                                                                                       {
                                                                                                                                          §§push(this.§46§);
                                                                                                                                          loop133:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(!§§pop())
                                                                                                                                             {
                                                                                                                                                §§push(_loc3_);
                                                                                                                                                §§push(_loc3_.velocityX);
                                                                                                                                                if(!_loc14_)
                                                                                                                                                {
                                                                                                                                                   §§push(param2);
                                                                                                                                                   if(!_loc14_)
                                                                                                                                                   {
                                                                                                                                                      §§push(this.§+!g§);
                                                                                                                                                      if(_loc13_)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc8_);
                                                                                                                                                         if(_loc13_)
                                                                                                                                                         {
                                                                                                                                                            addr702:
                                                                                                                                                            §§push(§§pop() + §§pop());
                                                                                                                                                            if(!_loc14_)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc10_);
                                                                                                                                                            }
                                                                                                                                                            §§pop().velocityX = §§pop() + §§pop() * §§pop();
                                                                                                                                                            loop134:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(!_loc14_)
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc14_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc3_);
                                                                                                                                                                     §§push(_loc3_.velocityY);
                                                                                                                                                                     if(_loc13_ || param2)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(param2);
                                                                                                                                                                        if(!_loc14_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(this.§%!'§);
                                                                                                                                                                           if(_loc13_ || this)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc9_);
                                                                                                                                                                              if(!(_loc14_ && _loc3_))
                                                                                                                                                                              {
                                                                                                                                                                                 addr666:
                                                                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                                                                 if(_loc13_ || this)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr664:
                                                                                                                                                                                    §§push(§§pop() + _loc11_);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§pop().velocityY = §§pop() + §§pop() * §§pop();
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    _loc3_.rotation += _loc3_.rotationDelta * param2;
                                                                                                                                                                                    addr623:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr595:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          _loc3_.x += _loc3_.velocityX * param2;
                                                                                                                                                                                          continue loop7;
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 addr668:
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr664);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr666);
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     loop31:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        loop35:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           loop36:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc3_.skipUpdate);
                                                                                                                                                                              loop37:
                                                                                                                                                                              while(_loc13_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(!§§pop());
                                                                                                                                                                                 loop38:
                                                                                                                                                                                 while(_loc13_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(Boolean(§§pop()));
                                                                                                                                                                                    loop39:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!(_loc13_ || param2))
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop83;
                                                                                                                                                                                       }
                                                                                                                                                                                       §§push(§§pop());
                                                                                                                                                                                       if(_loc13_)
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop9;
                                                                                                                                                                                       }
                                                                                                                                                                                       addr557:
                                                                                                                                                                                       if(!_loc13_)
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop10;
                                                                                                                                                                                       }
                                                                                                                                                                                       if(!(_loc14_ && this))
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!§§pop())
                                                                                                                                                                                          {
                                                                                                                                                                                             loop40:
                                                                                                                                                                                             while(_loc13_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§pop();
                                                                                                                                                                                                loop41:
                                                                                                                                                                                                while(!_loc14_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(this.§46§);
                                                                                                                                                                                                   if(_loc13_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc14_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         continue loop39;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§push(!§§pop());
                                                                                                                                                                                                      if(_loc13_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc14_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue loop133;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         if(_loc14_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue loop14;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         if(!_loc14_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(Boolean(§§pop()));
                                                                                                                                                                                                            if(_loc13_ || param2)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr440:
                                                                                                                                                                                                               if(_loc14_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue loop38;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               if(!_loc13_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue loop11;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(§§pop())
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     loop80:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc13_ || param2)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr453:
                                                                                                                                                                                                                           §§push(this.§46§);
                                                                                                                                                                                                                           loop42:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(!_loc14_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(!_loc14_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(!(_loc14_ && param1))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(§§pop())
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          loop43:
                                                                                                                                                                                                                                          while(!(_loc14_ && this))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(param2);
                                                                                                                                                                                                                                             if(!_loc14_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(!(_loc14_ && _loc3_))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(!(_loc14_ && param1))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(!_loc14_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(§§pop() * 2);
                                                                                                                                                                                                                                                         if(!_loc14_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(_loc14_ && _loc3_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               continue loop130;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            if(!(_loc14_ && param1))
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               addr512:
                                                                                                                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                                                                                                                               if(!_loc13_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  continue loop131;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               if(!(_loc14_ && this))
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(!(_loc14_ && _loc3_))
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     param2 = §§pop();
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        addr405:
                                                                                                                                                                                                                                                                        loop45:
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           _loc3_.scaleX += _loc3_.scaleDeltaX * param2;
                                                                                                                                                                                                                                                                           loop46:
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              _loc3_.scaleY += _loc3_.scaleDeltaY * param2;
                                                                                                                                                                                                                                                                              loop47:
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(_loc14_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    continue loop43;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§push(_loc3_.colorArgb);
                                                                                                                                                                                                                                                                                 loop48:
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(_loc3_.colorArgb);
                                                                                                                                                                                                                                                                                    loop49:
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§push(§§pop().red);
                                                                                                                                                                                                                                                                                       loop50:
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§push(_loc3_.colorArgbDelta);
                                                                                                                                                                                                                                                                                          loop51:
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(§§pop().red);
                                                                                                                                                                                                                                                                                             loop52:
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§push(param2);
                                                                                                                                                                                                                                                                                                loop53:
                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                   loop54:
                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                      loop55:
                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§pop().red = §§pop();
                                                                                                                                                                                                                                                                                                         loop56:
                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§push(_loc3_.colorArgb);
                                                                                                                                                                                                                                                                                                            loop57:
                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§push(_loc3_.colorArgb);
                                                                                                                                                                                                                                                                                                               loop58:
                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  §§push(§§pop().green);
                                                                                                                                                                                                                                                                                                                  if(_loc13_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§push(_loc3_.colorArgbDelta);
                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        §§push(§§pop().green);
                                                                                                                                                                                                                                                                                                                        addr359:
                                                                                                                                                                                                                                                                                                                        addr207:
                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           §§push(param2);
                                                                                                                                                                                                                                                                                                                           addr360:
                                                                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                              addr361:
                                                                                                                                                                                                                                                                                                                              while(_loc13_ || _loc3_)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              continue loop52;
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        if(_loc14_ && param2)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           continue;
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§push(§§pop().alpha);
                                                                                                                                                                                                                                                                                                                        if(!(_loc14_ && this))
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           §§push(param2);
                                                                                                                                                                                                                                                                                                                           if(!_loc14_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              addr226:
                                                                                                                                                                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                              if(_loc13_)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 if(!_loc14_)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    if(!_loc13_)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       continue loop54;
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    addr233:
                                                                                                                                                                                                                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                    if(!(_loc14_ && param2))
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       if(_loc14_)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          continue loop50;
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       §§pop().alpha = §§pop();
                                                                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          if(_loc13_ || param1)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             if(_loc14_ && param2)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                continue loop56;
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             if(!_loc13_)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                continue loop46;
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             if(_loc14_)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                continue loop45;
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             if(!(_loc13_ || param2))
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                continue loop80;
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             if(_loc14_ && _loc3_)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                continue loop12;
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             if(!(_loc14_ && param2))
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                _loc3_.red = _loc3_.colorArgb.red;
                                                                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   if(_loc13_ || param2)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      continue loop47;
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   addr1233:
                                                                                                                                                                                                                                                                                                                                                   loop64:
                                                                                                                                                                                                                                                                                                                                                   while(_loc13_ || this)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      §§push(_loc3_.colorArgb);
                                                                                                                                                                                                                                                                                                                                                      loop65:
                                                                                                                                                                                                                                                                                                                                                      while(!_loc14_)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         if(!_loc14_)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            §§push(_loc3_.colorArgb);
                                                                                                                                                                                                                                                                                                                                                            while(_loc13_ || param1)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               if(_loc14_)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  continue loop49;
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               §§push(§§pop().blue);
                                                                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  §§push(_loc3_.colorArgbDelta);
                                                                                                                                                                                                                                                                                                                                                                  addr304:
                                                                                                                                                                                                                                                                                                                                                                  while(!(_loc14_ && param1))
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     §§push(§§pop().blue);
                                                                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        §§push(param2);
                                                                                                                                                                                                                                                                                                                                                                        addr313:
                                                                                                                                                                                                                                                                                                                                                                        while(!_loc14_)
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           if(!(_loc13_ || param1))
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              continue loop53;
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                                           while(!(_loc14_ && param2))
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              if(!_loc14_)
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    §§pop().blue = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                    addr334:
                                                                                                                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       if(!_loc13_)
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          continue loop41;
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                       if(!(_loc13_ || param1))
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          break;
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                       if(!_loc13_)
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          continue loop132;
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                       if(!_loc14_)
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          §§push(_loc3_.colorArgb);
                                                                                                                                                                                                                                                                                                                                                                                          if(_loc14_ && param1)
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             continue loop65;
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                          §§push(_loc3_.colorArgb);
                                                                                                                                                                                                                                                                                                                                                                                          if(_loc13_)
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             §§push(§§pop().alpha);
                                                                                                                                                                                                                                                                                                                                                                                             if(!_loc14_)
                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                if(!_loc14_)
                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                   if(!_loc14_)
                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                      if(_loc14_)
                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                         continue loop55;
                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                      §§push(_loc3_.colorArgbDelta);
                                                                                                                                                                                                                                                                                                                                                                                                      if(_loc13_)
                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                         §§goto(addr207);
                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                      §§goto(addr304);
                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                      §§pop().green = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                      continue loop64;
                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                   addr369:
                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                §§goto(addr333);
                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                             §§goto(addr233);
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr292);
                                                                                                                                                                                                                                                                                                                                                                                          continue loop65;
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                       addr1093:
                                                                                                                                                                                                                                                                                                                                                                                       loop98:
                                                                                                                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          addr1077:
                                                                                                                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             §§push(_loc5_);
                                                                                                                                                                                                                                                                                                                                                                                             break loop130;
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                          addr1092:
                                                                                                                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             _loc7_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                             continue loop98;
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr623);
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                 addr333:
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              else
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr359);
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr361);
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr360);
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  continue loop51;
                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr233);
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            continue loop58;
                                                                                                                                                                                                                                                                                                                                                            addr292:
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         continue loop48;
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      continue loop57;
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      §§push(_loc3_.radius);
                                                                                                                                                                                                                                                                                                                                                      addr1211:
                                                                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         §§push(this.§;>§);
                                                                                                                                                                                                                                                                                                                                                         addr1213:
                                                                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            if(§§pop() >= §§pop())
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               continue loop35;
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               _loc3_.§6§ = _loc3_.§?!D§;
                                                                                                                                                                                                                                                                                                                                                               continue loop31;
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      §§goto(addr370);
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   addr370:
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                continue loop7;
                                                                                                                                                                                                                                                                                                                                                addr158:
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             else
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                addr1345:
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             loop148:
                                                                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                §§push(_loc3_.skipUpdate);
                                                                                                                                                                                                                                                                                                                                                addr1347:
                                                                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   §§push(!§§pop());
                                                                                                                                                                                                                                                                                                                                                   if(!_loc14_)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   loop16:
                                                                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      §§push(§§pop());
                                                                                                                                                                                                                                                                                                                                                      addr1362:
                                                                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                                                                                                         addr1363:
                                                                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            if(!§§pop())
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  §§pop();
                                                                                                                                                                                                                                                                                                                                                                  addr1365:
                                                                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     §§push(this.§46§);
                                                                                                                                                                                                                                                                                                                                                                     if(!(_loc13_ || param1))
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        break loop42;
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     §§push(!§§pop());
                                                                                                                                                                                                                                                                                                                                                                     continue loop16;
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               addr1364:
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            else
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  break loop42;
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               addr1322:
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   continue loop148;
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          §§goto(addr334);
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          if(_loc13_)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             addr585:
                                                                                                                                                                                                                                                                                                                                             if(!(_loc14_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                if(_loc13_)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   continue loop36;
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   if(_loc13_)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      §§push(_loc8_);
                                                                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                                         addr1066:
                                                                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            _loc10_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                            addr1067:
                                                                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               §§push(_loc9_);
                                                                                                                                                                                                                                                                                                                                                               addr1056:
                                                                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                  addr1057:
                                                                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     _loc11_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                                     addr1058:
                                                                                                                                                                                                                                                                                                                                                                     addr1121:
                                                                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        if(!_loc14_)
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           if(_loc14_)
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              break;
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           §§push(_loc8_);
                                                                                                                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              §§push(_loc3_.radialAcceleration);
                                                                                                                                                                                                                                                                                                                                                                              addr1039:
                                                                                                                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                                                 addr1040:
                                                                                                                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                                    addr1041:
                                                                                                                                                                                                                                                                                                                                                                                    addr1143:
                                                                                                                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       if(!_loc14_)
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          if(!_loc13_)
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             break;
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                          if(!(_loc14_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             _loc8_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                             break loop43;
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                          continue loop5;
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr1092);
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       _loc6_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                       addr1144:
                                                                                                                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          §§push(Number(Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_)));
                                                                                                                                                                                                                                                                                                                                                                                          addr1106:
                                                                                                                                                                                                                                                                                                                                                                                          while(!(_loc14_ && param1))
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             continue loop0;
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                          continue loop86;
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                        addr1090:
                                                                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           §§push(0.01);
                                                                                                                                                                                                                                                                                                                                                                           addr1091:
                                                                                                                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr1092);
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     while(!(_loc14_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        §§push(_loc7_);
                                                                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           §§push(0.01);
                                                                                                                                                                                                                                                                                                                                                                           addr1089:
                                                                                                                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              if(§§pop() < §§pop())
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr1090);
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr1077);
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     continue loop6;
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      addr1065:
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   else
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      addr1327:
                                                                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
                                                                                                                                                                                                                                                                                                                                                         addr1338:
                                                                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            §§push(_loc3_);
                                                                                                                                                                                                                                                                                                                                                            §§push(_loc3_.radius);
                                                                                                                                                                                                                                                                                                                                                            if(!_loc14_)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               §§push(_loc3_.radiusDelta);
                                                                                                                                                                                                                                                                                                                                                               if(_loc13_ || param1)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  §§push(§§pop() * param2);
                                                                                                                                                                                                                                                                                                                                                                  if(_loc13_)
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     §§push(§§pop() * 2);
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            §§pop().radius = §§pop();
                                                                                                                                                                                                                                                                                                                                                            addr1302:
                                                                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      addr1327:
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                addr1074:
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             else
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
                                                                                                                                                                                                                                                                                                                                                   loop139:
                                                                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      if(!(_loc14_ && param1))
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         §§goto(addr595);
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         loop23:
                                                                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            §§push(_loc3_);
                                                                                                                                                                                                                                                                                                                                                            §§push(_loc3_.radius);
                                                                                                                                                                                                                                                                                                                                                            if(!_loc14_)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               §§push(_loc3_.radiusDelta);
                                                                                                                                                                                                                                                                                                                                                               if(!_loc14_)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  §§push(§§pop() * param2);
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            §§pop().radius = §§pop();
                                                                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               addr117:
                                                                                                                                                                                                                                                                                                                                                               if(_loc14_ && _loc3_)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  continue;
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  §§push(_loc3_);
                                                                                                                                                                                                                                                                                                                                                                  §§push(_loc3_.skipUpdate);
                                                                                                                                                                                                                                                                                                                                                                  if(_loc13_ || this)
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     §§push(!§§pop());
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  §§pop().skipUpdate = §§pop();
                                                                                                                                                                                                                                                                                                                                                                  if(_loc13_)
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     if(!_loc13_)
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        loop77:
                                                                                                                                                                                                                                                                                                                                                                        while(_loc13_)
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           if(!_loc13_)
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              continue loop84;
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           _loc3_.alpha = _loc3_.colorArgb.alpha;
                                                                                                                                                                                                                                                                                                                                                                           loop78:
                                                                                                                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              if(_loc14_ && param1)
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    if(!(_loc13_ || _loc3_))
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       continue loop139;
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    if(_loc13_)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       _loc3_.blue = _loc3_.colorArgb.blue;
                                                                                                                                                                                                                                                                                                                                                                                       continue loop77;
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    addr1378:
                                                                                                                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       §§push(param2);
                                                                                                                                                                                                                                                                                                                                                                                       addr1379:
                                                                                                                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                                          if(!_loc14_)
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             break loop88;
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                          continue loop3;
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    continue loop78;
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                 continue loop139;
                                                                                                                                                                                                                                                                                                                                                                                 addr142:
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              if(_loc14_ && param2)
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 break;
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr117);
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              if(!(_loc14_ && this))
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 if(!_loc14_)
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    §§push(_loc12_);
                                                                                                                                                                                                                                                                                                                                                                                    if(!(_loc14_ && param1))
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       if(_loc13_)
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          if(_loc13_ || param1)
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             if(!(_loc14_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                §§goto(addr861);
                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                             §§goto(addr1091);
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                                             addr1073:
                                                                                                                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                _loc9_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                §§goto(addr1074);
                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                          addr1072:
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                       break;
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    continue loop130;
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr1365);
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr1302);
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              if(!_loc14_)
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 if(_loc13_)
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    if(!_loc14_)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       _loc10_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr955);
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    break;
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    §§push(_loc7_);
                                                                                                                                                                                                                                                                                                                                                                                    addr1071:
                                                                                                                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr1072);
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                 addr1070:
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr1041);
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           addr955:
                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr1106);
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                        loop104:
                                                                                                                                                                                                                                                                                                                                                                        while(_loc13_)
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr1070);
                                                                                                                                                                                                                                                                                                                                                                           §§push(_loc6_);
                                                                                                                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              _loc8_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                                              continue loop104;
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                        continue loop87;
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     if(!_loc14_)
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        if(_loc13_)
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           if(_loc14_ && param1)
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              continue loop134;
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           if(!_loc14_)
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              if(!(_loc14_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 return;
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              addr1324:
                                                                                                                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 §§push(this.§46§);
                                                                                                                                                                                                                                                                                                                                                                                 addr1326:
                                                                                                                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    if(!§§pop())
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       _loc3_.rotation += _loc3_.rotationDelta * param2;
                                                                                                                                                                                                                                                                                                                                                                                       continue loop23;
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr1327);
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           else
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr1058);
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                        else
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr243);
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr1093);
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr158);
                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr1327);
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr103);
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   §§goto(addr585);
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                addr771:
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                _loc3_.x = §]W§ - Math.cos(_loc3_.rotation) * _loc3_.radius;
                                                                                                                                                                                                                                                                                                                                                addr1248:
                                                                                                                                                                                                                                                                                                                                                while(_loc13_)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   _loc3_.y = §+!6§ - Math.sin(_loc3_.rotation) * _loc3_.radius;
                                                                                                                                                                                                                                                                                                                                                   §§goto(addr1233);
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                §§goto(addr1338);
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             §§goto(addr668);
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          §§goto(addr595);
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       addr243:
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    §§goto(addr302);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§goto(addr312);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §§goto(addr323);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§goto(addr313);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§goto(addr226);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr369);
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
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(!(_loc14_ && _loc3_))
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        _loc9_ = §§pop();
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(_loc10_);
                                                                                                                                                                                                                                                                           continue loop85;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        addr1034:
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     else
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§goto(addr1379);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  addr1026:
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               else
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  addr975:
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(!(_loc14_ && this))
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(_loc13_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(!_loc14_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(!_loc14_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 _loc12_ = §§pop();
                                                                                                                                                                                                                                                                                 break loop132;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              break;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr1073);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr1037);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr1082);
                                                                                                                                                                                                                                                                  addr975:
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               while(!_loc14_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§goto(addr1026);
                                                                                                                                                                                                                                                                  §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                  §§goto(addr975);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr1066);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr1057);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr512);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      loop102:
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§goto(addr1082);
                                                                                                                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                                                                                                                         addr1080:
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            continue loop102;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr1065);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                while(!_loc14_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§goto(addr948);
                                                                                                                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                continue loop3;
                                                                                                                                                                                                                                                addr945:
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr512);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(_loc9_);
                                                                                                                                                                                                                                             if(_loc13_ || param2)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(_loc3_.radialAcceleration);
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(!(_loc14_ && param2))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(_loc14_ && _loc3_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         break;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr1023);
                                                                                                                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr1039);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                continue loop1;
                                                                                                                                                                                                                                                addr1008:
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr1023);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr405);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    break;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 continue loop37;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              continue loop40;
                                                                                                                                                                                                                              §§goto(addr453);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(!§§pop())
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 continue loop35;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr1324);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           addr455:
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        else
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§goto(addr583);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr666);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr59);
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr455);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1326);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr440);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr453);
                                                                                                                                                                                                }
                                                                                                                                                                                                while(!_loc14_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc3_);
                                                                                                                                                                                                   §§push(_loc3_.velocityY);
                                                                                                                                                                                                   if(_loc13_ || param2)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(2 * param2);
                                                                                                                                                                                                      if(!_loc14_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(this.§%!'§);
                                                                                                                                                                                                         if(!(_loc14_ && param1))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(_loc9_);
                                                                                                                                                                                                            if(!(_loc14_ && _loc3_))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr769:
                                                                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                                                                               if(!_loc14_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr767:
                                                                                                                                                                                                                  §§push(§§pop() + _loc11_);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§pop().velocityY = §§pop() + §§pop() * §§pop();
                                                                                                                                                                                                               §§goto(addr771);
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr767);
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr769);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1067);
                                                                                                                                                                                             }
                                                                                                                                                                                             continue loop2;
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr444);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1362);
                                                                                                                                                                                    }
                                                                                                                                                                                    continue loop83;
                                                                                                                                                                                 }
                                                                                                                                                                                 continue loop8;
                                                                                                                                                                              }
                                                                                                                                                                              continue loop13;
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr595);
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  while(_loc13_ || _loc3_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc3_);
                                                                                                                                                                     §§push(_loc3_.velocityX);
                                                                                                                                                                     if(!(_loc14_ && param1))
                                                                                                                                                                     {
                                                                                                                                                                        §§push(2 * param2);
                                                                                                                                                                        if(_loc13_ || this)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(this.§+!g§);
                                                                                                                                                                           if(_loc13_ || param1)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc8_);
                                                                                                                                                                              if(_loc13_ || param2)
                                                                                                                                                                              {
                                                                                                                                                                                 addr831:
                                                                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                                                                 if(_loc13_ || param2)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr829:
                                                                                                                                                                                    §§push(§§pop() + _loc10_);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§pop().velocityX = §§pop() + §§pop() * §§pop();
                                                                                                                                                                                 §§goto(addr833);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr829);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr831);
                                                                                                                                                                  }
                                                                                                                                                                  addr776:
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1144);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr702);
                                                                                                                                             }
                                                                                                                                             §§goto(addr776);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(!(_loc14_ && _loc3_))
                                                                                                                                          {
                                                                                                                                             §§push(_loc11_);
                                                                                                                                             if(_loc13_ || param1)
                                                                                                                                             {
                                                                                                                                                §§push(-§§pop());
                                                                                                                                                if(_loc13_ || param2)
                                                                                                                                                {
                                                                                                                                                   addr927:
                                                                                                                                                   if(_loc13_)
                                                                                                                                                   {
                                                                                                                                                      if(_loc13_)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc3_.tangentialAcceleration);
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(_loc13_)
                                                                                                                                                            {
                                                                                                                                                               if(_loc13_ || _loc3_)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc13_)
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr945);
                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1213);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1089);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1071);
                                                                                                                                                         }
                                                                                                                                                         addr933:
                                                                                                                                                      }
                                                                                                                                                      break;
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1056);
                                                                                                                                                }
                                                                                                                                                §§goto(addr948);
                                                                                                                                             }
                                                                                                                                             §§goto(addr927);
                                                                                                                                          }
                                                                                                                                          §§goto(addr1034);
                                                                                                                                       }
                                                                                                                                       §§goto(addr1088);
                                                                                                                                    }
                                                                                                                                    §§goto(addr1211);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           §§goto(addr1040);
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§goto(addr896);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr1080);
                                                                                                                  }
                                                                                                                  §§goto(addr1008);
                                                                                                               }
                                                                                                               §§goto(addr933);
                                                                                                            }
                                                                                                            continue loop4;
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr1248);
                                                                                                }
                                                                                                §§goto(addr1143);
                                                                                             }
                                                                                             §§goto(addr1214);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr595);
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr1347);
                                                                        }
                                                                        §§goto(addr1314);
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr1154);
                                                         }
                                                      }
                                                      §§goto(addr1363);
                                                   }
                                                }
                                                §§goto(addr1364);
                                             }
                                          }
                                          §§goto(addr1188);
                                       }
                                       §§goto(addr1345);
                                    }
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr1378);
                  }
               }
            }
         }
         §§goto(addr612);
      }
      
      private function §^0§(param1:XML, param2:Texture) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§4!=§ = parseFloat(param1.sourcePositionVariance.attribute("x"));
            loop0:
            while(true)
            {
               this.§ !8§ = parseFloat(param1.sourcePositionVariance.attribute("y"));
               loop1:
               while(true)
               {
                  this.§+!g§ = parseFloat(param1.gravity.attribute("x"));
                  loop2:
                  while(true)
                  {
                     this.§%!'§ = parseFloat(param1.gravity.attribute("y"));
                     while(true)
                     {
                        this.§!!3§ = this.§@H§(param1.emitterType);
                        while(_loc3_ || param2)
                        {
                           this.§-!Y§ = this.§@H§(param1.maxParticles);
                           while(true)
                           {
                              this.§,k§ = Math.max(0.01,this.§]v§(param1.particleLifeSpan));
                              addr725:
                              while(true)
                              {
                                 this.§>M§ = this.§]v§(param1.particleLifespanVariance);
                                 continue loop0;
                              }
                              for(; !(_loc4_ && param1); if(!(_loc4_ && _loc3_))
                              {
                                 addr19:
                                 return;
                              })
                              {
                                 if(_loc4_)
                                 {
                                    continue loop1;
                                 }
                                 if(param1.emissionVariance.length != 1)
                                 {
                                    §§goto(addr19);
                                 }
                                 if(!(_loc3_ || _loc3_))
                                 {
                                    continue;
                                 }
                                 if(_loc3_)
                                 {
                                    addr38:
                                    if(_loc3_ || _loc3_)
                                    {
                                       if(!(_loc4_ && this))
                                       {
                                          if(_loc3_)
                                          {
                                             addr54:
                                             if(_loc3_ || this)
                                             {
                                                addr61:
                                                if(_loc3_ || this)
                                                {
                                                   §^4§ = this.§]v§(param1.emissionVariance);
                                                   continue;
                                                }
                                                continue loop0;
                                             }
                                             addr685:
                                             while(true)
                                             {
                                                loop9:
                                                while(true)
                                                {
                                                   this.§6x§ = this.§]v§(param1.startParticleSize);
                                                   loop10:
                                                   while(true)
                                                   {
                                                      §§push(this);
                                                      §§push(this.§6x§);
                                                      if(!(_loc4_ && _loc3_))
                                                      {
                                                         §§push(param2.height);
                                                         if(!(_loc4_ && param2))
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            if(_loc3_ || param2)
                                                            {
                                                               addr668:
                                                               §§push(§§pop() / param2.width);
                                                            }
                                                            §§pop().§7!c§ = §§pop();
                                                            loop11:
                                                            while(true)
                                                            {
                                                               this.§7!+§ = this.§]v§(param1.startParticleSizeVariance);
                                                               loop12:
                                                               while(true)
                                                               {
                                                                  §§push(this);
                                                                  §§push(this.§7!+§);
                                                                  if(!_loc4_)
                                                                  {
                                                                     §§push(param2.height);
                                                                     if(_loc3_ || param1)
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                        if(_loc3_)
                                                                        {
                                                                           addr627:
                                                                           §§push(§§pop() / param2.width);
                                                                        }
                                                                        §§pop().§4!O§ = §§pop();
                                                                        loop13:
                                                                        while(true)
                                                                        {
                                                                           if(param1.startParticleSizeX.length() == 1)
                                                                           {
                                                                              loop14:
                                                                              while(true)
                                                                              {
                                                                                 this.§6x§ = this.§]v§(param1.startParticleSizeX);
                                                                                 addr606:
                                                                                 while(true)
                                                                                 {
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    if(!(_loc4_ && this))
                                                                                    {
                                                                                       this.§&!&§ = deg2rad(this.§]v§(param1.angleVariance));
                                                                                       loop46:
                                                                                       while(!_loc4_)
                                                                                       {
                                                                                          addr340:
                                                                                          if(!(_loc4_ && param2))
                                                                                          {
                                                                                             this.§8%§ = this.§]v§(param1.speed);
                                                                                             loop47:
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc3_)
                                                                                                {
                                                                                                   if(!_loc4_)
                                                                                                   {
                                                                                                      if(_loc3_)
                                                                                                      {
                                                                                                         this.§;A§ = this.§]v§(param1.speedVariance);
                                                                                                         while(true)
                                                                                                         {
                                                                                                            this.§-!<§ = this.§]v§(param1.radialAcceleration);
                                                                                                            addr299:
                                                                                                            loop49:
                                                                                                            while(!(_loc4_ && param2))
                                                                                                            {
                                                                                                               this.§#!b§ = this.§]v§(param1.tangentialAcceleration);
                                                                                                               loop50:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  this.§[!1§ = this.§]v§(param1.maxRadius);
                                                                                                                  loop51:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     this.§%O§ = this.§]v§(param1.maxRadiusVariance);
                                                                                                                     loop52:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(!(_loc3_ || _loc3_))
                                                                                                                        {
                                                                                                                           continue loop51;
                                                                                                                        }
                                                                                                                        if(_loc4_)
                                                                                                                        {
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        addr261:
                                                                                                                        if(_loc3_ || _loc3_)
                                                                                                                        {
                                                                                                                           if(_loc3_ || this)
                                                                                                                           {
                                                                                                                              this.§;>§ = this.§]v§(param1.minRadius);
                                                                                                                              loop53:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(_loc3_)
                                                                                                                                 {
                                                                                                                                    if(!_loc3_)
                                                                                                                                    {
                                                                                                                                       continue loop12;
                                                                                                                                    }
                                                                                                                                    this.§%y§ = deg2rad(this.§]v§(param1.rotatePerSecond));
                                                                                                                                    loop54:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(_loc4_)
                                                                                                                                       {
                                                                                                                                          break loop53;
                                                                                                                                       }
                                                                                                                                       if(!_loc4_)
                                                                                                                                       {
                                                                                                                                          this.§[U§ = deg2rad(this.§]v§(param1.rotatePerSecondVariance));
                                                                                                                                          continue loop50;
                                                                                                                                       }
                                                                                                                                       addr544:
                                                                                                                                       while(_loc3_)
                                                                                                                                       {
                                                                                                                                          this.§,W§ = this.§]v§(param1.finishParticleSize);
                                                                                                                                          break loop47;
                                                                                                                                       }
                                                                                                                                       addr164:
                                                                                                                                       continue loop10;
                                                                                                                                       loop58:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(!(_loc4_ && _loc3_))
                                                                                                                                          {
                                                                                                                                             if(_loc3_)
                                                                                                                                             {
                                                                                                                                                if(!_loc4_)
                                                                                                                                                {
                                                                                                                                                   this.§!o§ = this.§3<§(param1.finishColorVariance);
                                                                                                                                                   loop59:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(_loc4_)
                                                                                                                                                      {
                                                                                                                                                         break loop58;
                                                                                                                                                      }
                                                                                                                                                      §?`§ = this.§7!<§(param1.blendFuncSource);
                                                                                                                                                      loop60:
                                                                                                                                                      while(_loc3_)
                                                                                                                                                      {
                                                                                                                                                         §@f§ = this.§7!<§(param1.blendFuncDestination);
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(!(_loc4_ && param2))
                                                                                                                                                            {
                                                                                                                                                               continue loop59;
                                                                                                                                                            }
                                                                                                                                                            continue loop60;
                                                                                                                                                         }
                                                                                                                                                         continue loop47;
                                                                                                                                                      }
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         addr348:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            this.§<u§ = deg2rad(this.§]v§(param1.angle));
                                                                                                                                                            break loop46;
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   continue loop1;
                                                                                                                                                }
                                                                                                                                                continue loop52;
                                                                                                                                             }
                                                                                                                                             continue loop53;
                                                                                                                                          }
                                                                                                                                          continue loop54;
                                                                                                                                          §§goto(addr38);
                                                                                                                                       }
                                                                                                                                       addr580:
                                                                                                                                       loop34:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(!_loc4_)
                                                                                                                                          {
                                                                                                                                             addr430:
                                                                                                                                             if(!(_loc4_ && param2))
                                                                                                                                             {
                                                                                                                                                this.§,W§ = this.§]v§(param1.finishParticleSizeX);
                                                                                                                                                break loop49;
                                                                                                                                             }
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                this.§7!c§ = this.§]v§(param1.startParticleSizeY);
                                                                                                                                                break loop34;
                                                                                                                                                §§goto(addr430);
                                                                                                                                             }
                                                                                                                                             addr574:
                                                                                                                                          }
                                                                                                                                          addr537:
                                                                                                                                          loop28:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             addr490:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(param1.FinishParticleSizeVariance.length() != 1)
                                                                                                                                                {
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(param1.finishParticleSizeX.length() == 1)
                                                                                                                                                      {
                                                                                                                                                         continue loop34;
                                                                                                                                                      }
                                                                                                                                                      addr407:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(param1.FinishParticleSizeVarianceX.length() == 1)
                                                                                                                                                         {
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               this.§9]§ = this.§]v§(param1.FinishParticleSizeVarianceX);
                                                                                                                                                               addr419:
                                                                                                                                                               loop38:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc4_)
                                                                                                                                                                  {
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        this.§9]§ = this.§]v§(param1.FinishParticleSizeVariance);
                                                                                                                                                                        break loop38;
                                                                                                                                                                     }
                                                                                                                                                                     addr496:
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               continue loop11;
                                                                                                                                                               §§goto(addr340);
                                                                                                                                                            }
                                                                                                                                                            addr413:
                                                                                                                                                         }
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(param1.finishParticleSizeY.length() == 1)
                                                                                                                                                            {
                                                                                                                                                               break loop53;
                                                                                                                                                            }
                                                                                                                                                            addr365:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(param1.FinishParticleSizeVarianceY.length() == 1)
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc4_)
                                                                                                                                                                  {
                                                                                                                                                                     this.§9!E§ = this.§]v§(param1.FinishParticleSizeVarianceY);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr379);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr348);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr725);
                                                                                                                                                   addr422:
                                                                                                                                                }
                                                                                                                                                §§goto(addr496);
                                                                                                                                                continue loop28;
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       loop21:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          addr553:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(param1.startParticleSizeVarianceY.length() == 1)
                                                                                                                                             {
                                                                                                                                                while(!_loc4_)
                                                                                                                                                {
                                                                                                                                                   this.§4!O§ = this.§]v§(param1.startParticleSizeVarianceY);
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr261);
                                                                                                                                                   }
                                                                                                                                                   if(!(_loc3_ || this))
                                                                                                                                                   {
                                                                                                                                                      continue;
                                                                                                                                                   }
                                                                                                                                                   if(_loc3_)
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr407);
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr725);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                continue loop13;
                                                                                                                                             }
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(param1.finishParticleSize.length() == 1)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr544);
                                                                                                                                                }
                                                                                                                                                §§goto(addr490);
                                                                                                                                                §§goto(addr567);
                                                                                                                                             }
                                                                                                                                             continue loop21;
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr419);
                                                                                                                              }
                                                                                                                              while(_loc3_)
                                                                                                                              {
                                                                                                                                 this.§9d§ = this.§]v§(param1.finishParticleSizeY);
                                                                                                                                 loop41:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(!_loc4_)
                                                                                                                                    {
                                                                                                                                       §§goto(addr365);
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          this.§=6§ = this.§]v§(param1.particleInterval);
                                                                                                                                          break loop41;
                                                                                                                                       }
                                                                                                                                       addr692:
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr606);
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              continue loop9;
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr567);
                                                                                                                     }
                                                                                                                     continue loop46;
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            while(_loc3_)
                                                                                                            {
                                                                                                               §§goto(addr445);
                                                                                                               §§goto(addr299);
                                                                                                            }
                                                                                                            addr487:
                                                                                                            while(_loc3_)
                                                                                                            {
                                                                                                               §§goto(addr422);
                                                                                                            }
                                                                                                            continue loop2;
                                                                                                         }
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         this.§7!+§ = this.§]v§(param1.startParticleSizeVarianceX);
                                                                                                         addr593:
                                                                                                         loop18:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            addr568:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(param1.startParticleSizeY.length() == 1)
                                                                                                               {
                                                                                                                  §§goto(addr574);
                                                                                                               }
                                                                                                               §§goto(addr553);
                                                                                                               continue loop18;
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      addr587:
                                                                                                   }
                                                                                                   break;
                                                                                                }
                                                                                                continue loop11;
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(this);
                                                                                                §§push(this.§,W§);
                                                                                                if(_loc3_ || this)
                                                                                                {
                                                                                                   §§push(param2.height);
                                                                                                   if(_loc3_)
                                                                                                   {
                                                                                                      §§push(§§pop() * §§pop());
                                                                                                      if(!(_loc4_ && param1))
                                                                                                      {
                                                                                                         addr535:
                                                                                                         §§push(§§pop() / param2.width);
                                                                                                      }
                                                                                                      §§pop().§9d§ = §§pop();
                                                                                                      §§goto(addr537);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr535);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr413);
                                                                                       }
                                                                                       continue;
                                                                                    }
                                                                                    continue loop14;
                                                                                 }
                                                                              }
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              if(param1.startParticleSizeVarianceX.length() == 1)
                                                                              {
                                                                                 §§goto(addr587);
                                                                              }
                                                                              §§goto(addr568);
                                                                              §§goto(addr606);
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr627);
                                                               }
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr668);
                                                   }
                                                }
                                                §§goto(addr54);
                                             }
                                          }
                                          §§goto(addr593);
                                       }
                                       §§goto(addr580);
                                    }
                                    §§goto(addr164);
                                 }
                                 §§goto(addr106);
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr725);
      }
      
      protected function §@H§(param1:XMLList) : int
      {
         return parseInt(param1.attribute("value"));
      }
      
      protected function §]v§(param1:XMLList) : Number
      {
         return parseFloat(param1.attribute("value"));
      }
      
      protected function §03§(param1:XMLList) : String
      {
         return param1.attribute("value");
      }
      
      protected function §3<§(param1:XMLList) : ColorArgb
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:ColorArgb = new ColorArgb();
         if(!(_loc4_ && _loc3_))
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
               while(_loc4_ && _loc2_);
               
            }
            while(_loc4_ && _loc2_);
            
         }
         while(!_loc3_);
         
         return _loc2_;
      }
      
      protected function §7!<§(param1:XMLList) : String
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(this.§@H§(param1));
         if(_loc5_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(_loc2_);
         if(_loc5_ || param1)
         {
            var _loc3_:* = §§pop();
            if(!_loc4_)
            {
               §§push(0);
               if(!(_loc4_ && _loc3_))
               {
                  §§push(_loc3_);
                  if(_loc5_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!(_loc4_ && _loc2_))
                        {
                           §§push(0);
                           if(_loc4_ && this)
                           {
                              addr191:
                              §§push(_loc3_);
                              if(!_loc4_)
                              {
                                 if(§§pop() === §§pop())
                                 {
                                    if(_loc5_ || this)
                                    {
                                       §§push(2);
                                       if(_loc5_)
                                       {
                                          addr422:
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
                                          addr422:
                                       }
                                       else
                                       {
                                          addr308:
                                          §§push(_loc3_);
                                          if(_loc4_ && _loc2_)
                                          {
                                          }
                                          if(§§pop() === §§pop())
                                          {
                                             if(_loc5_)
                                             {
                                                addr370:
                                                §§push(8);
                                                if(_loc5_ || _loc3_)
                                                {
                                                   addr378:
                                                }
                                                else
                                                {
                                                   addr409:
                                                }
                                             }
                                             else
                                             {
                                                addr412:
                                                §§push(10);
                                                if(_loc5_ || _loc2_)
                                                {
                                                   addr420:
                                                }
                                             }
                                          }
                                          else
                                          {
                                             §§push(775);
                                             if(_loc5_)
                                             {
                                                addr383:
                                                if(§§pop() === _loc3_)
                                                {
                                                   if(!(_loc4_ && this))
                                                   {
                                                      addr401:
                                                      §§push(9);
                                                      if(_loc5_ || _loc2_)
                                                      {
                                                         §§goto(addr409);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr420);
                                                      }
                                                   }
                                                }
                                                else if(true)
                                                {
                                                   §§goto(addr422);
                                                   §§push(10);
                                                }
                                             }
                                          }
                                          §§goto(addr422);
                                       }
                                    }
                                    else
                                    {
                                       addr268:
                                       §§push(4);
                                       if(!_loc4_)
                                       {
                                          §§goto(addr422);
                                       }
                                       else
                                       {
                                          addr275:
                                          §§push(_loc3_);
                                          if(_loc5_ || _loc3_)
                                          {
                                             addr283:
                                             if(§§pop() === §§pop())
                                             {
                                                if(_loc5_ || this)
                                                {
                                                   addr291:
                                                   §§push(5);
                                                   if(!(_loc5_ || this))
                                                   {
                                                      addr327:
                                                   }
                                                }
                                                §§goto(addr422);
                                             }
                                             else
                                             {
                                                §§push(772);
                                                if(!(_loc4_ && _loc2_))
                                                {
                                                   §§goto(addr308);
                                                }
                                                addr364:
                                                §§push(_loc3_);
                                                if(_loc5_)
                                                {
                                                   §§goto(addr308);
                                                }
                                                §§goto(addr383);
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr422);
                                    §§goto(addr420);
                                 }
                                 else
                                 {
                                    §§push(769);
                                    if(_loc5_ || this)
                                    {
                                       §§push(_loc3_);
                                       if(_loc5_ || _loc3_)
                                       {
                                          if(§§pop() === §§pop())
                                          {
                                             if(_loc5_ || this)
                                             {
                                                §§push(3);
                                                if(!(_loc4_ && param1))
                                                {
                                                   §§goto(addr422);
                                                }
                                                else
                                                {
                                                   §§goto(addr364);
                                                }
                                             }
                                             else
                                             {
                                                §§goto(addr324);
                                             }
                                             §§goto(addr409);
                                          }
                                          else
                                          {
                                             §§push(770);
                                             if(!(_loc4_ && param1))
                                             {
                                                §§push(_loc3_);
                                                if(_loc5_)
                                                {
                                                   addr260:
                                                   if(§§pop() === §§pop())
                                                   {
                                                      if(_loc5_ || _loc3_)
                                                      {
                                                         §§goto(addr268);
                                                      }
                                                      §§goto(addr370);
                                                   }
                                                   else
                                                   {
                                                      §§push(771);
                                                      if(!_loc4_)
                                                      {
                                                         §§goto(addr275);
                                                      }
                                                      §§goto(addr383);
                                                   }
                                                }
                                                §§goto(addr308);
                                             }
                                          }
                                          §§goto(addr364);
                                       }
                                       §§goto(addr283);
                                    }
                                 }
                                 §§goto(addr336);
                              }
                              §§goto(addr308);
                           }
                           §§goto(addr422);
                        }
                        §§goto(addr291);
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
                                 if(_loc5_)
                                 {
                                    §§push(1);
                                    if(!_loc5_)
                                    {
                                       §§goto(addr355);
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr324);
                                 }
                              }
                              else
                              {
                                 §§push(768);
                                 if(!_loc4_)
                                 {
                                    §§goto(addr191);
                                 }
                                 §§goto(addr378);
                              }
                              §§goto(addr422);
                           }
                           §§goto(addr308);
                        }
                     }
                     §§goto(addr308);
                  }
                  §§goto(addr260);
               }
               §§goto(addr383);
            }
            §§goto(addr268);
         }
         §§goto(addr422);
      }
      
      protected function §,@§(param1:XMLList) : String
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(this.§03§(param1));
         if(!_loc3_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(!_loc3_)
         {
            §§push(_loc2_);
            loop0:
            while(true)
            {
               §§push(§=!C§.§1l§);
               loop1:
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  loop2:
                  while(true)
                  {
                     §§push(Boolean(§§pop()));
                     loop3:
                     while(true)
                     {
                        §§push(§§pop());
                        loop4:
                        while(true)
                        {
                           §§push(Boolean(§§pop()));
                           loop5:
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 loop6:
                                 while(true)
                                 {
                                    §§pop();
                                    loop7:
                                    while(true)
                                    {
                                       §§push(_loc2_);
                                       loop8:
                                       while(true)
                                       {
                                          §§push(§=!C§.§!!N§);
                                          loop9:
                                          while(!_loc3_)
                                          {
                                             §§push(§§pop() == §§pop());
                                             loop10:
                                             while(true)
                                             {
                                                §§push(Boolean(§§pop()));
                                                if(!(_loc3_ && _loc2_))
                                                {
                                                   if(_loc3_ && param1)
                                                   {
                                                      break;
                                                      addr145:
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(§§pop());
                                                      if(_loc4_)
                                                      {
                                                         if(!(_loc4_ || _loc2_))
                                                         {
                                                            break;
                                                         }
                                                         if(!(_loc4_ || param1))
                                                         {
                                                            continue loop4;
                                                         }
                                                         §§push(Boolean(§§pop()));
                                                      }
                                                      if(!§§pop())
                                                      {
                                                         while(true)
                                                         {
                                                            §§pop();
                                                            addr176:
                                                            loop14:
                                                            while(true)
                                                            {
                                                               §§push(_loc2_);
                                                               if(!(_loc3_ && param1))
                                                               {
                                                                  §§push(§=!C§.NONE);
                                                                  if(_loc3_ && this)
                                                                  {
                                                                     continue loop9;
                                                                  }
                                                                  §§push(§§pop() == §§pop());
                                                                  if(!_loc3_)
                                                                  {
                                                                     if(!_loc4_)
                                                                     {
                                                                        continue loop10;
                                                                     }
                                                                     if(!_loc4_)
                                                                     {
                                                                        continue loop2;
                                                                     }
                                                                     §§push(Boolean(§§pop()));
                                                                  }
                                                                  if(_loc3_)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  addr79:
                                                                  if(!(_loc4_ || param1))
                                                                  {
                                                                     continue loop3;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        if(_loc4_ || _loc2_)
                                                                        {
                                                                           §§push(_loc2_);
                                                                           break;
                                                                        }
                                                                        if(_loc3_ && param1)
                                                                        {
                                                                           continue loop14;
                                                                        }
                                                                        if(!(_loc4_ || _loc3_))
                                                                        {
                                                                           continue loop7;
                                                                        }
                                                                     }
                                                                     §§push(§=!C§.§1l§);
                                                                     if(_loc3_ && this)
                                                                     {
                                                                        break;
                                                                     }
                                                                     if(_loc4_)
                                                                     {
                                                                        continue loop0;
                                                                     }
                                                                     continue loop8;
                                                                     §§goto(addr79);
                                                                  }
                                                               }
                                                               return §§pop();
                                                            }
                                                         }
                                                         addr175:
                                                      }
                                                      §§goto(addr96);
                                                   }
                                                   continue loop5;
                                                }
                                                §§goto(addr175);
                                             }
                                             continue loop6;
                                          }
                                          continue loop1;
                                       }
                                    }
                                 }
                              }
                              §§goto(addr145);
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr176);
      }
   }
}

import §4!<§.§0!W§;

class PDParticle extends §0!W§
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
