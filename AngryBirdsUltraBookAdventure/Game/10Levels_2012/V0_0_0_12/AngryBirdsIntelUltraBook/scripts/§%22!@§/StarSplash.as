package §"!@§
{
   import § D§.§]!B§;
   import §2=§.TweenManager;
   import flash.display.Sprite;
   import flash.geom.Point;
   
   public class StarSplash extends Sprite
   {
      
      public static const STARSPLASH_LEFT:int = 0;
      
      public static const STARSPLASH_CENTER:int = 1;
      
      public static const STARSPLASH_RIGHT:int = 2;
      
      public static const STARSPLASH_BADGE:int = 3;
      
      {
         var STARSPLASH_LEFT:Boolean = false;
         var STARSPLASH_CENTER:Boolean = true;
         if(!(STARSPLASH_LEFT && STARSPLASH_LEFT))
         {
            while(true)
            {
               STARSPLASH_LEFT = 0;
            }
            addr118:
         }
         while(true)
         {
            loop2:
            while(true)
            {
               STARSPLASH_CENTER = 1;
               do
               {
                  continue loop2;
               }
               while(!STARSPLASH_CENTER);
               
               return;
            }
            if(!(STARSPLASH_CENTER || STARSPLASH_LEFT))
            {
               continue;
            }
            §§goto(addr86);
         }
      }
      
      private const §return§:uint = 40;
      
      private const §?!S§:Number = 0.3;
      
      private const §=0§:Number = 25;
      
      private const §?R§:Number = 10;
      
      private const §?n§:Number = 9;
      
      private var §,M§:int;
      
      private var §6!M§:int;
      
      private var §-!I§:Array;
      
      private var §<!O§:Array;
      
      private var §1!L§:Point;
      
      private var §3L§:int;
      
      public function StarSplash(stageWidth:int, stageHeight:int, posX:Number, posY:Number, starPos:int, starCount:int = 40)
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         if(!_loc13_)
         {
         }
         var star:§5q§ = null;
         var absX:Number = NaN;
         var absY:Number = NaN;
         if(_loc13_)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     while(true)
                     {
                        while(true)
                        {
                           addr149:
                           while(!(_loc14_ && stageHeight))
                           {
                              continue loop0;
                           }
                        }
                        loop7:
                        for(; !(_loc14_ && this); while(_loc13_ || posX)
                        {
                           §§goto(addr107);
                           §§goto(addr91);
                        })
                        {
                           loop8:
                           while(_loc13_)
                           {
                              while(true)
                              {
                                 continue loop7;
                                 addr107:
                                 loop11:
                                 for(; !(_loc14_ && stageWidth); if(_loc14_ && posX)
                                 {
                                    continue;
                                 },if(false)
                                 {
                                    §§goto(addr50);
                                 }
                                 else
                                 {
                                    var scaleMin:Number = Math.min(§]!B§.§9$§,§]!B§.§^F§);
                                    if(_loc14_)
                                    {
                                    }
                                    var scaleMax:Number = Math.max(§]!B§.§9$§,§]!B§.§^F§);
                                    if(_loc13_ || posX)
                                    {
                                       addr350:
                                       posX /= §]!B§.§^F§;
                                       addr342:
                                       addr353:
                                       addr351:
                                       addr349:
                                       addr348:
                                       addr345:
                                       §§push(posY);
                                       if(_loc13_)
                                       {
                                          if(!(_loc14_ && posX))
                                          {
                                             §§push(§]!B§.§9$§);
                                             if(!_loc14_)
                                             {
                                                §§push(§§pop() / §§pop());
                                                if(_loc13_)
                                                {
                                                   addr321:
                                                   if(_loc13_)
                                                   {
                                                      addr324:
                                                      §§push(Number(§§pop()));
                                                      if(_loc13_ || this)
                                                      {
                                                         posY = §§pop();
                                                         addr332:
                                                         if(_loc13_ || stageWidth)
                                                         {
                                                            addr292:
                                                            if(_loc13_ || stageHeight)
                                                            {
                                                               if(_loc13_)
                                                               {
                                                                  this.§3L§ = starPos;
                                                                  addr282:
                                                                  addr289:
                                                                  if(!_loc14_)
                                                                  {
                                                                     this.§1!L§ = new Point(posX,posY);
                                                                     addr264:
                                                                     if(_loc13_ || posX)
                                                                     {
                                                                        this.§-!I§ = [];
                                                                        addr244:
                                                                        if(_loc13_ || stageWidth)
                                                                        {
                                                                           addr237:
                                                                           if(_loc13_)
                                                                           {
                                                                              addr219:
                                                                              this.§<!O§ = [];
                                                                              if(!_loc14_)
                                                                              {
                                                                                 if(!(_loc14_ && posX))
                                                                                 {
                                                                                    if(_loc13_)
                                                                                    {
                                                                                       if(_loc13_)
                                                                                       {
                                                                                          if(!_loc14_)
                                                                                          {
                                                                                             if(false)
                                                                                             {
                                                                                                §§goto(addr219);
                                                                                             }
                                                                                             §§push(0);
                                                                                             if(!_loc14_)
                                                                                             {
                                                                                                §§push(int(§§pop()));
                                                                                             }
                                                                                             var i:* = §§pop();
                                                                                             addr486:
                                                                                             if(i < starCount)
                                                                                             {
                                                                                                if(_loc13_)
                                                                                                {
                                                                                                   §§push(§§findproperty(§5q§));
                                                                                                   §§push(Math.random() * 40);
                                                                                                   if(_loc13_ || this)
                                                                                                   {
                                                                                                      §§push(§§pop() + 10);
                                                                                                   }
                                                                                                   star = new §§pop().§5q§(§§pop());
                                                                                                   if(!(_loc14_ && stageHeight))
                                                                                                   {
                                                                                                      star.x = -2000;
                                                                                                      star.y = -2000;
                                                                                                      addr461:
                                                                                                      addr475:
                                                                                                      addr483:
                                                                                                      addr485:
                                                                                                      if(!_loc14_)
                                                                                                      {
                                                                                                         if(_loc13_ || posX)
                                                                                                         {
                                                                                                            this.addChild(star);
                                                                                                            addr456:
                                                                                                            if(!_loc14_)
                                                                                                            {
                                                                                                               addr436:
                                                                                                               if(_loc13_ || posX)
                                                                                                               {
                                                                                                                  if(_loc13_ || stageHeight)
                                                                                                                  {
                                                                                                                     this.§-!I§[i] = star;
                                                                                                                     addr426:
                                                                                                                     if(_loc13_ || this)
                                                                                                                     {
                                                                                                                        addr415:
                                                                                                                        if(_loc13_)
                                                                                                                        {
                                                                                                                           §§push(i);
                                                                                                                           if(_loc13_ || this)
                                                                                                                           {
                                                                                                                              §§push(§§pop() + 1);
                                                                                                                              if(!_loc14_)
                                                                                                                              {
                                                                                                                                 §§push(int(§§pop()));
                                                                                                                              }
                                                                                                                           }
                                                                                                                           i = §§pop();
                                                                                                                           if(!_loc14_)
                                                                                                                           {
                                                                                                                              if(_loc13_ || stageHeight)
                                                                                                                              {
                                                                                                                                 if(false)
                                                                                                                                 {
                                                                                                                                    §§goto(addr415);
                                                                                                                                 }
                                                                                                                                 §§goto(addr486);
                                                                                                                              }
                                                                                                                              §§goto(addr426);
                                                                                                                           }
                                                                                                                           §§goto(addr415);
                                                                                                                        }
                                                                                                                        §§goto(addr461);
                                                                                                                     }
                                                                                                                     §§goto(addr436);
                                                                                                                  }
                                                                                                                  §§goto(addr475);
                                                                                                               }
                                                                                                               §§goto(addr456);
                                                                                                               addr458:
                                                                                                            }
                                                                                                            §§goto(addr483);
                                                                                                         }
                                                                                                         §§goto(addr485);
                                                                                                      }
                                                                                                      addr478:
                                                                                                      §§goto(addr478);
                                                                                                   }
                                                                                                   §§goto(addr458);
                                                                                                }
                                                                                                if(_loc13_)
                                                                                                {
                                                                                                   this.scaleX = scaleMax;
                                                                                                   addr528:
                                                                                                   if(!_loc14_)
                                                                                                   {
                                                                                                      this.scaleY = scaleMax;
                                                                                                      addr525:
                                                                                                      if(_loc13_)
                                                                                                      {
                                                                                                         if(!(_loc13_ || this))
                                                                                                         {
                                                                                                            §§goto(addr528);
                                                                                                         }
                                                                                                         return;
                                                                                                         addr520:
                                                                                                      }
                                                                                                      addr525:
                                                                                                      §§goto(addr525);
                                                                                                   }
                                                                                                   addr534:
                                                                                                   §§goto(addr534);
                                                                                                }
                                                                                                §§goto(addr520);
                                                                                                addr491:
                                                                                             }
                                                                                             if(_loc13_)
                                                                                             {
                                                                                                §§goto(addr491);
                                                                                             }
                                                                                             §§goto(addr525);
                                                                                          }
                                                                                          §§goto(addr282);
                                                                                       }
                                                                                       §§goto(addr219);
                                                                                    }
                                                                                    §§goto(addr289);
                                                                                 }
                                                                                 §§goto(addr264);
                                                                              }
                                                                              §§goto(addr237);
                                                                              addr239:
                                                                           }
                                                                           §§goto(addr244);
                                                                        }
                                                                        §§goto(addr292);
                                                                     }
                                                                     addr279:
                                                                     §§goto(addr279);
                                                                  }
                                                                  §§goto(addr342);
                                                               }
                                                               §§goto(addr353);
                                                            }
                                                            §§goto(addr332);
                                                         }
                                                         §§goto(addr351);
                                                      }
                                                      §§goto(addr350);
                                                   }
                                                   §§goto(addr349);
                                                }
                                                §§goto(addr324);
                                             }
                                             §§goto(addr348);
                                          }
                                          §§goto(addr345);
                                       }
                                       §§goto(addr321);
                                    }
                                    §§goto(addr239);
                                 })
                                 {
                                    loop12:
                                    while(true)
                                    {
                                       loop13:
                                       while(true)
                                       {
                                          addr91:
                                          while(!(_loc14_ && posX))
                                          {
                                             this.§,M§ = stageWidth;
                                             loop15:
                                             while(!(_loc14_ && posX))
                                             {
                                                while(true)
                                                {
                                                   if(_loc14_)
                                                   {
                                                      continue loop15;
                                                   }
                                                   if(!_loc13_)
                                                   {
                                                      continue loop13;
                                                   }
                                                   if(_loc14_)
                                                   {
                                                      continue loop12;
                                                   }
                                                   if(!_loc13_)
                                                   {
                                                      continue loop8;
                                                   }
                                                   if(!_loc14_)
                                                   {
                                                      if(_loc14_)
                                                      {
                                                         break;
                                                         addr50:
                                                      }
                                                      while(true)
                                                      {
                                                         this.§6!M§ = stageHeight;
                                                         continue loop2;
                                                      }
                                                      continue loop11;
                                                   }
                                                   addr146:
                                                   while(true)
                                                   {
                                                      super();
                                                      continue loop7;
                                                   }
                                                }
                                                continue loop1;
                                             }
                                          }
                                          continue loop7;
                                       }
                                    }
                                 }
                              }
                           }
                           §§goto(addr149);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr146);
      }
      
      public function clean() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc2_)
         {
         }
         var cleanThisStar:§5q§ = null;
         if(_loc3_)
         {
         }
         while(true)
         {
            §§push(this.§-!I§);
            if(_loc2_)
            {
               if(§§pop().length <= 0)
               {
                  if(!(_loc3_ && _loc2_))
                  {
                     addr120:
                     §§push(this.§<!O§);
                     while(true)
                     {
                        if(§§pop().length > 0)
                        {
                           if(_loc3_)
                           {
                              break;
                           }
                           continue;
                        }
                        if(!(_loc3_ && _loc2_))
                        {
                           addr132:
                           if(_loc2_ || _loc2_)
                           {
                              this.§-!I§ = [];
                              addr185:
                           }
                           this.§<!O§ = [];
                           addr171:
                           if(_loc2_ || cleanThisStar)
                           {
                              break;
                           }
                           §§goto(addr185);
                           addr181:
                        }
                     }
                     if(!(_loc3_ && this))
                     {
                        if(!_loc2_)
                        {
                           §§goto(addr181);
                        }
                        return;
                        addr166:
                     }
                     §§goto(addr171);
                  }
                  §§goto(addr166);
               }
               else if(_loc2_)
               {
                  §§push(this.§-!I§);
                  if(_loc3_)
                  {
                     break;
                  }
                  cleanThisStar = §§pop().shift();
                  if(!_loc3_)
                  {
                     loop1:
                     while(true)
                     {
                        addr54:
                        while(true)
                        {
                           cleanThisStar.clean();
                           continue loop1;
                        }
                     }
                     addr60:
                  }
                  while(true)
                  {
                     if(_loc3_ && _loc2_)
                     {
                        continue;
                     }
                     if(_loc2_)
                     {
                        if(true)
                        {
                           break;
                        }
                     }
                     else
                     {
                        §§goto(addr60);
                     }
                     §§goto(addr54);
                  }
                  continue;
               }
               §§goto(addr132);
            }
            break;
         }
         while(true)
         {
            cleanThisStar = §§pop().shift();
            if(!_loc3_)
            {
               loop5:
               while(true)
               {
                  addr111:
                  while(true)
                  {
                     cleanThisStar.clean();
                     while(true)
                     {
                        if(!_loc3_)
                        {
                           if(_loc2_)
                           {
                              break;
                           }
                           continue;
                        }
                        continue loop5;
                     }
                  }
               }
            }
            while(false)
            {
               §§goto(addr111);
            }
            §§goto(addr120);
            §§goto(addr90);
         }
      }
      
      public function update(deltaTime:Number) : void
      {
         var _loc15_:Boolean = false;
         var _loc16_:Boolean = true;
         if(_loc15_ && deleteFlag)
         {
         }
         var deleteFlag:* = false;
         var star:§5q§ = null;
         var randomVelocity:Number = NaN;
         var randomRadian:* = NaN;
         var randomVx:* = NaN;
         var randomVy:Number = NaN;
         var scaleStart:* = NaN;
         var scaleEnd:* = NaN;
         var velocityMin:* = NaN;
         var velocityMax:* = NaN;
         var splicedStar:Object = null;
         if(_loc16_ || deleteFlag)
         {
         }
         while(true)
         {
            loop1:
            for(; _loc16_ || deleteFlag; if(!(_loc16_ || deleteFlag))
            {
               continue;
            },addr1054:,§§push(this.§-!I§),if(!(_loc15_ && this))
            {
               addr1063:
               if(§§pop().length > 0)
               {
                  addr110:
                  if(!_loc15_)
                  {
                     addr100:
                     addr97:
                     if(!(_loc15_ && deltaTime))
                     {
                        if(!_loc15_)
                        {
                           if(_loc16_)
                           {
                              addr66:
                              addr80:
                              if(!_loc15_)
                              {
                                 if(_loc16_ || len)
                                 {
                                    if(_loc16_)
                                    {
                                       if(!_loc15_)
                                       {
                                          if(false)
                                          {
                                             §§goto(addr66);
                                          }
                                          §§push(this.§-!I§);
                                          if(!(_loc15_ && deltaTime))
                                          {
                                             star = §§pop().shift();
                                             if(_loc16_)
                                             {
                                                addr1050:
                                                randomVelocity = Math.random() * (this.§=0§ - this.§?R§) + this.§?R§;
                                                addr1051:
                                                addr1049:
                                                addr1048:
                                                addr1035:
                                                addr1046:
                                                addr1053:
                                                if(this.§3L§ == STARSPLASH_LEFT)
                                                {
                                                   addr1023:
                                                   randomRadian = Number(-(Math.PI / 2) * Math.random());
                                                   addr1006:
                                                   randomVx = Number(Math.sin(randomRadian - Math.PI / 2));
                                                   addr989:
                                                   randomVy = Math.cos(randomRadian - Math.PI / 2);
                                                   addr501:
                                                   §§push(star);
                                                   §§push(randomVx);
                                                   if(!(_loc15_ && this))
                                                   {
                                                      §§push(§§pop() * randomVelocity);
                                                   }
                                                   §§pop().§<t§ = §§pop();
                                                   addr1007:
                                                   addr1024:
                                                   addr1017:
                                                   addr990:
                                                   addr1018:
                                                   addr1031:
                                                   addr1032:
                                                   addr1022:
                                                   addr1010:
                                                   addr993:
                                                   if(_loc16_ || deltaTime)
                                                   {
                                                      §§push(star);
                                                      §§push(randomVy);
                                                      if(_loc16_)
                                                      {
                                                         §§push(§§pop() * randomVelocity);
                                                      }
                                                      §§pop().§<!D§ = §§pop();
                                                      addr495:
                                                      addr500:
                                                      if(!_loc15_)
                                                      {
                                                         addr484:
                                                         if(_loc16_)
                                                         {
                                                            star.x = this.§1!L§.x;
                                                            addr479:
                                                            if(_loc16_)
                                                            {
                                                               addr458:
                                                               if(!(_loc15_ && len))
                                                               {
                                                                  if(_loc16_ || deltaTime)
                                                                  {
                                                                     star.y = this.§1!L§.y;
                                                                     addr453:
                                                                     if(_loc16_)
                                                                     {
                                                                        addr432:
                                                                        if(!(_loc15_ && deltaTime))
                                                                        {
                                                                           if(_loc16_ || len)
                                                                           {
                                                                              this.§<!O§.push(star);
                                                                              addr415:
                                                                              if(_loc16_ || deleteFlag)
                                                                              {
                                                                                 if(_loc16_ || deltaTime)
                                                                                 {
                                                                                    addr408:
                                                                                    §§push(0.5);
                                                                                    if(!(_loc15_ && len))
                                                                                    {
                                                                                       if(!_loc15_)
                                                                                       {
                                                                                          §§push(Math.random() * 1.5);
                                                                                          if(_loc16_)
                                                                                          {
                                                                                             addr376:
                                                                                             §§push(§§pop() + §§pop());
                                                                                             if(_loc16_)
                                                                                             {
                                                                                                if(_loc16_ || deltaTime)
                                                                                                {
                                                                                                   if(_loc16_ || deltaTime)
                                                                                                   {
                                                                                                      addr393:
                                                                                                      §§push(Number(§§pop()));
                                                                                                      if(!_loc15_)
                                                                                                      {
                                                                                                         if(_loc16_)
                                                                                                         {
                                                                                                            if(!(_loc15_ && deleteFlag))
                                                                                                            {
                                                                                                               scaleStart = §§pop();
                                                                                                               addr343:
                                                                                                               if(_loc16_)
                                                                                                               {
                                                                                                                  if(!_loc15_)
                                                                                                                  {
                                                                                                                     if(_loc16_)
                                                                                                                     {
                                                                                                                        if(!(_loc15_ && deltaTime))
                                                                                                                        {
                                                                                                                           §§push(0.2);
                                                                                                                           if(!(_loc15_ && len))
                                                                                                                           {
                                                                                                                              if(!_loc15_)
                                                                                                                              {
                                                                                                                                 addr317:
                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                 if(!_loc15_)
                                                                                                                                 {
                                                                                                                                    if(_loc16_ || len)
                                                                                                                                    {
                                                                                                                                       if(_loc16_ || deleteFlag)
                                                                                                                                       {
                                                                                                                                          if(_loc16_)
                                                                                                                                          {
                                                                                                                                             scaleEnd = §§pop();
                                                                                                                                             addr336:
                                                                                                                                             if(!_loc15_)
                                                                                                                                             {
                                                                                                                                                if(!_loc15_)
                                                                                                                                                {
                                                                                                                                                   addr285:
                                                                                                                                                   if(_loc16_)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc15_)
                                                                                                                                                      {
                                                                                                                                                         if(!_loc15_)
                                                                                                                                                         {
                                                                                                                                                            if(!_loc15_)
                                                                                                                                                            {
                                                                                                                                                               if(!_loc15_)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc16_ || deltaTime)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc16_)
                                                                                                                                                                     {
                                                                                                                                                                        star.§=!1§ = TweenManager.§8!X§.§8m§(star,{
                                                                                                                                                                           "scaleX":scaleEnd,
                                                                                                                                                                           "scaleY":scaleEnd
                                                                                                                                                                        },{
                                                                                                                                                                           "scaleX":scaleStart,
                                                                                                                                                                           "scaleY":scaleStart
                                                                                                                                                                        },5);
                                                                                                                                                                        addr280:
                                                                                                                                                                        if(_loc16_)
                                                                                                                                                                        {
                                                                                                                                                                           addr244:
                                                                                                                                                                           if(_loc16_)
                                                                                                                                                                           {
                                                                                                                                                                              if(!(_loc15_ && len))
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc16_ || deltaTime)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr220:
                                                                                                                                                                                    star.§=!1§.play();
                                                                                                                                                                                    if(_loc16_ || deleteFlag)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc16_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!(_loc15_ && deltaTime))
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc16_ || this)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!(_loc15_ && deltaTime))
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!(_loc15_ && len))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!_loc15_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!(_loc15_ && len))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(false)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§goto(addr220);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1054);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr867:
                                                                                                                                                                                                         §§push(Math.PI / 2 * Math.random());
                                                                                                                                                                                                         if(_loc16_ || deleteFlag)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!_loc15_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr881:
                                                                                                                                                                                                               randomRadian = Number(§§pop());
                                                                                                                                                                                                               addr882:
                                                                                                                                                                                                               if(!(_loc15_ && len))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr847:
                                                                                                                                                                                                                  randomVx = Number(Math.sin(randomRadian + Math.PI / 2));
                                                                                                                                                                                                                  addr848:
                                                                                                                                                                                                                  if(!_loc15_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr827:
                                                                                                                                                                                                                     if(_loc16_ || this)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr823:
                                                                                                                                                                                                                        randomVy = Math.cos(randomRadian + Math.PI / 2);
                                                                                                                                                                                                                        §§goto(addr501);
                                                                                                                                                                                                                        addr824:
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1007);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr882);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr952:
                                                                                                                                                                                                               §§push(Math.PI * (Math.random() - 0.5) * 0.5);
                                                                                                                                                                                                               if(!(_loc15_ && deleteFlag))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr962:
                                                                                                                                                                                                                  randomRadian = Number(§§pop());
                                                                                                                                                                                                                  if(!_loc15_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr935:
                                                                                                                                                                                                                     randomVx = Number(Math.sin(randomRadian + Math.PI));
                                                                                                                                                                                                                     if(!(_loc15_ && deleteFlag))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr913:
                                                                                                                                                                                                                        randomVy = Math.cos(randomRadian + Math.PI);
                                                                                                                                                                                                                        §§goto(addr501);
                                                                                                                                                                                                                        addr914:
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1024);
                                                                                                                                                                                                                     addr936:
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr963:
                                                                                                                                                                                                                  §§goto(addr963);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr962);
                                                                                                                                                                                                               addr976:
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1017);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr935);
                                                                                                                                                                                                         addr902:
                                                                                                                                                                                                         addr901:
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr575:
                                                                                                                                                                                                      if(!_loc15_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc16_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr524:
                                                                                                                                                                                                            if(_loc16_ || this)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc16_ || this)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§goto(addr501);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1051);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr990);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr936);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      if(_loc16_ || len)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(Math.random() * (velocityMax - velocityMin));
                                                                                                                                                                                                         if(_loc16_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!(_loc15_ && deleteFlag))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc16_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc16_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr561:
                                                                                                                                                                                                                     §§push(velocityMin);
                                                                                                                                                                                                                     if(_loc16_ || deltaTime)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc16_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr571:
                                                                                                                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                                                                                                                           if(_loc16_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr574:
                                                                                                                                                                                                                              randomVelocity = §§pop();
                                                                                                                                                                                                                              §§goto(addr575);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           addr746:
                                                                                                                                                                                                                           if(_loc16_ || this)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              randomRadian = §§pop();
                                                                                                                                                                                                                              addr699:
                                                                                                                                                                                                                              §§push(Number(Math.sin(randomRadian + Math.PI)));
                                                                                                                                                                                                                              if(_loc16_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(_loc16_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(_loc16_ || deltaTime)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(_loc16_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          randomVx = §§pop();
                                                                                                                                                                                                                                          addr713:
                                                                                                                                                                                                                                          if(_loc16_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             addr675:
                                                                                                                                                                                                                                             randomVy = Math.cos(randomRadian + Math.PI);
                                                                                                                                                                                                                                             if(_loc16_ || this)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr636:
                                                                                                                                                                                                                                                if(_loc16_ || this)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(_loc16_ || len)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(!(_loc15_ && deleteFlag))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(!(_loc15_ && deleteFlag))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            addr621:
                                                                                                                                                                                                                                                            §§push(this.§?R§);
                                                                                                                                                                                                                                                            if(_loc16_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               addr624:
                                                                                                                                                                                                                                                               §§push(§§pop() / 2);
                                                                                                                                                                                                                                                               if(_loc16_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  addr628:
                                                                                                                                                                                                                                                                  §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                  if(!_loc15_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(_loc16_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        velocityMin = §§pop();
                                                                                                                                                                                                                                                                        addr615:
                                                                                                                                                                                                                                                                        if(!_loc15_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           addr586:
                                                                                                                                                                                                                                                                           §§push(this.§=0§);
                                                                                                                                                                                                                                                                           if(_loc16_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(2);
                                                                                                                                                                                                                                                                              if(!_loc15_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 addr592:
                                                                                                                                                                                                                                                                                 §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                                                                 if(_loc16_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    addr595:
                                                                                                                                                                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                    if(_loc16_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(!(_loc15_ && len))
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          velocityMax = §§pop();
                                                                                                                                                                                                                                                                                          §§goto(addr575);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr621);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr628);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr1050);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr624);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr867);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr713);
                                                                                                                                                                                                                                                                        addr633:
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr1049);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr1023);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr675);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr1018);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr935);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr827);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr824);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                if(_loc16_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr760:
                                                                                                                                                                                                                                                   if(!(_loc15_ && this))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(!_loc15_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         addr727:
                                                                                                                                                                                                                                                         §§push(Math.PI * (Math.random() - 0.5));
                                                                                                                                                                                                                                                         if(!_loc15_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            addr730:
                                                                                                                                                                                                                                                            §§push(0.5);
                                                                                                                                                                                                                                                            if(_loc16_ || deleteFlag)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               addr738:
                                                                                                                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                               if(_loc16_ || this)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§goto(addr746);
                                                                                                                                                                                                                                                                  §§push(Number(§§pop()));
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr989);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr1048);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr1006);
                                                                                                                                                                                                                                                         addr757:
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr1031);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   addr810:
                                                                                                                                                                                                                                                   §§goto(addr810);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr1032);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr848);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr1035);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1022);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr952);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr847);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr738);
                                                                                                                                                                                                                              addr716:
                                                                                                                                                                                                                              addr754:
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr913);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr952);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr730);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr699);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr624);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr592);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr571);
                                                                                                                                                                                                         addr582:
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr757);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr453);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr244);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr220);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr615);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr432);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr280);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr713);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr675);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr285);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr336);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr962);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr882);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr636);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr495);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr479);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr458);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr343);
                                                                                                                                                }
                                                                                                                                                §§goto(addr524);
                                                                                                                                             }
                                                                                                                                             §§goto(addr415);
                                                                                                                                          }
                                                                                                                                          §§goto(addr595);
                                                                                                                                       }
                                                                                                                                       §§goto(addr571);
                                                                                                                                    }
                                                                                                                                    §§goto(addr376);
                                                                                                                                 }
                                                                                                                                 §§goto(addr393);
                                                                                                                              }
                                                                                                                              §§goto(addr586);
                                                                                                                           }
                                                                                                                           §§goto(addr317);
                                                                                                                        }
                                                                                                                        §§goto(addr760);
                                                                                                                     }
                                                                                                                     §§goto(addr716);
                                                                                                                  }
                                                                                                                  §§goto(addr408);
                                                                                                               }
                                                                                                               addr405:
                                                                                                               §§goto(addr405);
                                                                                                            }
                                                                                                            §§goto(addr1046);
                                                                                                         }
                                                                                                         §§goto(addr867);
                                                                                                      }
                                                                                                      §§goto(addr727);
                                                                                                   }
                                                                                                   §§goto(addr962);
                                                                                                }
                                                                                                §§goto(addr881);
                                                                                             }
                                                                                             §§goto(addr574);
                                                                                          }
                                                                                          §§goto(addr561);
                                                                                       }
                                                                                       §§goto(addr823);
                                                                                    }
                                                                                    §§goto(addr393);
                                                                                 }
                                                                                 §§goto(addr1053);
                                                                              }
                                                                              §§goto(addr500);
                                                                           }
                                                                           §§goto(addr633);
                                                                        }
                                                                        §§goto(addr484);
                                                                     }
                                                                     §§goto(addr754);
                                                                  }
                                                                  §§goto(addr914);
                                                               }
                                                               §§goto(addr1023);
                                                            }
                                                            §§goto(addr1010);
                                                         }
                                                         addr973:
                                                         if(_loc16_)
                                                         {
                                                            §§goto(addr976);
                                                         }
                                                         §§goto(addr993);
                                                      }
                                                      §§goto(addr902);
                                                   }
                                                   §§goto(addr582);
                                                }
                                                addr972:
                                                addr970:
                                                if(this.§3L§ == STARSPLASH_CENTER)
                                                {
                                                   §§goto(addr973);
                                                }
                                                §§push(this.§3L§);
                                                if(!(_loc15_ && deltaTime))
                                                {
                                                   addr898:
                                                   §§push(STARSPLASH_RIGHT);
                                                   if(!_loc15_)
                                                   {
                                                      if(§§pop() == §§pop())
                                                      {
                                                         §§goto(addr901);
                                                      }
                                                      §§push(this.§3L§);
                                                      if(_loc16_)
                                                      {
                                                         if(!(_loc15_ && deleteFlag))
                                                         {
                                                            §§push(STARSPLASH_BADGE);
                                                            if(_loc16_ || len)
                                                            {
                                                               if(!_loc15_)
                                                               {
                                                                  if(§§pop() == §§pop())
                                                                  {
                                                                     §§goto(addr636);
                                                                  }
                                                                  §§goto(addr1023);
                                                               }
                                                               §§goto(addr972);
                                                            }
                                                            §§goto(addr898);
                                                         }
                                                         §§goto(addr970);
                                                      }
                                                      §§goto(addr972);
                                                   }
                                                }
                                                §§goto(addr1050);
                                             }
                                             §§goto(addr962);
                                          }
                                          §§goto(addr1063);
                                       }
                                       §§goto(addr100);
                                    }
                                    addr1076:
                                    var len:int = this.§<!O§.length;
                                    addr1074:
                                    if(_loc15_)
                                    {
                                    }
                                    addr1073:
                                    §§push(len);
                                    if(!(_loc15_ && deltaTime))
                                    {
                                       §§push(int(§§pop() - 1));
                                    }
                                    var i:* = §§pop();
                                    if(!_loc15_)
                                    {
                                       addr1581:
                                       if(i >= 0)
                                       {
                                          addr1110:
                                          §§push(false);
                                          if(_loc16_ || this)
                                          {
                                             §§push(Boolean(§§pop()));
                                          }
                                          deleteFlag = §§pop();
                                          if(!(_loc15_ && deltaTime))
                                          {
                                             if(_loc16_)
                                             {
                                                if(!(_loc15_ && deleteFlag))
                                                {
                                                   if(false)
                                                   {
                                                      §§goto(addr1110);
                                                   }
                                                   star = this.§<!O§[i];
                                                   if(_loc16_ || deltaTime)
                                                   {
                                                      §§push(star);
                                                      §§push(star.§<!D§);
                                                      if(!_loc15_)
                                                      {
                                                         §§push(this.§?!S§);
                                                         if(!(_loc15_ && deleteFlag))
                                                         {
                                                            §§push(§§pop() * deltaTime);
                                                         }
                                                         §§push(§§pop() + §§pop());
                                                      }
                                                      §§pop().§<!D§ = §§pop();
                                                      addr1496:
                                                   }
                                                   addr1494:
                                                   addr1474:
                                                   if(star.§<!D§ > this.§?n§)
                                                   {
                                                      star.§<!D§ = this.§?n§;
                                                      addr1470:
                                                      addr1471:
                                                      if(!(_loc15_ && deleteFlag))
                                                      {
                                                         addr1437:
                                                         star.x += star.§<t§ * deltaTime;
                                                         addr1432:
                                                         addr1450:
                                                         if(!_loc15_)
                                                         {
                                                            if(!_loc15_)
                                                            {
                                                               star.y += star.§<!D§ * deltaTime;
                                                               star.rotation += 5 * deltaTime;
                                                               addr1418:
                                                               addr1415:
                                                               addr1429:
                                                               if(!(_loc15_ && this))
                                                               {
                                                                  if(star.x < -star.width / 2)
                                                                  {
                                                                     addr1384:
                                                                     addr1383:
                                                                     if(!_loc15_)
                                                                     {
                                                                        if(_loc16_ || this)
                                                                        {
                                                                           if(!_loc15_)
                                                                           {
                                                                              addr1365:
                                                                              §§push(true);
                                                                              if(!(_loc15_ && deltaTime))
                                                                              {
                                                                                 §§push(Boolean(§§pop()));
                                                                              }
                                                                              deleteFlag = §§pop();
                                                                              addr1366:
                                                                              if(!(_loc15_ && len))
                                                                              {
                                                                                 addr1222:
                                                                                 §§push(this.§<!O§);
                                                                                 if(!_loc15_)
                                                                                 {
                                                                                    §§push(§§pop().length > 0);
                                                                                    if(!(_loc15_ && this))
                                                                                    {
                                                                                       if(!_loc15_)
                                                                                       {
                                                                                          addr1240:
                                                                                          §§push(Boolean(§§pop()));
                                                                                          §§push(Boolean(§§pop()));
                                                                                          if(!_loc15_)
                                                                                          {
                                                                                             §§push(Boolean(§§pop()));
                                                                                          }
                                                                                          if(§§pop())
                                                                                          {
                                                                                             addr1245:
                                                                                             if(!_loc15_)
                                                                                             {
                                                                                                §§pop();
                                                                                                addr1248:
                                                                                                if(!_loc15_)
                                                                                                {
                                                                                                   addr1172:
                                                                                                   §§push(deleteFlag);
                                                                                                   if(!_loc15_)
                                                                                                   {
                                                                                                      §§push(Boolean(§§pop()));
                                                                                                   }
                                                                                                   if(!(_loc15_ && deltaTime))
                                                                                                   {
                                                                                                      if(!(_loc15_ && this))
                                                                                                      {
                                                                                                         if(_loc16_ || this)
                                                                                                         {
                                                                                                            addr1198:
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               addr1200:
                                                                                                               if(_loc16_ || this)
                                                                                                               {
                                                                                                                  if(!_loc15_)
                                                                                                                  {
                                                                                                                     if(_loc16_)
                                                                                                                     {
                                                                                                                        if(_loc16_ || this)
                                                                                                                        {
                                                                                                                           if(_loc16_)
                                                                                                                           {
                                                                                                                              if(!(_loc15_ && len))
                                                                                                                              {
                                                                                                                                 if(_loc16_ || this)
                                                                                                                                 {
                                                                                                                                    if(_loc16_ || deleteFlag)
                                                                                                                                    {
                                                                                                                                       if(false)
                                                                                                                                       {
                                                                                                                                          §§goto(addr1172);
                                                                                                                                       }
                                                                                                                                       addr1499:
                                                                                                                                       splicedStar = this.§<!O§.splice(i,1);
                                                                                                                                       if(_loc16_)
                                                                                                                                       {
                                                                                                                                          if(splicedStar is §5q§)
                                                                                                                                          {
                                                                                                                                             splicedStar.clean();
                                                                                                                                             addr1547:
                                                                                                                                             addr1570:
                                                                                                                                             addr1569:
                                                                                                                                             addr1552:
                                                                                                                                          }
                                                                                                                                          star.x = -2000;
                                                                                                                                          addr1572:
                                                                                                                                          if(_loc16_)
                                                                                                                                          {
                                                                                                                                             if(_loc16_)
                                                                                                                                             {
                                                                                                                                                addr1531:
                                                                                                                                                if(!_loc15_)
                                                                                                                                                {
                                                                                                                                                   if(_loc16_)
                                                                                                                                                   {
                                                                                                                                                      addr1522:
                                                                                                                                                      star.y = -2000;
                                                                                                                                                      if(!_loc15_)
                                                                                                                                                      {
                                                                                                                                                         if(!_loc15_)
                                                                                                                                                         {
                                                                                                                                                            if(_loc16_ || len)
                                                                                                                                                            {
                                                                                                                                                               if(!_loc15_)
                                                                                                                                                               {
                                                                                                                                                                  if(false)
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr1522);
                                                                                                                                                                  }
                                                                                                                                                                  addr1573:
                                                                                                                                                                  §§push(i);
                                                                                                                                                                  if(_loc16_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() - 1);
                                                                                                                                                                     if(!_loc15_)
                                                                                                                                                                     {
                                                                                                                                                                        addr1579:
                                                                                                                                                                        §§push(int(§§pop()));
                                                                                                                                                                     }
                                                                                                                                                                     i = §§pop();
                                                                                                                                                                     §§goto(addr1581);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1579);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1572);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1547);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1522);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1531);
                                                                                                                                                      addr1535:
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1570);
                                                                                                                                                }
                                                                                                                                                §§goto(addr1572);
                                                                                                                                             }
                                                                                                                                             §§goto(addr1569);
                                                                                                                                          }
                                                                                                                                          §§goto(addr1552);
                                                                                                                                       }
                                                                                                                                       §§goto(addr1535);
                                                                                                                                    }
                                                                                                                                    addr1326:
                                                                                                                                    deleteFlag = Boolean(true);
                                                                                                                                    addr1327:
                                                                                                                                    if(!_loc15_)
                                                                                                                                    {
                                                                                                                                       §§goto(addr1222);
                                                                                                                                    }
                                                                                                                                    §§goto(addr1384);
                                                                                                                                    addr1325:
                                                                                                                                    addr1354:
                                                                                                                                 }
                                                                                                                                 §§goto(addr1200);
                                                                                                                              }
                                                                                                                              §§goto(addr1581);
                                                                                                                           }
                                                                                                                           §§goto(addr1432);
                                                                                                                        }
                                                                                                                        §§goto(addr1418);
                                                                                                                     }
                                                                                                                     §§goto(addr1248);
                                                                                                                  }
                                                                                                                  §§goto(addr1581);
                                                                                                               }
                                                                                                               §§goto(addr1366);
                                                                                                            }
                                                                                                            §§goto(addr1573);
                                                                                                         }
                                                                                                         §§goto(addr1365);
                                                                                                      }
                                                                                                      §§goto(addr1240);
                                                                                                   }
                                                                                                   §§goto(addr1245);
                                                                                                }
                                                                                                §§goto(addr1327);
                                                                                             }
                                                                                             addr1268:
                                                                                             if(_loc16_ || len)
                                                                                             {
                                                                                                deleteFlag = §§pop();
                                                                                                if(!_loc15_)
                                                                                                {
                                                                                                   if(_loc16_ || len)
                                                                                                   {
                                                                                                      if(_loc16_)
                                                                                                      {
                                                                                                         if(!(_loc15_ && this))
                                                                                                         {
                                                                                                            §§goto(addr1222);
                                                                                                         }
                                                                                                         §§goto(addr1415);
                                                                                                      }
                                                                                                      §§goto(addr1581);
                                                                                                   }
                                                                                                   addr1315:
                                                                                                   if(_loc16_ || this)
                                                                                                   {
                                                                                                      §§push(true);
                                                                                                      if(_loc16_)
                                                                                                      {
                                                                                                         §§push(Boolean(§§pop()));
                                                                                                      }
                                                                                                      §§goto(addr1268);
                                                                                                   }
                                                                                                   §§goto(addr1383);
                                                                                                }
                                                                                                §§goto(addr1581);
                                                                                             }
                                                                                             §§goto(addr1325);
                                                                                          }
                                                                                          §§goto(addr1198);
                                                                                       }
                                                                                       §§goto(addr1326);
                                                                                    }
                                                                                    §§goto(addr1240);
                                                                                 }
                                                                                 §§goto(addr1499);
                                                                              }
                                                                              §§goto(addr1470);
                                                                           }
                                                                           §§goto(addr1494);
                                                                        }
                                                                        §§goto(addr1471);
                                                                     }
                                                                     §§goto(addr1429);
                                                                  }
                                                                  if(star.x > this.§,M§ + star.width / 2)
                                                                  {
                                                                     if(!(_loc15_ && len))
                                                                     {
                                                                        if(_loc16_)
                                                                        {
                                                                           §§goto(addr1354);
                                                                        }
                                                                        §§goto(addr1496);
                                                                     }
                                                                     §§goto(addr1326);
                                                                  }
                                                                  if(star.y > this.§6!M§ + star.height / 2)
                                                                  {
                                                                     if(!(_loc15_ && len))
                                                                     {
                                                                        if(!(_loc15_ && deleteFlag))
                                                                        {
                                                                           §§goto(addr1315);
                                                                        }
                                                                        §§goto(addr1470);
                                                                     }
                                                                     §§goto(addr1581);
                                                                  }
                                                                  §§goto(addr1222);
                                                               }
                                                               §§goto(addr1581);
                                                            }
                                                            §§goto(addr1450);
                                                         }
                                                         addr1447:
                                                         §§goto(addr1447);
                                                      }
                                                      §§goto(addr1474);
                                                   }
                                                   §§goto(addr1437);
                                                }
                                                §§goto(addr1110);
                                             }
                                             §§goto(addr1592);
                                          }
                                          addr1132:
                                          §§goto(addr1132);
                                       }
                                       if(!(_loc15_ && len))
                                       {
                                          addr1591:
                                       }
                                       addr1592:
                                       return;
                                    }
                                    §§goto(addr1591);
                                    addr1073:
                                 }
                                 §§goto(addr80);
                              }
                              §§goto(addr1073);
                           }
                           §§goto(addr110);
                        }
                        §§goto(addr97);
                     }
                  }
                  §§goto(addr1073);
               }
               if(!(_loc15_ && this))
               {
                  §§goto(addr1073);
               }
               §§goto(addr1074);
            },§§goto(addr1076))
            {
               loop2:
               while(true)
               {
                  do
                  {
                     continue loop2;
                  }
                  while(!_loc16_);
                  
                  continue loop1;
               }
            }
         }
      }
   }
}
