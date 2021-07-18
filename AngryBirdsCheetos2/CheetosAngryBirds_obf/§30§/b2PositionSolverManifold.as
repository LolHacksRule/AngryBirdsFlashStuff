package §30§
{
   import § o§.*;
   import §"0§.*;
   import §-r§.*;
   import §6!H§.*;
   
   use namespace b2internal;
   
   class b2PositionSolverManifold
   {
      
      private static var § else§:b2Vec2;
      
      private static var §'!2§:b2Vec2;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            § else§ = new b2Vec2();
         }
         do
         {
            §'!2§ = new b2Vec2();
         }
         while(!(_loc1_ || b2PositionSolverManifold));
         
      }
      
      public var §?!B§:b2Vec2;
      
      public var §@Z§:Vector.<b2Vec2>;
      
      public var §'Y§:Vector.<Number>;
      
      function b2PositionSolverManifold()
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc1_))
         {
            super();
            while(true)
            {
               this.§?!B§ = new b2Vec2();
               while(_loc2_)
               {
                  while(true)
                  {
                     this.§'Y§ = new Vector.<Number>(b2Settings.b2_maxManifoldPoints);
                     do
                     {
                        this.§@Z§ = new Vector.<b2Vec2>(b2Settings.b2_maxManifoldPoints);
                     }
                     while(_loc3_ && _loc1_);
                     
                     if(!_loc3_)
                     {
                        if(true)
                        {
                           var _loc1_:int = 0;
                           while(true)
                           {
                              if(_loc1_ >= b2Settings.b2_maxManifoldPoints)
                              {
                                 if(!_loc2_)
                                 {
                                    continue;
                                 }
                                 if(!_loc3_)
                                 {
                                    break;
                                 }
                              }
                              else
                              {
                                 this.§@Z§[_loc1_] = new b2Vec2();
                              }
                              _loc1_++;
                           }
                        }
                        continue;
                        return;
                     }
                     break;
                  }
               }
            }
         }
         while(true)
         {
            §§goto(addr44);
         }
      }
      
      public function §#!O§(param1:b2ContactConstraint) : void
      {
         var _loc18_:Boolean = false;
         var _loc19_:Boolean = true;
         var _loc2_:* = 0;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         var _loc5_:b2Mat22 = null;
         var _loc6_:b2Vec2 = null;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         if(_loc19_)
         {
            b2Settings.b2Assert(param1.§&n§ > 0);
         }
         §§push(param1.type);
         if(_loc19_)
         {
            var _loc17_:* = §§pop();
            if(!(_loc18_ && _loc2_))
            {
               §§push(b2Manifold.§6C§);
               if(_loc19_)
               {
                  §§push(_loc17_);
                  if(!(_loc18_ && _loc2_))
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!(_loc18_ && param1))
                        {
                           §§push(0);
                           if(_loc19_)
                           {
                              addr1891:
                              loop92:
                              switch(§§pop())
                              {
                                 case 0:
                                    _loc5_ = param1.§-'§.m_xf.R;
                                    _loc6_ = param1.localPoint;
                                    if(_loc19_ || param1)
                                    {
                                       §§push(param1.§-'§);
                                       if(_loc19_ || _loc2_)
                                       {
                                          §§push(§§pop().m_xf);
                                          if(_loc19_)
                                          {
                                             §§push(§§pop().position);
                                             if(!(_loc18_ && _loc3_))
                                             {
                                                §§push(§§pop().x);
                                                if(_loc19_)
                                                {
                                                   §§push(_loc5_.col1);
                                                   if(_loc19_ || param1)
                                                   {
                                                      §§push(§§pop().x);
                                                      if(!_loc18_)
                                                      {
                                                         §§push(_loc6_.x);
                                                         if(_loc19_)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            if(!(_loc18_ && this))
                                                            {
                                                               §§push(_loc5_.col2);
                                                               if(!(_loc18_ && _loc3_))
                                                               {
                                                                  §§push(§§pop().x);
                                                                  if(!(_loc18_ && _loc3_))
                                                                  {
                                                                     §§push(_loc6_.y);
                                                                     if(!_loc18_)
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                        if(!(_loc18_ && _loc3_))
                                                                        {
                                                                           §§push(§§pop() + §§pop());
                                                                           if(_loc19_ || param1)
                                                                           {
                                                                              §§push(§§pop() + §§pop());
                                                                              if(_loc19_ || _loc2_)
                                                                              {
                                                                                 §§push(Number(§§pop()));
                                                                                 if(!_loc18_)
                                                                                 {
                                                                                    _loc9_ = §§pop();
                                                                                    if(!(_loc18_ && param1))
                                                                                    {
                                                                                       addr181:
                                                                                       §§push(param1.§-'§.m_xf);
                                                                                       if(_loc19_)
                                                                                       {
                                                                                          addr185:
                                                                                          §§push(§§pop().position.y);
                                                                                          if(!_loc18_)
                                                                                          {
                                                                                             addr190:
                                                                                             §§push(_loc5_.col1.y);
                                                                                             if(_loc19_)
                                                                                             {
                                                                                                addr193:
                                                                                                §§push(_loc6_.x);
                                                                                                if(!(_loc18_ && param1))
                                                                                                {
                                                                                                   addr202:
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   if(!(_loc18_ && _loc2_))
                                                                                                   {
                                                                                                      addr212:
                                                                                                      §§push(_loc5_.col2.y);
                                                                                                      if(_loc19_ || _loc2_)
                                                                                                      {
                                                                                                         addr220:
                                                                                                         §§push(§§pop() * _loc6_.y);
                                                                                                      }
                                                                                                      §§push(§§pop() + §§pop());
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr220);
                                                                                             }
                                                                                             §§push(§§pop() + §§pop());
                                                                                             if(_loc18_)
                                                                                             {
                                                                                             }
                                                                                             addr228:
                                                                                             _loc10_ = §§pop();
                                                                                             _loc5_ = param1.§<!L§.m_xf.R;
                                                                                             _loc6_ = param1.§ try§[0].localPoint;
                                                                                             if(_loc19_ || _loc3_)
                                                                                             {
                                                                                                §§push(param1.§<!L§);
                                                                                                loop0:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop().m_xf);
                                                                                                   if(_loc19_ || _loc3_)
                                                                                                   {
                                                                                                      §§push(§§pop().position);
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop().x);
                                                                                                         addr684:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc5_.col1);
                                                                                                            addr686:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop().x);
                                                                                                               addr687:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(_loc6_.x);
                                                                                                                  addr689:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                     addr690:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc5_.col2);
                                                                                                                        addr692:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop().x);
                                                                                                                           addr693:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(_loc6_.y);
                                                                                                                              addr695:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                 addr696:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                    addr697:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                       addr698:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                          addr699:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             _loc11_ = §§pop();
                                                                                                                                             continue loop0;
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
                                                                                                      addr683:
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      addr706:
                                                                                                      _loc5_ = §§pop().R;
                                                                                                      _loc6_ = param1.§]9§;
                                                                                                      if(_loc19_)
                                                                                                      {
                                                                                                         §§push(this.§?!B§);
                                                                                                         if(!(_loc18_ && this))
                                                                                                         {
                                                                                                            §§push(_loc5_.col1);
                                                                                                            if(!_loc18_)
                                                                                                            {
                                                                                                               §§push(§§pop().x);
                                                                                                               if(!_loc18_)
                                                                                                               {
                                                                                                                  §§push(_loc6_.x);
                                                                                                                  if(_loc19_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                     if(_loc19_ || this)
                                                                                                                     {
                                                                                                                        §§push(_loc5_.col2);
                                                                                                                        if(!(_loc18_ && _loc2_))
                                                                                                                        {
                                                                                                                           §§push(§§pop().x);
                                                                                                                           if(!(_loc18_ && this))
                                                                                                                           {
                                                                                                                              addr760:
                                                                                                                              §§push(_loc6_.y);
                                                                                                                              if(_loc19_ || this)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                 if(!(_loc18_ && param1))
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                    if(!_loc18_)
                                                                                                                                    {
                                                                                                                                       addr780:
                                                                                                                                       §§pop().x = §§pop();
                                                                                                                                       if(!_loc18_)
                                                                                                                                       {
                                                                                                                                          addr787:
                                                                                                                                          §§push(this.§?!B§);
                                                                                                                                          §§push(_loc5_.col1.y);
                                                                                                                                          if(!(_loc18_ && this))
                                                                                                                                          {
                                                                                                                                             addr795:
                                                                                                                                             §§push(_loc6_.x);
                                                                                                                                             if(!(_loc18_ && this))
                                                                                                                                             {
                                                                                                                                                addr826:
                                                                                                                                                addr804:
                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                if(!(_loc18_ && this))
                                                                                                                                                {
                                                                                                                                                   addr814:
                                                                                                                                                   §§push(_loc5_.col2.y);
                                                                                                                                                   if(_loc19_ || _loc2_)
                                                                                                                                                   {
                                                                                                                                                      addr824:
                                                                                                                                                      §§push(§§pop() * _loc6_.y);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§pop().y = §§pop();
                                                                                                                                                _loc5_ = param1.§-'§.m_xf.R;
                                                                                                                                                _loc6_ = param1.localPoint;
                                                                                                                                                if(_loc19_)
                                                                                                                                                {
                                                                                                                                                   §§push(param1.§-'§);
                                                                                                                                                   if(_loc19_ || this)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop().m_xf);
                                                                                                                                                      if(!(_loc18_ && _loc2_))
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop().position);
                                                                                                                                                         if(_loc19_)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop().x);
                                                                                                                                                            if(!_loc18_)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc5_.col1);
                                                                                                                                                               if(_loc19_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop().x);
                                                                                                                                                                  if(_loc19_ || _loc2_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc6_.x);
                                                                                                                                                                     if(_loc19_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                        if(!_loc18_)
                                                                                                                                                                        {
                                                                                                                                                                           addr881:
                                                                                                                                                                           §§push(_loc5_.col2);
                                                                                                                                                                           if(!(_loc18_ && this))
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop().x);
                                                                                                                                                                              if(!_loc18_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc6_.y);
                                                                                                                                                                                 if(!_loc18_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                    if(!_loc18_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                                                                       if(!_loc18_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                                                                          if(!_loc18_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                                                                             if(_loc19_)
                                                                                                                                                                                             {
                                                                                                                                                                                                _loc7_ = §§pop();
                                                                                                                                                                                                if(!(_loc18_ && _loc2_))
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr919:
                                                                                                                                                                                                   §§push(param1.§-'§.m_xf);
                                                                                                                                                                                                   if(!(_loc18_ && _loc2_))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr928:
                                                                                                                                                                                                      §§push(§§pop().position.y);
                                                                                                                                                                                                      if(!(_loc18_ && param1))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr936:
                                                                                                                                                                                                         §§push(_loc5_.col1.y);
                                                                                                                                                                                                         if(_loc19_ || _loc3_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr956:
                                                                                                                                                                                                            §§push(_loc6_.x);
                                                                                                                                                                                                            if(_loc19_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                                                                               if(!_loc18_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr963:
                                                                                                                                                                                                                  §§push(_loc5_.col2.y);
                                                                                                                                                                                                                  if(_loc19_ || _loc2_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr976:
                                                                                                                                                                                                                     §§push(§§pop() + §§pop() * _loc6_.y);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr976);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                                                                               if(_loc19_ || this)
                                                                                                                                                                                                               {
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr986:
                                                                                                                                                                                                               _loc8_ = §§pop();
                                                                                                                                                                                                               _loc5_ = param1.§<!L§.m_xf.R;
                                                                                                                                                                                                               if(!_loc18_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(0);
                                                                                                                                                                                                                  if(!(_loc18_ && this))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     _loc2_ = §§pop();
                                                                                                                                                                                                                     if(_loc19_ || _loc2_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr1011:
                                                                                                                                                                                                                        loop71:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(_loc2_);
                                                                                                                                                                                                                           addr1230:
                                                                                                                                                                                                                           while(§§pop() < param1.§&n§)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              _loc6_ = param1.§ try§[_loc2_].localPoint;
                                                                                                                                                                                                                              if(_loc19_ || _loc2_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(param1.§<!L§);
                                                                                                                                                                                                                                 loop51:
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(§§pop().m_xf);
                                                                                                                                                                                                                                    addr1194:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(§§pop().position);
                                                                                                                                                                                                                                       addr1195:
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(§§pop().x);
                                                                                                                                                                                                                                          if(_loc19_ || this)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(_loc5_.col1);
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(§§pop().x);
                                                                                                                                                                                                                                                addr1206:
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(_loc6_.x);
                                                                                                                                                                                                                                                   addr1208:
                                                                                                                                                                                                                                                   loop56:
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                      addr1209:
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(_loc5_.col2);
                                                                                                                                                                                                                                                         addr1211:
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(§§pop().x);
                                                                                                                                                                                                                                                            if(!(_loc18_ && _loc3_))
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(_loc6_.y);
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                  addr1162:
                                                                                                                                                                                                                                                                  §§push(_loc6_.y);
                                                                                                                                                                                                                                                                  if(_loc18_ && _loc3_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     continue;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                  if(_loc18_ && this)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     continue loop56;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§push(§§pop() + (§§pop() + §§pop()));
                                                                                                                                                                                                                                                                  if(!(_loc18_ && param1))
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     addr1188:
                                                                                                                                                                                                                                                                     §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  _loc4_ = §§pop();
                                                                                                                                                                                                                                                                  loop64:
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     this.§'Y§[_loc2_] = (_loc3_ - _loc7_) * this.§?!B§.x + (_loc4_ - _loc8_) * this.§?!B§.y - param1.radius;
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        this.§@Z§[_loc2_].x = _loc3_;
                                                                                                                                                                                                                                                                        addr1058:
                                                                                                                                                                                                                                                                        while(_loc19_ || _loc3_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           continue loop64;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            addr1222:
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                               addr1223:
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                  if(_loc19_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     addr1226:
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     addr1226:
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  addr1227:
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     _loc3_ = §§pop();
                                                                                                                                                                                                                                                                     continue loop51;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             addr1205:
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr1226);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr1050);
                                                                                                                                                                                                                              continue loop71;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     break loop92;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1230);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1011);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr976);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr963);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr986);
                                                                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr986);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr936);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr963);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr976);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr963);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr956);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr976);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr881);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr936);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr986);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr928);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr986);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr919);
                                                                                                                                             }
                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr826);
                                                                                                                                    }
                                                                                                                                    §§goto(addr795);
                                                                                                                                 }
                                                                                                                                 §§goto(addr804);
                                                                                                                              }
                                                                                                                              §§goto(addr824);
                                                                                                                           }
                                                                                                                           §§goto(addr826);
                                                                                                                        }
                                                                                                                        §§goto(addr814);
                                                                                                                     }
                                                                                                                     §§goto(addr780);
                                                                                                                  }
                                                                                                                  §§goto(addr760);
                                                                                                               }
                                                                                                               §§goto(addr814);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr787);
                                                                                                      }
                                                                                                      §§goto(addr826);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr544);
                                                                                          }
                                                                                          §§goto(addr228);
                                                                                          §§push(Number(§§pop()));
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr228);
                                                                           }
                                                                           §§goto(addr193);
                                                                        }
                                                                        §§goto(addr202);
                                                                     }
                                                                  }
                                                                  §§goto(addr220);
                                                               }
                                                               §§goto(addr212);
                                                            }
                                                            §§goto(addr193);
                                                         }
                                                         §§goto(addr220);
                                                      }
                                                      §§goto(addr212);
                                                   }
                                                }
                                                §§goto(addr190);
                                             }
                                             §§goto(addr185);
                                          }
                                          §§goto(addr190);
                                       }
                                       §§goto(addr181);
                                    }
                                    §§goto(addr190);
                                 case 1:
                                    §§goto(addr706);
                                 case 2:
                                    _loc5_ = param1.§<!L§.m_xf.R;
                                    _loc6_ = param1.§]9§;
                                    §§push(param1.§-'§.m_xf);
                                    if(!(_loc18_ && _loc3_))
                                    {
                                       §§push(this.§?!B§);
                                       if(_loc19_ || param1)
                                       {
                                          §§push(_loc5_.col1);
                                          if(_loc19_)
                                          {
                                             §§push(§§pop().x);
                                             if(_loc19_)
                                             {
                                                §§push(_loc6_.x);
                                                if(_loc19_)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(!_loc18_)
                                                   {
                                                      addr1275:
                                                      §§push(_loc5_.col2);
                                                      if(!_loc18_)
                                                      {
                                                         §§push(§§pop().x);
                                                         if(_loc19_ || _loc2_)
                                                         {
                                                            §§push(_loc6_.y);
                                                            if(!(_loc18_ && param1))
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               if(!(_loc18_ && param1))
                                                               {
                                                                  §§push(§§pop() + §§pop());
                                                                  if(_loc19_)
                                                                  {
                                                                     §§pop().x = §§pop();
                                                                     if(!_loc18_)
                                                                     {
                                                                        addr1314:
                                                                        §§push(this.§?!B§);
                                                                        §§push(_loc5_.col1.y);
                                                                        if(!_loc18_)
                                                                        {
                                                                           §§push(_loc6_.x);
                                                                           if(!_loc18_)
                                                                           {
                                                                              addr1338:
                                                                              §§push(§§pop() * §§pop());
                                                                              if(!_loc18_)
                                                                              {
                                                                                 addr1326:
                                                                                 §§push(_loc5_.col2.y);
                                                                                 if(!(_loc18_ && _loc3_))
                                                                                 {
                                                                                    addr1334:
                                                                                    §§push(§§pop() * _loc6_.y);
                                                                                 }
                                                                              }
                                                                              §§pop().y = §§pop();
                                                                              _loc5_ = param1.§<!L§.m_xf.R;
                                                                              _loc6_ = param1.localPoint;
                                                                              if(!(_loc18_ && param1))
                                                                              {
                                                                                 §§push(param1.§<!L§);
                                                                                 if(_loc19_ || _loc3_)
                                                                                 {
                                                                                    §§push(§§pop().m_xf);
                                                                                    if(!(_loc18_ && this))
                                                                                    {
                                                                                       §§push(§§pop().position);
                                                                                       if(!_loc18_)
                                                                                       {
                                                                                          §§push(§§pop().x);
                                                                                          if(_loc19_)
                                                                                          {
                                                                                             §§push(_loc5_.col1);
                                                                                             if(_loc19_)
                                                                                             {
                                                                                                §§push(§§pop().x);
                                                                                                if(!(_loc18_ && param1))
                                                                                                {
                                                                                                   §§push(_loc6_.x);
                                                                                                   if(_loc19_)
                                                                                                   {
                                                                                                      §§push(§§pop() * §§pop());
                                                                                                      if(_loc19_ || _loc2_)
                                                                                                      {
                                                                                                         §§push(_loc5_.col2);
                                                                                                         if(_loc19_ || _loc3_)
                                                                                                         {
                                                                                                            §§push(§§pop().x);
                                                                                                            if(!_loc18_)
                                                                                                            {
                                                                                                               §§push(_loc6_.y);
                                                                                                               if(!(_loc18_ && _loc3_))
                                                                                                               {
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                  if(_loc19_ || this)
                                                                                                                  {
                                                                                                                     addr1432:
                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                     if(!(_loc18_ && this))
                                                                                                                     {
                                                                                                                        addr1440:
                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                        if(!_loc18_)
                                                                                                                        {
                                                                                                                           §§push(Number(§§pop()));
                                                                                                                           if(!_loc18_)
                                                                                                                           {
                                                                                                                              addr1446:
                                                                                                                              _loc7_ = §§pop();
                                                                                                                              if(!(_loc18_ && _loc3_))
                                                                                                                              {
                                                                                                                                 addr1456:
                                                                                                                                 §§push(param1.§<!L§.m_xf);
                                                                                                                                 if(!_loc18_)
                                                                                                                                 {
                                                                                                                                    addr1460:
                                                                                                                                    §§push(§§pop().position.y);
                                                                                                                                    if(_loc19_ || _loc3_)
                                                                                                                                    {
                                                                                                                                       addr1468:
                                                                                                                                       §§push(_loc5_.col1.y);
                                                                                                                                       if(!_loc18_)
                                                                                                                                       {
                                                                                                                                          addr1473:
                                                                                                                                          §§push(_loc6_.x);
                                                                                                                                          if(!(_loc18_ && param1))
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                             if(!_loc18_)
                                                                                                                                             {
                                                                                                                                                addr1485:
                                                                                                                                                §§push(_loc5_.col2.y);
                                                                                                                                                if(_loc19_ || param1)
                                                                                                                                                {
                                                                                                                                                   addr1498:
                                                                                                                                                   §§push(§§pop() + §§pop() * _loc6_.y);
                                                                                                                                                }
                                                                                                                                                §§goto(addr1498);
                                                                                                                                             }
                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                             if(!(_loc18_ && this))
                                                                                                                                             {
                                                                                                                                                addr1508:
                                                                                                                                                _loc8_ = Number(§§pop());
                                                                                                                                                _loc5_ = param1.§-'§.m_xf.R;
                                                                                                                                                if(!_loc18_)
                                                                                                                                                {
                                                                                                                                                   §§push(0);
                                                                                                                                                   if(_loc19_ || _loc2_)
                                                                                                                                                   {
                                                                                                                                                      _loc2_ = §§pop();
                                                                                                                                                      if(!(_loc18_ && _loc2_))
                                                                                                                                                      {
                                                                                                                                                         addr1533:
                                                                                                                                                         loop91:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc2_);
                                                                                                                                                            addr1738:
                                                                                                                                                            while(§§pop() < param1.§&n§)
                                                                                                                                                            {
                                                                                                                                                               _loc6_ = param1.§ try§[_loc2_].localPoint;
                                                                                                                                                               if(_loc19_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(param1.§-'§);
                                                                                                                                                                  loop73:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop().m_xf);
                                                                                                                                                                     addr1709:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop().position);
                                                                                                                                                                        addr1710:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop().x);
                                                                                                                                                                           addr1711:
                                                                                                                                                                           loop76:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc5_.col1);
                                                                                                                                                                              addr1713:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop().x);
                                                                                                                                                                                 loop78:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc6_.x);
                                                                                                                                                                                    if(_loc19_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                                                                       if(!(_loc18_ && _loc3_))
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc5_.col2);
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop().x);
                                                                                                                                                                                             addr1729:
                                                                                                                                                                                             addr1640:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc6_.y);
                                                                                                                                                                                                addr1731:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                                                                   addr1732:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             §§push(_loc5_.col2);
                                                                                                                                                                                             if(_loc18_ && param1)
                                                                                                                                                                                             {
                                                                                                                                                                                                continue;
                                                                                                                                                                                             }
                                                                                                                                                                                             §§push(§§pop().y);
                                                                                                                                                                                             if(_loc19_ || _loc2_)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr1657:
                                                                                                                                                                                                §§push(_loc6_.y);
                                                                                                                                                                                                if(!(_loc18_ && _loc2_))
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr1667:
                                                                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                                                                   if(_loc19_ || _loc2_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!_loc18_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr1677:
                                                                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                                                                         if(!_loc18_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc18_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue loop78;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§push(§§pop() + §§pop());
                                                                                                                                                                                                            if(!(_loc18_ && _loc3_))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr1689:
                                                                                                                                                                                                               if(!(_loc19_ || _loc2_))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue loop76;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                                                                            }
                                                                                                                                                                                                            if(!(_loc18_ && this))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               _loc4_ = §§pop();
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  this.§'Y§[_loc2_] = (_loc3_ - _loc7_) * this.§?!B§.x + (_loc4_ - _loc8_) * this.§?!B§.y - param1.radius;
                                                                                                                                                                                                                  loop88:
                                                                                                                                                                                                                  while(_loc19_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        this.§@Z§[_loc2_].Set(_loc3_,_loc4_);
                                                                                                                                                                                                                        continue loop88;
                                                                                                                                                                                                                        addr1549:
                                                                                                                                                                                                                        if(false)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           continue;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!(_loc19_ || this))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              continue loop88;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           if(!_loc19_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              break;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           _loc2_++;
                                                                                                                                                                                                                           if(!_loc19_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              continue;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr1549);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        continue loop73;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     continue loop91;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         else
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr1733:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr1733:
                                                                                                                                                                                                         }
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                                                                            addr1735:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               _loc3_ = §§pop();
                                                                                                                                                                                                               continue loop73;
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      else
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§goto(addr1729);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1733);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1732);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1731);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1667);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1733);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1732);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  addr1708:
                                                                                                                                                               }
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(param1.§-'§);
                                                                                                                                                                  if(!(_loc18_ && this))
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop().m_xf);
                                                                                                                                                                     if(_loc19_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop().position);
                                                                                                                                                                        if(!(_loc18_ && param1))
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop().y);
                                                                                                                                                                           if(_loc19_)
                                                                                                                                                                           {
                                                                                                                                                                              if(!_loc18_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc5_.col1);
                                                                                                                                                                                 if(_loc19_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop().y);
                                                                                                                                                                                    if(!(_loc18_ && param1))
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc6_.x);
                                                                                                                                                                                       if(!_loc18_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                                                                          if(!_loc18_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§goto(addr1640);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1677);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1657);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1677);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1713);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1735);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1689);
                                                                                                                                                                        }
                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr1710);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     else
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr1709);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1710);
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr1708);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               continue loop91;
                                                                                                                                                            }
                                                                                                                                                            if(_loc19_ || _loc2_)
                                                                                                                                                            {
                                                                                                                                                               §§push(this.§?!B§);
                                                                                                                                                               if(_loc19_ || _loc2_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(this.§?!B§);
                                                                                                                                                                  if(!_loc18_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop().x);
                                                                                                                                                                     if(_loc19_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(-1);
                                                                                                                                                                        if(_loc19_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                           if(!(_loc18_ && _loc3_))
                                                                                                                                                                           {
                                                                                                                                                                              addr1775:
                                                                                                                                                                              §§pop().x = §§pop();
                                                                                                                                                                              if(!(_loc18_ && this))
                                                                                                                                                                              {
                                                                                                                                                                                 addr1787:
                                                                                                                                                                                 §§push(this.§?!B§);
                                                                                                                                                                                 §§push(this.§?!B§.y);
                                                                                                                                                                                 if(!(_loc18_ && param1))
                                                                                                                                                                                 {
                                                                                                                                                                                    addr1795:
                                                                                                                                                                                    §§push(§§pop() * -1);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§pop().y = §§pop();
                                                                                                                                                                              }
                                                                                                                                                                              break loop92;
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1795);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1775);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1787);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1787);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1738);
                                                                                                                                                }
                                                                                                                                                §§goto(addr1533);
                                                                                                                                             }
                                                                                                                                             §§goto(addr1508);
                                                                                                                                          }
                                                                                                                                          §§goto(addr1498);
                                                                                                                                       }
                                                                                                                                       §§goto(addr1485);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr1508);
                                                                                                                           }
                                                                                                                           §§goto(addr1468);
                                                                                                                        }
                                                                                                                        §§goto(addr1508);
                                                                                                                     }
                                                                                                                     §§goto(addr1473);
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr1498);
                                                                                                         }
                                                                                                         §§goto(addr1485);
                                                                                                      }
                                                                                                      §§goto(addr1440);
                                                                                                   }
                                                                                                   §§goto(addr1432);
                                                                                                }
                                                                                                §§goto(addr1440);
                                                                                             }
                                                                                             §§goto(addr1468);
                                                                                          }
                                                                                          §§goto(addr1446);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr1460);
                                                                                 }
                                                                                 §§goto(addr1456);
                                                                              }
                                                                              §§goto(addr1508);
                                                                           }
                                                                           §§goto(addr1338);
                                                                           §§push(§§pop() + §§pop());
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr1338);
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr1334);
                                                      }
                                                      §§goto(addr1326);
                                                   }
                                                   §§goto(addr1338);
                                                }
                                                §§goto(addr1334);
                                             }
                                             §§goto(addr1275);
                                          }
                                       }
                                       §§goto(addr1314);
                                    }
                                    §§goto(addr1338);
                              }
                              return;
                              addr1890:
                           }
                           else
                           {
                              addr1841:
                              §§push(_loc17_);
                              if(_loc19_)
                              {
                                 addr1844:
                                 if(§§pop() === §§pop())
                                 {
                                    if(!(_loc18_ && this))
                                    {
                                       addr1852:
                                       §§push(1);
                                       if(!(_loc19_ || this))
                                       {
                                          addr1865:
                                          if(§§pop() !== _loc17_)
                                          {
                                             §§goto(addr1890);
                                             §§push(3);
                                          }
                                       }
                                       §§goto(addr1890);
                                    }
                                    §§push(2);
                                    if(_loc18_ && _loc2_)
                                    {
                                    }
                                    §§goto(addr1890);
                                 }
                                 else
                                 {
                                    §§push(b2Manifold.§&!5§);
                                    if(_loc19_)
                                    {
                                       §§goto(addr1865);
                                    }
                                 }
                                 §§goto(addr1890);
                              }
                              §§goto(addr1865);
                           }
                           §§goto(addr1890);
                        }
                        §§goto(addr1852);
                     }
                     else
                     {
                        §§push(b2Manifold.§>E§);
                        if(!_loc18_)
                        {
                           §§goto(addr1841);
                        }
                        §§goto(addr1890);
                     }
                  }
                  §§goto(addr1844);
               }
               §§goto(addr1890);
            }
            §§goto(addr1852);
         }
         §§goto(addr1891);
      }
   }
}
