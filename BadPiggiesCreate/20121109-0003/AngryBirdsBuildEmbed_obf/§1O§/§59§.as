package §1O§
{
   import §4!7§.§%!m§;
   import §4!7§.§,u§;
   import flash.display.Shape;
   import flash.events.Event;
   import flash.utils.getTimer;
   
   public class §59§ implements §%!m§
   {
      
      private static var §^!§:Shape;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §^!§ = new Shape();
         }
      }
      
      private var §&w§:Vector.<§,u§>;
      
      private var §4q§:uint = 0;
      
      private var §8!E§:Number;
      
      private var §,=§:§,u§ = null;
      
      public function §59§()
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§,u§ = null;
         if(!(_loc5_ && this))
         {
            super();
            if(!_loc5_)
            {
               this.§&w§ = new Vector.<§,u§>(10,true);
            }
         }
         var _loc1_:§,u§ = null;
         var _loc2_:* = uint(0);
         while(_loc2_ < 10)
         {
            _loc3_ = new §,u§();
            if(!(_loc5_ && _loc2_))
            {
               if(_loc1_ != null)
               {
                  if(!_loc5_)
                  {
                     addr72:
                     _loc1_.§^e§ = _loc3_;
                     if(!_loc5_)
                     {
                        _loc3_.§>S§ = _loc1_;
                     }
                  }
               }
               _loc1_ = _loc3_;
               if(!_loc5_)
               {
                  this.§&w§[_loc2_] = _loc3_;
                  if(!(_loc5_ && _loc2_))
                  {
                     §§push(_loc2_);
                     if(!(_loc5_ && _loc2_))
                     {
                        §§push(uint(§§pop() + 1));
                     }
                     _loc2_ = §§pop();
                  }
               }
               continue;
            }
            §§goto(addr72);
         }
      }
      
      function update(param1:Event) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         §§push(this.§8!E§ = getTimer() / 1000);
         if(!_loc9_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         var _loc3_:uint = 8 - this.§4q§ % 8;
         var _loc4_:§,u§ = this.§&w§[0];
         var _loc5_:§,u§ = this.§&w§[_loc3_];
         var _loc6_:§,u§ = null;
         if(_loc10_ || _loc3_)
         {
            if((_loc5_.§^e§ = this.§,=§) != null)
            {
               if(!_loc9_)
               {
                  this.§,=§.§>S§ = _loc5_;
               }
            }
         }
         loop0:
         while(true)
         {
            §§push(_loc4_.§^e§);
            while(§§pop() != null)
            {
               §§push(_loc4_.§^e§);
               if(!(_loc10_ || _loc3_))
               {
                  continue;
               }
               if((_loc4_ = §§pop()).tick(_loc2_))
               {
                  if(_loc10_)
                  {
                     §§push(_loc4_.§>S§);
                     if(!(_loc9_ && _loc2_))
                     {
                        if(§§pop() != null)
                        {
                           if(!_loc9_)
                           {
                              §§push(_loc4_.§>S§);
                              if(_loc10_)
                              {
                                 addr116:
                                 §§pop().§^e§ = _loc4_.§^e§;
                                 if(_loc10_ || _loc3_)
                                 {
                                    addr126:
                                    §§push(_loc4_.§^e§);
                                    if(!_loc9_)
                                    {
                                       if(§§pop() != null)
                                       {
                                          if(_loc10_)
                                          {
                                             addr134:
                                             §§push(_loc4_.§^e§);
                                             if(_loc10_)
                                             {
                                                §§pop().§>S§ = _loc4_.§>S§;
                                                addr143:
                                                _loc6_ = _loc4_.§>S§;
                                                addr141:
                                                if(_loc10_)
                                                {
                                                   _loc4_.§^e§ = null;
                                                   if(_loc10_ || param1)
                                                   {
                                                      addr157:
                                                      _loc4_.§>S§ = null;
                                                   }
                                                   _loc4_ = _loc6_;
                                                   if(!(_loc9_ && _loc3_))
                                                   {
                                                      var _loc7_:*;
                                                      var _loc8_:* = (_loc7_ = this).§4q§ - 1;
                                                      if(!(_loc9_ && _loc2_))
                                                      {
                                                         _loc7_.§4q§ = _loc8_;
                                                      }
                                                      addr188:
                                                      if((_loc4_ = _loc4_.§^e§).tick(_loc2_))
                                                      {
                                                         if(!(_loc9_ && _loc3_))
                                                         {
                                                            §§push(_loc4_.§>S§);
                                                            if(_loc10_)
                                                            {
                                                               if(§§pop() != null)
                                                               {
                                                                  if(!(_loc9_ && _loc3_))
                                                                  {
                                                                     §§push(_loc4_.§>S§);
                                                                     if(!(_loc9_ && _loc2_))
                                                                     {
                                                                        §§pop().§^e§ = _loc4_.§^e§;
                                                                        if(_loc10_)
                                                                        {
                                                                           addr233:
                                                                           §§push(_loc4_.§^e§);
                                                                           if(_loc10_ || _loc3_)
                                                                           {
                                                                              if(§§pop() != null)
                                                                              {
                                                                                 if(_loc10_ || param1)
                                                                                 {
                                                                                    addr251:
                                                                                    §§push(_loc4_.§^e§);
                                                                                    if(!(_loc9_ && this))
                                                                                    {
                                                                                       addr260:
                                                                                       §§pop().§>S§ = _loc4_.§>S§;
                                                                                       _loc6_ = _loc4_.§>S§;
                                                                                       addr263:
                                                                                       if(!_loc9_)
                                                                                       {
                                                                                          _loc4_.§^e§ = null;
                                                                                          if(!(_loc9_ && param1))
                                                                                          {
                                                                                             addr279:
                                                                                             _loc4_.§>S§ = null;
                                                                                          }
                                                                                          _loc4_ = _loc6_;
                                                                                          if(!(_loc9_ && _loc2_))
                                                                                          {
                                                                                             _loc8_ = (_loc7_ = this).§4q§ - 1;
                                                                                             if(!(_loc9_ && _loc2_))
                                                                                             {
                                                                                                _loc7_.§4q§ = _loc8_;
                                                                                             }
                                                                                             addr310:
                                                                                             if((_loc4_ = _loc4_.§^e§).tick(_loc2_))
                                                                                             {
                                                                                                if(_loc10_ || this)
                                                                                                {
                                                                                                   §§push(_loc4_.§>S§);
                                                                                                   if(!_loc9_)
                                                                                                   {
                                                                                                      if(§§pop() != null)
                                                                                                      {
                                                                                                         if(!_loc9_)
                                                                                                         {
                                                                                                            §§push(_loc4_.§>S§);
                                                                                                            if(!(_loc9_ && this))
                                                                                                            {
                                                                                                               addr345:
                                                                                                               §§pop().§^e§ = _loc4_.§^e§;
                                                                                                               if(_loc10_)
                                                                                                               {
                                                                                                                  addr350:
                                                                                                                  §§push(_loc4_.§^e§);
                                                                                                                  if(_loc10_ || this)
                                                                                                                  {
                                                                                                                     if(§§pop() != null)
                                                                                                                     {
                                                                                                                        if(!(_loc9_ && _loc3_))
                                                                                                                        {
                                                                                                                           addr368:
                                                                                                                           §§push(_loc4_.§^e§);
                                                                                                                           if(!(_loc9_ && this))
                                                                                                                           {
                                                                                                                              addr377:
                                                                                                                              §§pop().§>S§ = _loc4_.§>S§;
                                                                                                                              addr382:
                                                                                                                              _loc6_ = _loc4_.§>S§;
                                                                                                                              addr380:
                                                                                                                              if(!(_loc9_ && _loc2_))
                                                                                                                              {
                                                                                                                                 _loc4_.§^e§ = null;
                                                                                                                                 if(_loc10_ || param1)
                                                                                                                                 {
                                                                                                                                    _loc4_.§>S§ = null;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              _loc4_ = _loc6_;
                                                                                                                              if(!_loc9_)
                                                                                                                              {
                                                                                                                                 _loc8_ = (_loc7_ = this).§4q§ - 1;
                                                                                                                                 if(!_loc9_)
                                                                                                                                 {
                                                                                                                                    _loc7_.§4q§ = _loc8_;
                                                                                                                                 }
                                                                                                                                 addr422:
                                                                                                                                 §§push(_loc4_.§^e§);
                                                                                                                              }
                                                                                                                              §§goto(addr422);
                                                                                                                           }
                                                                                                                           if((_loc4_ = §§pop()).tick(_loc2_))
                                                                                                                           {
                                                                                                                              if(_loc10_ || _loc2_)
                                                                                                                              {
                                                                                                                                 §§push(_loc4_.§>S§);
                                                                                                                                 if(!(_loc9_ && this))
                                                                                                                                 {
                                                                                                                                    if(§§pop() != null)
                                                                                                                                    {
                                                                                                                                       if(_loc10_)
                                                                                                                                       {
                                                                                                                                          §§push(_loc4_.§>S§);
                                                                                                                                          if(!_loc9_)
                                                                                                                                          {
                                                                                                                                             addr457:
                                                                                                                                             §§pop().§^e§ = _loc4_.§^e§;
                                                                                                                                             if(_loc10_)
                                                                                                                                             {
                                                                                                                                                addr472:
                                                                                                                                                §§push(_loc4_.§^e§);
                                                                                                                                                if(_loc10_)
                                                                                                                                                {
                                                                                                                                                   if(§§pop() != null)
                                                                                                                                                   {
                                                                                                                                                      if(_loc10_)
                                                                                                                                                      {
                                                                                                                                                         addr480:
                                                                                                                                                         §§push(_loc4_.§^e§);
                                                                                                                                                         if(!(_loc9_ && this))
                                                                                                                                                         {
                                                                                                                                                            §§pop().§>S§ = _loc4_.§>S§;
                                                                                                                                                         }
                                                                                                                                                         addr541:
                                                                                                                                                         if((_loc4_ = §§pop()).tick(_loc2_))
                                                                                                                                                         {
                                                                                                                                                            if(_loc10_)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc4_.§>S§);
                                                                                                                                                               if(!_loc9_)
                                                                                                                                                               {
                                                                                                                                                                  if(§§pop() != null)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc10_ || this)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc4_.§>S§);
                                                                                                                                                                        if(!(_loc9_ && this))
                                                                                                                                                                        {
                                                                                                                                                                           §§pop().§^e§ = _loc4_.§^e§;
                                                                                                                                                                           if(_loc10_)
                                                                                                                                                                           {
                                                                                                                                                                              addr579:
                                                                                                                                                                              §§push(_loc4_.§^e§);
                                                                                                                                                                              if(!_loc9_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(§§pop() != null)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!_loc9_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr587:
                                                                                                                                                                                       §§push(_loc4_.§^e§);
                                                                                                                                                                                       if(!_loc9_)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr591:
                                                                                                                                                                                          §§pop().§>S§ = _loc4_.§>S§;
                                                                                                                                                                                          addr596:
                                                                                                                                                                                          _loc6_ = _loc4_.§>S§;
                                                                                                                                                                                          addr594:
                                                                                                                                                                                          if(!_loc9_)
                                                                                                                                                                                          {
                                                                                                                                                                                             _loc4_.§^e§ = null;
                                                                                                                                                                                             if(!_loc9_)
                                                                                                                                                                                             {
                                                                                                                                                                                                _loc4_.§>S§ = null;
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          _loc4_ = _loc6_;
                                                                                                                                                                                          if(!_loc9_)
                                                                                                                                                                                          {
                                                                                                                                                                                             _loc8_ = (_loc7_ = this).§4q§ - 1;
                                                                                                                                                                                             if(!_loc9_)
                                                                                                                                                                                             {
                                                                                                                                                                                                _loc7_.§4q§ = _loc8_;
                                                                                                                                                                                             }
                                                                                                                                                                                             addr626:
                                                                                                                                                                                             §§push(_loc4_.§^e§);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr626);
                                                                                                                                                                                       }
                                                                                                                                                                                       if((_loc4_ = §§pop()).tick(_loc2_))
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc10_ || param1)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc4_.§>S§);
                                                                                                                                                                                             if(_loc10_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(§§pop() != null)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc10_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(_loc4_.§>S§);
                                                                                                                                                                                                      if(!_loc9_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§pop().§^e§ = _loc4_.§^e§;
                                                                                                                                                                                                         if(_loc10_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr661:
                                                                                                                                                                                                            §§push(_loc4_.§^e§);
                                                                                                                                                                                                            if(!_loc9_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(§§pop() != null)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc10_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr669:
                                                                                                                                                                                                                     §§push(_loc4_.§^e§);
                                                                                                                                                                                                                     if(!_loc9_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr673:
                                                                                                                                                                                                                        §§pop().§>S§ = _loc4_.§>S§;
                                                                                                                                                                                                                        _loc6_ = _loc4_.§>S§;
                                                                                                                                                                                                                        addr676:
                                                                                                                                                                                                                        if(_loc10_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           _loc4_.§^e§ = null;
                                                                                                                                                                                                                           if(_loc10_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr687:
                                                                                                                                                                                                                              _loc4_.§>S§ = null;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           _loc4_ = _loc6_;
                                                                                                                                                                                                                           if(_loc10_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              _loc8_ = (_loc7_ = this).§4q§ - 1;
                                                                                                                                                                                                                              if(_loc10_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 _loc7_.§4q§ = _loc8_;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              addr708:
                                                                                                                                                                                                                              if((_loc4_ = _loc4_.§^e§).tick(_loc2_))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(!(_loc9_ && _loc2_))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(_loc4_.§>S§);
                                                                                                                                                                                                                                    if(!_loc9_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(§§pop() != null)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(!(_loc9_ && param1))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(_loc4_.§>S§);
                                                                                                                                                                                                                                             if(_loc10_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§pop().§^e§ = _loc4_.§^e§;
                                                                                                                                                                                                                                                if(!(_loc9_ && _loc2_))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr753:
                                                                                                                                                                                                                                                   §§push(_loc4_.§^e§);
                                                                                                                                                                                                                                                   if(_loc10_ || this)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(§§pop() != null)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(_loc10_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            addr766:
                                                                                                                                                                                                                                                            §§push(_loc4_.§^e§);
                                                                                                                                                                                                                                                            if(_loc10_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               addr770:
                                                                                                                                                                                                                                                               §§pop().§>S§ = _loc4_.§>S§;
                                                                                                                                                                                                                                                               _loc6_ = _loc4_.§>S§;
                                                                                                                                                                                                                                                               addr773:
                                                                                                                                                                                                                                                               if(!(_loc9_ && _loc3_))
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  _loc4_.§^e§ = null;
                                                                                                                                                                                                                                                                  if(!_loc9_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     addr789:
                                                                                                                                                                                                                                                                     _loc4_.§>S§ = null;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  _loc4_ = _loc6_;
                                                                                                                                                                                                                                                                  if(!_loc9_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     _loc8_ = (_loc7_ = this).§4q§ - 1;
                                                                                                                                                                                                                                                                     if(!(_loc9_ && this))
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        _loc7_.§4q§ = _loc8_;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     addr815:
                                                                                                                                                                                                                                                                     if(!(_loc4_ = _loc4_.§^e§).tick(_loc2_))
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        continue loop0;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     if(_loc10_ || _loc2_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(_loc4_.§>S§);
                                                                                                                                                                                                                                                                        if(!_loc9_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(§§pop() != null)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(!_loc9_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 addr841:
                                                                                                                                                                                                                                                                                 §§push(_loc4_.§>S§);
                                                                                                                                                                                                                                                                                 if(!_loc9_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§pop().§^e§ = _loc4_.§^e§;
                                                                                                                                                                                                                                                                                    if(!_loc9_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       addr850:
                                                                                                                                                                                                                                                                                       §§push(_loc4_.§^e§);
                                                                                                                                                                                                                                                                                       if(!_loc9_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(§§pop() != null)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(!_loc9_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                addr860:
                                                                                                                                                                                                                                                                                                _loc4_.§^e§.§>S§ = _loc4_.§>S§;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          addr865:
                                                                                                                                                                                                                                                                                          _loc6_ = _loc4_.§>S§;
                                                                                                                                                                                                                                                                                          if(!_loc9_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             _loc4_.§^e§ = null;
                                                                                                                                                                                                                                                                                             if(!_loc9_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                addr874:
                                                                                                                                                                                                                                                                                                _loc4_.§>S§ = null;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             _loc4_ = _loc6_;
                                                                                                                                                                                                                                                                                             if(_loc10_ || param1)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                _loc8_ = (_loc7_ = this).§4q§ - 1;
                                                                                                                                                                                                                                                                                                if(!(_loc9_ && this))
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   _loc7_.§4q§ = _loc8_;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             continue loop0;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr874);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr860);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr865);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr860);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr850);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr865);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr841);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr815);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr789);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr815);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr773);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr770);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr770);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr766);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr753);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr770);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr815);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr708);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr687);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr708);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr676);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr673);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr669);
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr661);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr673);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr661);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr708);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr594);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr591);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr596);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr587);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr579);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr591);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr587);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr626);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   addr494:
                                                                                                                                                   _loc6_ = _loc4_.§>S§;
                                                                                                                                                   if(_loc10_ || _loc3_)
                                                                                                                                                   {
                                                                                                                                                      _loc4_.§^e§ = null;
                                                                                                                                                      if(_loc10_ || this)
                                                                                                                                                      {
                                                                                                                                                         addr513:
                                                                                                                                                         _loc4_.§>S§ = null;
                                                                                                                                                      }
                                                                                                                                                      _loc4_ = _loc6_;
                                                                                                                                                      if(!_loc9_)
                                                                                                                                                      {
                                                                                                                                                         _loc8_ = (_loc7_ = this).§4q§ - 1;
                                                                                                                                                         if(_loc10_ || this)
                                                                                                                                                         {
                                                                                                                                                            _loc7_.§4q§ = _loc8_;
                                                                                                                                                         }
                                                                                                                                                         addr539:
                                                                                                                                                         §§goto(addr541);
                                                                                                                                                         §§push(_loc4_.§^e§);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr539);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr513);
                                                                                                                                                }
                                                                                                                                                §§goto(addr541);
                                                                                                                                             }
                                                                                                                                             §§goto(addr480);
                                                                                                                                          }
                                                                                                                                          §§goto(addr494);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr472);
                                                                                                                                 }
                                                                                                                                 §§goto(addr457);
                                                                                                                              }
                                                                                                                              §§goto(addr472);
                                                                                                                           }
                                                                                                                           §§goto(addr539);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr380);
                                                                                                                  }
                                                                                                                  §§goto(addr377);
                                                                                                               }
                                                                                                               §§goto(addr368);
                                                                                                            }
                                                                                                            §§goto(addr382);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr350);
                                                                                                   }
                                                                                                   §§goto(addr345);
                                                                                                }
                                                                                                §§goto(addr368);
                                                                                             }
                                                                                             §§goto(addr422);
                                                                                          }
                                                                                          §§goto(addr310);
                                                                                       }
                                                                                       §§goto(addr279);
                                                                                    }
                                                                                    §§goto(addr310);
                                                                                 }
                                                                              }
                                                                              §§goto(addr263);
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr260);
                                                                  }
                                                                  §§goto(addr251);
                                                               }
                                                               §§goto(addr233);
                                                            }
                                                         }
                                                         §§goto(addr260);
                                                      }
                                                      §§goto(addr310);
                                                   }
                                                   §§goto(addr188);
                                                }
                                                §§goto(addr157);
                                             }
                                          }
                                       }
                                       §§goto(addr141);
                                    }
                                    §§goto(addr188);
                                 }
                                 §§goto(addr141);
                              }
                              §§goto(addr143);
                           }
                           §§goto(addr134);
                        }
                        §§goto(addr126);
                     }
                     §§goto(addr116);
                  }
                  §§goto(addr143);
               }
               §§goto(addr188);
            }
            if(_loc10_)
            {
               if((this.§,=§ = _loc5_.§^e§) != null)
               {
                  if(_loc10_ || this)
                  {
                     this.§,=§.§>S§ = null;
                     if(_loc10_)
                     {
                        addr944:
                        _loc5_.§^e§ = this.§&w§[_loc3_ + 1];
                     }
                     return;
                  }
               }
            }
            §§goto(addr944);
         }
      }
      
      public function start() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            this.§8!E§ = getTimer() / 1000;
            if(_loc2_ || _loc1_)
            {
               addr47:
               §^!§.addEventListener(Event.ENTER_FRAME,this.update);
            }
            return;
         }
         §§goto(addr47);
      }
      
      public function §]g§(param1:§,u§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§,u§ = this.§,=§;
         for(; _loc2_ != null; _loc2_ = §§pop())
         {
            if(_loc2_ == param1)
            {
               if(_loc6_ || this)
               {
                  §§push(_loc2_.§>S§);
                  if(!_loc5_)
                  {
                     if(§§pop() != null)
                     {
                        §§push(_loc2_.§>S§);
                     }
                     else
                     {
                        this.§,=§ = _loc2_.§^e§;
                        if(!_loc5_)
                        {
                           addr71:
                           §§push(_loc2_.§^e§);
                           if(!(_loc6_ || _loc3_))
                           {
                              continue;
                           }
                           if(§§pop() != null)
                           {
                              if(!_loc5_)
                              {
                                 §§push(_loc2_.§^e§);
                                 if(_loc6_)
                                 {
                                    §§pop().§>S§ = _loc2_.§>S§;
                                    addr91:
                                    _loc2_.§>S§ = null;
                                    if(_loc5_)
                                    {
                                    }
                                    addr126:
                                    §§push(_loc2_.§^e§);
                                 }
                                 continue;
                              }
                              §§goto(addr126);
                           }
                           var _loc3_:*;
                           var _loc4_:* = (_loc3_ = this).§4q§ - 1;
                           if(_loc6_ || _loc2_)
                           {
                              _loc3_.§4q§ = _loc4_;
                           }
                           if(_loc5_)
                           {
                              break;
                           }
                        }
                        §§goto(addr126);
                     }
                     §§goto(addr126);
                  }
                  §§pop().§^e§ = _loc2_.§^e§;
                  if(_loc6_ || this)
                  {
                     _loc2_.§^e§ = null;
                     §§goto(addr71);
                  }
                  break;
               }
            }
            §§goto(addr91);
         }
      }
      
      public function get time() : Number
      {
         return this.§8!E§;
      }
      
      public function stop() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §^!§.removeEventListener(Event.ENTER_FRAME,this.update);
         }
      }
      
      public function §'`§(param1:§,u§) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(param1.§^e§ == null);
         if(_loc4_)
         {
            §§push(!§§pop());
            if(_loc4_)
            {
               addr25:
               if(!§§pop())
               {
                  if(!_loc5_)
                  {
                     addr29:
                     §§pop();
                     §§push(param1.§>S§);
                     if(_loc4_)
                     {
                        §§push(null);
                        if(_loc4_)
                        {
                           §§push(§§pop() == §§pop());
                           if(_loc4_ || _loc3_)
                           {
                              addr46:
                              if(!§§pop())
                              {
                                 if(_loc4_)
                                 {
                                    return;
                                 }
                              }
                              else
                              {
                                 §§push(this.§,=§);
                                 if(!_loc5_)
                                 {
                                    if(§§pop() != null)
                                    {
                                       §§push(this.§,=§);
                                       if(_loc4_)
                                       {
                                          §§push(§§pop().§>S§);
                                          if(!(_loc5_ && _loc2_))
                                          {
                                             addr79:
                                             if(§§pop() != null)
                                             {
                                                §§push(this.§,=§);
                                                if(!(_loc5_ && _loc2_))
                                                {
                                                   addr90:
                                                   §§pop().§>S§.§^e§ = param1;
                                                   param1.§>S§ = this.§,=§.§>S§;
                                                   addr97:
                                                   param1.§^e§ = this.§,=§;
                                                   §§push(this.§,=§);
                                                   addr89:
                                                }
                                                §§pop().§>S§ = param1;
                                                if(!(_loc5_ && param1))
                                                {
                                                   §§goto(addr122);
                                                }
                                                §§goto(addr127);
                                             }
                                             §§goto(addr97);
                                          }
                                          §§goto(addr90);
                                       }
                                       §§goto(addr89);
                                    }
                                    addr122:
                                    this.§,=§ = param1;
                                    if(_loc4_)
                                    {
                                       addr127:
                                       var _loc2_:*;
                                       var _loc3_:* = (_loc2_ = this).§4q§ + 1;
                                       if(!_loc5_)
                                       {
                                          _loc2_.§4q§ = _loc3_;
                                       }
                                    }
                                    return;
                                 }
                                 §§goto(addr90);
                              }
                              §§goto(addr90);
                           }
                           §§goto(addr46);
                        }
                        §§goto(addr79);
                     }
                     §§goto(addr90);
                  }
               }
               §§goto(addr46);
            }
            §§goto(addr29);
         }
         §§goto(addr25);
      }
   }
}
