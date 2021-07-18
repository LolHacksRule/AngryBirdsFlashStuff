package §_-wC§
{
   import §_-Xz§.§_-PG§;
   import §_-Xz§.§_-Ps§;
   import flash.display.Shape;
   import flash.events.Event;
   import flash.utils.getTimer;
   
   public class §_-f§ implements §_-Ps§
   {
      
      private static var §_-u2§:Shape;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §_-u2§ = new Shape();
         }
      }
      
      private var §_-gv§:Vector.<§_-PG§>;
      
      private var §_-vW§:uint = 0;
      
      private var §_-CP§:Number;
      
      private var §_-cP§:§_-PG§ = null;
      
      public function §_-f§()
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§_-PG§ = null;
         if(!_loc5_)
         {
            super();
            if(_loc4_ || _loc2_)
            {
               this.§_-gv§ = new Vector.<§_-PG§>(10,true);
            }
         }
         var _loc1_:§_-PG§ = null;
         var _loc2_:* = uint(0);
         while(_loc2_ < 10)
         {
            _loc3_ = new §_-PG§();
            if(_loc4_)
            {
               if(_loc1_ != null)
               {
                  if(!_loc5_)
                  {
                     _loc1_.§_-2E§ = _loc3_;
                     if(_loc5_)
                     {
                     }
                     addr69:
                     _loc1_ = _loc3_;
                     if(_loc4_ || _loc3_)
                     {
                        this.§_-gv§[_loc2_] = _loc3_;
                        if(!(_loc5_ && this))
                        {
                           §§push(_loc2_);
                           if(_loc4_)
                           {
                              §§push(uint(§§pop() + 1));
                           }
                           _loc2_ = §§pop();
                        }
                     }
                     continue;
                  }
                  _loc3_.§_-zJ§ = _loc1_;
               }
            }
            §§goto(addr69);
         }
      }
      
      function update(param1:Event) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         §§push(this.§_-CP§ = getTimer() / 1000);
         if(_loc10_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         var _loc3_:uint = 8 - this.§_-vW§ % 8;
         var _loc4_:§_-PG§ = this.§_-gv§[0];
         var _loc5_:§_-PG§ = this.§_-gv§[_loc3_];
         var _loc6_:§_-PG§ = null;
         if(!_loc9_)
         {
            if((_loc5_.§_-2E§ = this.§_-cP§) != null)
            {
               if(_loc10_ || _loc3_)
               {
                  addr70:
                  this.§_-cP§.§_-zJ§ = _loc5_;
               }
            }
            loop0:
            while(true)
            {
               §§push(_loc4_.§_-2E§);
               while(§§pop() != null)
               {
                  §§push(_loc4_.§_-2E§);
                  if(_loc9_ && _loc2_)
                  {
                     continue;
                  }
                  if((_loc4_ = §§pop()).tick(_loc2_))
                  {
                     if(_loc10_ || param1)
                     {
                        §§push(_loc4_.§_-zJ§);
                        if(!_loc9_)
                        {
                           if(§§pop() != null)
                           {
                              if(!_loc9_)
                              {
                                 addr109:
                                 §§push(_loc4_.§_-zJ§);
                                 if(_loc10_ || param1)
                                 {
                                    §§pop().§_-2E§ = _loc4_.§_-2E§;
                                    if(_loc10_)
                                    {
                                       addr123:
                                       §§push(_loc4_.§_-2E§);
                                       if(!(_loc9_ && _loc2_))
                                       {
                                          if(§§pop() != null)
                                          {
                                             if(_loc10_)
                                             {
                                                addr136:
                                                §§push(_loc4_.§_-2E§);
                                                if(_loc10_ || this)
                                                {
                                                   addr145:
                                                   §§pop().§_-zJ§ = _loc4_.§_-zJ§;
                                                   addr150:
                                                   _loc6_ = _loc4_.§_-zJ§;
                                                   addr148:
                                                   if(_loc10_ || _loc2_)
                                                   {
                                                      _loc4_.§_-2E§ = null;
                                                      if(!(_loc9_ && param1))
                                                      {
                                                         _loc4_.§_-zJ§ = null;
                                                      }
                                                   }
                                                   _loc4_ = _loc6_;
                                                   if(_loc10_ || _loc2_)
                                                   {
                                                      var _loc7_:*;
                                                      var _loc8_:* = (_loc7_ = this).§_-vW§ - 1;
                                                      if(!_loc9_)
                                                      {
                                                         _loc7_.§_-vW§ = _loc8_;
                                                      }
                                                      addr195:
                                                      §§push(_loc4_.§_-2E§);
                                                   }
                                                   §§goto(addr195);
                                                }
                                                if((_loc4_ = §§pop()).tick(_loc2_))
                                                {
                                                   if(!_loc9_)
                                                   {
                                                      §§push(_loc4_.§_-zJ§);
                                                      if(!_loc9_)
                                                      {
                                                         if(§§pop() != null)
                                                         {
                                                            if(!_loc9_)
                                                            {
                                                               §§push(_loc4_.§_-zJ§);
                                                               if(_loc10_)
                                                               {
                                                                  addr220:
                                                                  §§pop().§_-2E§ = _loc4_.§_-2E§;
                                                                  if(_loc10_)
                                                                  {
                                                                     addr225:
                                                                     §§push(_loc4_.§_-2E§);
                                                                     if(_loc10_)
                                                                     {
                                                                        if(§§pop() != null)
                                                                        {
                                                                           if(_loc10_)
                                                                           {
                                                                              §§push(_loc4_.§_-2E§);
                                                                              if(!(_loc9_ && _loc2_))
                                                                              {
                                                                                 addr242:
                                                                                 §§pop().§_-zJ§ = _loc4_.§_-zJ§;
                                                                                 _loc6_ = _loc4_.§_-zJ§;
                                                                                 addr245:
                                                                                 if(_loc10_)
                                                                                 {
                                                                                    _loc4_.§_-2E§ = null;
                                                                                    if(_loc10_ || param1)
                                                                                    {
                                                                                       addr261:
                                                                                       _loc4_.§_-zJ§ = null;
                                                                                    }
                                                                                    _loc4_ = _loc6_;
                                                                                    if(!(_loc9_ && this))
                                                                                    {
                                                                                       _loc8_ = (_loc7_ = this).§_-vW§ - 1;
                                                                                       if(!(_loc9_ && _loc2_))
                                                                                       {
                                                                                          _loc7_.§_-vW§ = _loc8_;
                                                                                       }
                                                                                       addr292:
                                                                                       if((_loc4_ = _loc4_.§_-2E§).tick(_loc2_))
                                                                                       {
                                                                                          if(!(_loc9_ && _loc2_))
                                                                                          {
                                                                                             §§push(_loc4_.§_-zJ§);
                                                                                             if(_loc10_)
                                                                                             {
                                                                                                if(§§pop() != null)
                                                                                                {
                                                                                                   if(!(_loc9_ && param1))
                                                                                                   {
                                                                                                      §§push(_loc4_.§_-zJ§);
                                                                                                      if(_loc10_ || _loc2_)
                                                                                                      {
                                                                                                         addr332:
                                                                                                         §§pop().§_-2E§ = _loc4_.§_-2E§;
                                                                                                         if(_loc10_)
                                                                                                         {
                                                                                                            addr337:
                                                                                                            §§push(_loc4_.§_-2E§);
                                                                                                            if(!(_loc9_ && param1))
                                                                                                            {
                                                                                                               if(§§pop() != null)
                                                                                                               {
                                                                                                                  if(!(_loc9_ && this))
                                                                                                                  {
                                                                                                                     §§push(_loc4_.§_-2E§);
                                                                                                                     if(!_loc9_)
                                                                                                                     {
                                                                                                                        addr359:
                                                                                                                        §§pop().§_-zJ§ = _loc4_.§_-zJ§;
                                                                                                                        addr364:
                                                                                                                        _loc6_ = _loc4_.§_-zJ§;
                                                                                                                        addr362:
                                                                                                                        if(!(_loc9_ && param1))
                                                                                                                        {
                                                                                                                           _loc4_.§_-2E§ = null;
                                                                                                                           if(_loc10_)
                                                                                                                           {
                                                                                                                              _loc4_.§_-zJ§ = null;
                                                                                                                           }
                                                                                                                        }
                                                                                                                        _loc4_ = _loc6_;
                                                                                                                        if(!(_loc9_ && _loc3_))
                                                                                                                        {
                                                                                                                           _loc8_ = (_loc7_ = this).§_-vW§ - 1;
                                                                                                                           if(_loc10_)
                                                                                                                           {
                                                                                                                              _loc7_.§_-vW§ = _loc8_;
                                                                                                                           }
                                                                                                                           addr404:
                                                                                                                           §§push(_loc4_.§_-2E§);
                                                                                                                        }
                                                                                                                        §§goto(addr404);
                                                                                                                     }
                                                                                                                     if((_loc4_ = §§pop()).tick(_loc2_))
                                                                                                                     {
                                                                                                                        if(!(_loc9_ && param1))
                                                                                                                        {
                                                                                                                           §§push(_loc4_.§_-zJ§);
                                                                                                                           if(_loc10_)
                                                                                                                           {
                                                                                                                              if(§§pop() != null)
                                                                                                                              {
                                                                                                                                 if(!(_loc9_ && _loc2_))
                                                                                                                                 {
                                                                                                                                    addr435:
                                                                                                                                    §§push(_loc4_.§_-zJ§);
                                                                                                                                    if(!_loc9_)
                                                                                                                                    {
                                                                                                                                       addr439:
                                                                                                                                       §§pop().§_-2E§ = _loc4_.§_-2E§;
                                                                                                                                       if(_loc10_ || this)
                                                                                                                                       {
                                                                                                                                          addr449:
                                                                                                                                          §§push(_loc4_.§_-2E§);
                                                                                                                                          if(_loc10_)
                                                                                                                                          {
                                                                                                                                             if(§§pop() != null)
                                                                                                                                             {
                                                                                                                                                if(_loc10_ || _loc2_)
                                                                                                                                                {
                                                                                                                                                   addr462:
                                                                                                                                                   §§push(_loc4_.§_-2E§);
                                                                                                                                                   if(_loc10_ || param1)
                                                                                                                                                   {
                                                                                                                                                      addr471:
                                                                                                                                                      §§pop().§_-zJ§ = _loc4_.§_-zJ§;
                                                                                                                                                      addr476:
                                                                                                                                                      _loc6_ = _loc4_.§_-zJ§;
                                                                                                                                                      addr474:
                                                                                                                                                      if(!(_loc9_ && this))
                                                                                                                                                      {
                                                                                                                                                         _loc4_.§_-2E§ = null;
                                                                                                                                                         if(_loc10_)
                                                                                                                                                         {
                                                                                                                                                            _loc4_.§_-zJ§ = null;
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      _loc4_ = _loc6_;
                                                                                                                                                      if(_loc10_ || this)
                                                                                                                                                      {
                                                                                                                                                         _loc8_ = (_loc7_ = this).§_-vW§ - 1;
                                                                                                                                                         if(!_loc9_)
                                                                                                                                                         {
                                                                                                                                                            _loc7_.§_-vW§ = _loc8_;
                                                                                                                                                         }
                                                                                                                                                         addr523:
                                                                                                                                                         §§push(_loc4_.§_-2E§);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr523);
                                                                                                                                                   }
                                                                                                                                                   if((_loc4_ = §§pop()).tick(_loc2_))
                                                                                                                                                   {
                                                                                                                                                      if(_loc10_)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc4_.§_-zJ§);
                                                                                                                                                         if(!_loc9_)
                                                                                                                                                         {
                                                                                                                                                            if(§§pop() != null)
                                                                                                                                                            {
                                                                                                                                                               if(_loc10_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc4_.§_-zJ§);
                                                                                                                                                                  if(!(_loc9_ && param1))
                                                                                                                                                                  {
                                                                                                                                                                     §§pop().§_-2E§ = _loc4_.§_-2E§;
                                                                                                                                                                     if(_loc10_ || _loc3_)
                                                                                                                                                                     {
                                                                                                                                                                        addr563:
                                                                                                                                                                        §§push(_loc4_.§_-2E§);
                                                                                                                                                                        if(_loc10_ || _loc3_)
                                                                                                                                                                        {
                                                                                                                                                                           if(§§pop() != null)
                                                                                                                                                                           {
                                                                                                                                                                              if(!(_loc9_ && this))
                                                                                                                                                                              {
                                                                                                                                                                                 addr581:
                                                                                                                                                                                 §§push(_loc4_.§_-2E§);
                                                                                                                                                                                 if(_loc10_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§pop().§_-zJ§ = _loc4_.§_-zJ§;
                                                                                                                                                                                    addr590:
                                                                                                                                                                                    _loc6_ = _loc4_.§_-zJ§;
                                                                                                                                                                                    addr588:
                                                                                                                                                                                    if(!_loc9_)
                                                                                                                                                                                    {
                                                                                                                                                                                       _loc4_.§_-2E§ = null;
                                                                                                                                                                                       if(!(_loc9_ && _loc3_))
                                                                                                                                                                                       {
                                                                                                                                                                                          _loc4_.§_-zJ§ = null;
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    _loc4_ = _loc6_;
                                                                                                                                                                                    if(_loc10_)
                                                                                                                                                                                    {
                                                                                                                                                                                       _loc8_ = (_loc7_ = this).§_-vW§ - 1;
                                                                                                                                                                                       if(!(_loc9_ && param1))
                                                                                                                                                                                       {
                                                                                                                                                                                          _loc7_.§_-vW§ = _loc8_;
                                                                                                                                                                                       }
                                                                                                                                                                                       addr630:
                                                                                                                                                                                       §§push(_loc4_.§_-2E§);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr630);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr588);
                                                                                                                                                                        }
                                                                                                                                                                        if((_loc4_ = §§pop()).tick(_loc2_))
                                                                                                                                                                        {
                                                                                                                                                                           if(!(_loc9_ && _loc3_))
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc4_.§_-zJ§);
                                                                                                                                                                              if(!(_loc9_ && _loc3_))
                                                                                                                                                                              {
                                                                                                                                                                                 if(§§pop() != null)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!_loc9_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr661:
                                                                                                                                                                                       §§push(_loc4_.§_-zJ§);
                                                                                                                                                                                       if(_loc10_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§pop().§_-2E§ = _loc4_.§_-2E§;
                                                                                                                                                                                          if(_loc10_ || _loc3_)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr675:
                                                                                                                                                                                             §§push(_loc4_.§_-2E§);
                                                                                                                                                                                             if(_loc10_ || this)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(§§pop() != null)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!(_loc9_ && param1))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr693:
                                                                                                                                                                                                      §§push(_loc4_.§_-2E§);
                                                                                                                                                                                                      if(_loc10_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr697:
                                                                                                                                                                                                         §§pop().§_-zJ§ = _loc4_.§_-zJ§;
                                                                                                                                                                                                         _loc6_ = _loc4_.§_-zJ§;
                                                                                                                                                                                                         addr700:
                                                                                                                                                                                                         if(_loc10_ || this)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            _loc4_.§_-2E§ = null;
                                                                                                                                                                                                            if(_loc10_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr716:
                                                                                                                                                                                                               _loc4_.§_-zJ§ = null;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            _loc4_ = _loc6_;
                                                                                                                                                                                                            if(_loc10_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               _loc8_ = (_loc7_ = this).§_-vW§ - 1;
                                                                                                                                                                                                               if(!_loc9_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  _loc7_.§_-vW§ = _loc8_;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr737:
                                                                                                                                                                                                               if((_loc4_ = _loc4_.§_-2E§).tick(_loc2_))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc10_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(_loc4_.§_-zJ§);
                                                                                                                                                                                                                     if(_loc10_ || _loc3_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(§§pop() != null)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!(_loc9_ && this))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(_loc4_.§_-zJ§);
                                                                                                                                                                                                                              if(_loc10_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§pop().§_-2E§ = _loc4_.§_-2E§;
                                                                                                                                                                                                                                 if(!_loc10_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 addr785:
                                                                                                                                                                                                                                 §§push(_loc4_.§_-2E§);
                                                                                                                                                                                                                                 if(!(_loc9_ && this))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr794:
                                                                                                                                                                                                                                    §§pop().§_-zJ§ = _loc4_.§_-zJ§;
                                                                                                                                                                                                                                    addr799:
                                                                                                                                                                                                                                    _loc6_ = _loc4_.§_-zJ§;
                                                                                                                                                                                                                                    if(!_loc9_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       _loc4_.§_-2E§ = null;
                                                                                                                                                                                                                                       if(!(_loc9_ && this))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr813:
                                                                                                                                                                                                                                          _loc4_.§_-zJ§ = null;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       _loc4_ = _loc6_;
                                                                                                                                                                                                                                       if(_loc10_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          _loc8_ = (_loc7_ = this).§_-vW§ - 1;
                                                                                                                                                                                                                                          if(!_loc9_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             _loc7_.§_-vW§ = _loc8_;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          addr834:
                                                                                                                                                                                                                                          if(!(_loc4_ = _loc4_.§_-2E§).tick(_loc2_))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             continue loop0;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          if(_loc10_ || this)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(_loc4_.§_-zJ§);
                                                                                                                                                                                                                                             if(_loc10_ || _loc2_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(§§pop() != null)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(_loc10_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      addr865:
                                                                                                                                                                                                                                                      §§push(_loc4_.§_-zJ§);
                                                                                                                                                                                                                                                      if(!(_loc9_ && this))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§pop().§_-2E§ = _loc4_.§_-2E§;
                                                                                                                                                                                                                                                         if(_loc10_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            addr879:
                                                                                                                                                                                                                                                            §§push(_loc4_.§_-2E§);
                                                                                                                                                                                                                                                            if(_loc10_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(§§pop() != null)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  addr892:
                                                                                                                                                                                                                                                                  addr894:
                                                                                                                                                                                                                                                                  if(!_loc9_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(_loc4_.§_-2E§);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  _loc6_ = _loc4_.§_-zJ§;
                                                                                                                                                                                                                                                                  if(!_loc9_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     _loc4_.§_-2E§ = null;
                                                                                                                                                                                                                                                                     if(!_loc9_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        _loc4_.§_-zJ§ = null;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  _loc4_ = _loc6_;
                                                                                                                                                                                                                                                                  if(!(_loc9_ && param1))
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     _loc8_ = (_loc7_ = this).§_-vW§ - 1;
                                                                                                                                                                                                                                                                     if(!(_loc9_ && param1))
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        _loc7_.§_-vW§ = _loc8_;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  continue loop0;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr892);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§pop().§_-zJ§ = _loc4_.§_-zJ§;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr892);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr894);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr879);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr892);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr865);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr834);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr813);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr834);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr799);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr785);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§push(_loc4_.§_-2E§);
                                                                                                                                                                                                                        if(_loc10_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(§§pop() != null)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(!_loc9_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§goto(addr785);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr799);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr794);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr785);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr834);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr737);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr716);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr737);
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr700);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr697);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr697);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr693);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr675);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr697);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr661);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr737);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr590);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr581);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr563);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr590);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr630);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr474);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr471);
                                                                                                                                    }
                                                                                                                                    §§goto(addr476);
                                                                                                                                 }
                                                                                                                                 §§goto(addr462);
                                                                                                                              }
                                                                                                                              §§goto(addr449);
                                                                                                                           }
                                                                                                                           §§goto(addr439);
                                                                                                                        }
                                                                                                                        §§goto(addr435);
                                                                                                                     }
                                                                                                                     §§goto(addr523);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr362);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr359);
                                                                                                      }
                                                                                                      §§goto(addr364);
                                                                                                   }
                                                                                                   §§goto(addr359);
                                                                                                }
                                                                                                §§goto(addr337);
                                                                                             }
                                                                                             §§goto(addr332);
                                                                                          }
                                                                                          §§goto(addr337);
                                                                                       }
                                                                                       §§goto(addr404);
                                                                                    }
                                                                                    §§goto(addr292);
                                                                                 }
                                                                                 §§goto(addr261);
                                                                              }
                                                                              §§goto(addr292);
                                                                           }
                                                                        }
                                                                        §§goto(addr245);
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr242);
                                                         }
                                                         §§goto(addr225);
                                                      }
                                                      §§goto(addr220);
                                                   }
                                                   §§goto(addr242);
                                                }
                                                §§goto(addr292);
                                             }
                                          }
                                          §§goto(addr148);
                                       }
                                       §§goto(addr145);
                                    }
                                 }
                                 §§goto(addr150);
                              }
                              §§goto(addr136);
                           }
                           §§goto(addr123);
                        }
                        §§goto(addr145);
                     }
                     §§goto(addr109);
                  }
                  §§goto(addr195);
               }
               if(_loc10_ || _loc2_)
               {
                  if((this.§_-cP§ = _loc5_.§_-2E§) != null)
                  {
                     if(_loc10_ || param1)
                     {
                        §§goto(addr962);
                     }
                  }
                  §§goto(addr975);
               }
               addr962:
               this.§_-cP§.§_-zJ§ = null;
               if(!_loc9_)
               {
                  addr975:
                  _loc5_.§_-2E§ = this.§_-gv§[_loc3_ + 1];
               }
               return;
            }
         }
         §§goto(addr70);
      }
      
      public function start() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§_-CP§ = getTimer() / 1000;
            if(!_loc2_)
            {
               §_-u2§.addEventListener(Event.ENTER_FRAME,this.update);
            }
         }
      }
      
      public function §_-TY§(param1:§_-PG§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§_-PG§ = this.§_-cP§;
         for(; _loc2_ != null; _loc2_ = §§pop())
         {
            if(_loc2_ == param1)
            {
               §§push(_loc2_.§_-zJ§);
               if(_loc6_ || this)
               {
                  if(§§pop() != null)
                  {
                     addr36:
                     _loc2_.§_-zJ§.§_-2E§ = _loc2_.§_-2E§;
                     if(_loc6_)
                     {
                        _loc2_.§_-2E§ = null;
                        addr63:
                        §§push(_loc2_.§_-2E§);
                        if(!_loc6_)
                        {
                           continue;
                        }
                        if(§§pop() != null)
                        {
                           if(_loc6_ || _loc2_)
                           {
                              §§push(_loc2_.§_-2E§);
                              if(!_loc6_)
                              {
                                 continue;
                              }
                              §§pop().§_-zJ§ = _loc2_.§_-zJ§;
                              _loc2_.§_-zJ§ = null;
                           }
                           break;
                        }
                     }
                     break;
                  }
                  this.§_-cP§ = _loc2_.§_-2E§;
                  if(!(_loc5_ && _loc3_))
                  {
                     §§goto(addr63);
                  }
                  var _loc3_:*;
                  var _loc4_:* = (_loc3_ = this).§_-vW§ - 1;
                  if(_loc6_ || this)
                  {
                     _loc3_.§_-vW§ = _loc4_;
                  }
                  if(_loc5_ && _loc2_)
                  {
                     break;
                  }
                  addr118:
                  §§push(_loc2_.§_-2E§);
                  continue;
               }
               §§goto(addr36);
            }
            §§goto(addr118);
         }
      }
      
      public function get time() : Number
      {
         return this.§_-CP§;
      }
      
      public function stop() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            §_-u2§.removeEventListener(Event.ENTER_FRAME,this.update);
         }
      }
      
      public function §_-lE§(param1:§_-PG§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            §§push(param1.§_-2E§ == null);
            if(_loc5_ || param1)
            {
               §§push(!§§pop());
               if(_loc5_ || _loc3_)
               {
                  if(!§§pop())
                  {
                     if(!_loc4_)
                     {
                        addr39:
                        §§pop();
                        if(!(_loc4_ && this))
                        {
                           §§push(param1.§_-zJ§);
                           if(_loc5_ || param1)
                           {
                              §§push(null);
                              if(_loc5_ || _loc3_)
                              {
                                 §§push(§§pop() == §§pop());
                                 if(!(_loc4_ && _loc2_))
                                 {
                                    addr73:
                                    if(!§§pop())
                                    {
                                       §§goto(addr74);
                                    }
                                    else
                                    {
                                       §§push(this.§_-cP§);
                                       if(!(_loc4_ && _loc3_))
                                       {
                                          if(§§pop() != null)
                                          {
                                             §§push(this.§_-cP§);
                                             if(_loc5_ || this)
                                             {
                                                §§push(§§pop().§_-zJ§);
                                                if(_loc5_ || this)
                                                {
                                                   addr111:
                                                   if(§§pop() != null)
                                                   {
                                                      §§push(this.§_-cP§);
                                                      if(_loc5_)
                                                      {
                                                         addr117:
                                                         §§pop().§_-zJ§.§_-2E§ = param1;
                                                         param1.§_-zJ§ = this.§_-cP§.§_-zJ§;
                                                      }
                                                      §§goto(addr130);
                                                   }
                                                   param1.§_-2E§ = this.§_-cP§;
                                                   addr130:
                                                   §§pop().§_-zJ§ = param1;
                                                   addr132:
                                                   this.§_-cP§ = param1;
                                                   if(_loc5_ || this)
                                                   {
                                                      addr142:
                                                      var _loc2_:*;
                                                      var _loc3_:* = (_loc2_ = this).§_-vW§ + 1;
                                                      if(!(_loc4_ && param1))
                                                      {
                                                         _loc2_.§_-vW§ = _loc3_;
                                                      }
                                                   }
                                                   return;
                                                   §§push(this.§_-cP§);
                                                }
                                             }
                                             §§goto(addr117);
                                          }
                                          §§goto(addr132);
                                       }
                                       §§goto(addr130);
                                    }
                                 }
                                 §§goto(addr73);
                              }
                              §§goto(addr111);
                           }
                           §§goto(addr117);
                        }
                        §§goto(addr142);
                     }
                  }
               }
               §§goto(addr73);
            }
            §§goto(addr39);
         }
         addr74:
      }
   }
}
