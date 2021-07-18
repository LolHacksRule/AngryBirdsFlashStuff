package §8!&§
{
   import §=b§.§%"2§;
   import §=b§.§,7§;
   import flash.display.Shape;
   import flash.events.Event;
   import flash.utils.getTimer;
   
   public class §]!^§ implements §%"2§
   {
      
      private static var §-k§:Shape;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §-k§ = new Shape();
         }
      }
      
      private var §,!V§:Vector.<§,7§>;
      
      private var §4y§:uint = 0;
      
      private var §=m§:Number;
      
      private var §["+§:§,7§ = null;
      
      public function §]!^§()
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§,7§ = null;
         if(!_loc4_)
         {
            super();
            if(!(_loc4_ && _loc2_))
            {
               addr31:
               this.§,!V§ = new Vector.<§,7§>(10,true);
            }
            var _loc1_:§,7§ = null;
            var _loc2_:* = uint(0);
            while(_loc2_ < 10)
            {
               _loc3_ = new §,7§();
               if(!(_loc4_ && this))
               {
                  if(_loc1_ != null)
                  {
                     if(_loc5_ || this)
                     {
                        _loc1_.§<-§ = _loc3_;
                        if(_loc4_)
                        {
                        }
                        addr86:
                        _loc1_ = _loc3_;
                        if(!(_loc4_ && _loc2_))
                        {
                           this.§,!V§[_loc2_] = _loc3_;
                           if(_loc5_)
                           {
                              §§push(_loc2_);
                              if(_loc5_)
                              {
                                 §§push(uint(§§pop() + 1));
                              }
                              _loc2_ = §§pop();
                           }
                        }
                        continue;
                     }
                     _loc3_.§34§ = _loc1_;
                  }
               }
               §§goto(addr86);
            }
            return;
         }
         §§goto(addr31);
      }
      
      function update(param1:Event) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         §§push(this.§=m§ = getTimer() / 1000);
         if(!(_loc9_ && _loc3_))
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         var _loc3_:uint = 8 - this.§4y§ % 8;
         var _loc4_:§,7§ = this.§,!V§[0];
         var _loc5_:§,7§ = this.§,!V§[_loc3_];
         var _loc6_:§,7§ = null;
         if(_loc10_ || param1)
         {
            if((_loc5_.§<-§ = this.§["+§) != null)
            {
               if(!_loc9_)
               {
                  this.§["+§.§34§ = _loc5_;
               }
            }
         }
         loop0:
         while(true)
         {
            §§push(_loc4_.§<-§);
            while(§§pop() != null)
            {
               §§push(_loc4_.§<-§);
               if(_loc9_ && param1)
               {
                  continue;
               }
               if((_loc4_ = §§pop()).tick(_loc2_))
               {
                  if(!_loc9_)
                  {
                     §§push(_loc4_.§34§);
                     if(!(_loc9_ && _loc3_))
                     {
                        if(§§pop() != null)
                        {
                           if(!_loc9_)
                           {
                              §§push(_loc4_.§34§);
                              if(_loc10_)
                              {
                                 addr121:
                                 §§pop().§<-§ = _loc4_.§<-§;
                                 if(_loc10_)
                                 {
                                    addr126:
                                    §§push(_loc4_.§<-§);
                                    if(!_loc9_)
                                    {
                                       if(§§pop() != null)
                                       {
                                          if(!(_loc9_ && _loc3_))
                                          {
                                             addr139:
                                             §§push(_loc4_.§<-§);
                                             if(_loc10_ || _loc2_)
                                             {
                                                addr148:
                                                §§pop().§34§ = _loc4_.§34§;
                                                addr153:
                                                _loc6_ = _loc4_.§34§;
                                                addr151:
                                                if(_loc10_)
                                                {
                                                   _loc4_.§<-§ = null;
                                                   if(_loc10_)
                                                   {
                                                      _loc4_.§34§ = null;
                                                   }
                                                }
                                                _loc4_ = _loc6_;
                                                if(_loc10_ || param1)
                                                {
                                                   var _loc7_:*;
                                                   var _loc8_:* = (_loc7_ = this).§4y§ - 1;
                                                   if(_loc10_ || _loc2_)
                                                   {
                                                      _loc7_.§4y§ = _loc8_;
                                                   }
                                                   addr193:
                                                   §§push(_loc4_.§<-§);
                                                }
                                                §§goto(addr193);
                                             }
                                             if((_loc4_ = §§pop()).tick(_loc2_))
                                             {
                                                if(_loc10_)
                                                {
                                                   §§push(_loc4_.§34§);
                                                   if(!_loc9_)
                                                   {
                                                      if(§§pop() != null)
                                                      {
                                                         if(_loc10_)
                                                         {
                                                            §§push(_loc4_.§34§);
                                                            if(_loc10_)
                                                            {
                                                               addr218:
                                                               §§pop().§<-§ = _loc4_.§<-§;
                                                               if(!_loc9_)
                                                               {
                                                                  addr223:
                                                                  §§push(_loc4_.§<-§);
                                                                  if(_loc10_)
                                                                  {
                                                                     if(§§pop() != null)
                                                                     {
                                                                        if(!(_loc9_ && _loc3_))
                                                                        {
                                                                           addr236:
                                                                           §§push(_loc4_.§<-§);
                                                                           if(_loc10_ || param1)
                                                                           {
                                                                              addr245:
                                                                              §§pop().§34§ = _loc4_.§34§;
                                                                              _loc6_ = _loc4_.§34§;
                                                                              addr248:
                                                                              if(_loc10_ || _loc2_)
                                                                              {
                                                                                 _loc4_.§<-§ = null;
                                                                                 if(_loc10_ || _loc2_)
                                                                                 {
                                                                                    addr269:
                                                                                    _loc4_.§34§ = null;
                                                                                 }
                                                                                 _loc4_ = _loc6_;
                                                                                 if(_loc10_ || _loc3_)
                                                                                 {
                                                                                    _loc8_ = (_loc7_ = this).§4y§ - 1;
                                                                                    if(_loc10_ || _loc2_)
                                                                                    {
                                                                                       _loc7_.§4y§ = _loc8_;
                                                                                    }
                                                                                    addr300:
                                                                                    if((_loc4_ = _loc4_.§<-§).tick(_loc2_))
                                                                                    {
                                                                                       if(!_loc9_)
                                                                                       {
                                                                                          §§push(_loc4_.§34§);
                                                                                          if(!(_loc9_ && _loc2_))
                                                                                          {
                                                                                             if(§§pop() != null)
                                                                                             {
                                                                                                if(!(_loc9_ && param1))
                                                                                                {
                                                                                                   §§push(_loc4_.§34§);
                                                                                                   if(_loc10_ || _loc2_)
                                                                                                   {
                                                                                                      addr340:
                                                                                                      §§pop().§<-§ = _loc4_.§<-§;
                                                                                                      if(_loc10_)
                                                                                                      {
                                                                                                         addr345:
                                                                                                         §§push(_loc4_.§<-§);
                                                                                                         if(_loc10_)
                                                                                                         {
                                                                                                            if(§§pop() != null)
                                                                                                            {
                                                                                                               if(_loc10_ || this)
                                                                                                               {
                                                                                                                  addr358:
                                                                                                                  §§push(_loc4_.§<-§);
                                                                                                                  if(_loc10_ || this)
                                                                                                                  {
                                                                                                                     addr367:
                                                                                                                     §§pop().§34§ = _loc4_.§34§;
                                                                                                                     _loc6_ = _loc4_.§34§;
                                                                                                                     addr370:
                                                                                                                     if(!(_loc9_ && this))
                                                                                                                     {
                                                                                                                        _loc4_.§<-§ = null;
                                                                                                                        if(_loc10_ || _loc3_)
                                                                                                                        {
                                                                                                                           addr391:
                                                                                                                           _loc4_.§34§ = null;
                                                                                                                        }
                                                                                                                        _loc4_ = _loc6_;
                                                                                                                        if(!_loc9_)
                                                                                                                        {
                                                                                                                           _loc8_ = (_loc7_ = this).§4y§ - 1;
                                                                                                                           if(_loc10_ || this)
                                                                                                                           {
                                                                                                                              _loc7_.§4y§ = _loc8_;
                                                                                                                           }
                                                                                                                           addr417:
                                                                                                                           if((_loc4_ = _loc4_.§<-§).tick(_loc2_))
                                                                                                                           {
                                                                                                                              if(_loc10_)
                                                                                                                              {
                                                                                                                                 §§push(_loc4_.§34§);
                                                                                                                                 if(!(_loc9_ && _loc2_))
                                                                                                                                 {
                                                                                                                                    if(§§pop() != null)
                                                                                                                                    {
                                                                                                                                       if(!(_loc9_ && _loc3_))
                                                                                                                                       {
                                                                                                                                          §§push(_loc4_.§34§);
                                                                                                                                          if(_loc10_)
                                                                                                                                          {
                                                                                                                                             addr452:
                                                                                                                                             §§pop().§<-§ = _loc4_.§<-§;
                                                                                                                                             if(_loc10_)
                                                                                                                                             {
                                                                                                                                                addr457:
                                                                                                                                                §§push(_loc4_.§<-§);
                                                                                                                                                if(_loc10_)
                                                                                                                                                {
                                                                                                                                                   if(§§pop() != null)
                                                                                                                                                   {
                                                                                                                                                      if(!(_loc9_ && _loc3_))
                                                                                                                                                      {
                                                                                                                                                         addr470:
                                                                                                                                                         §§push(_loc4_.§<-§);
                                                                                                                                                         if(_loc10_ || param1)
                                                                                                                                                         {
                                                                                                                                                            addr479:
                                                                                                                                                            §§pop().§34§ = _loc4_.§34§;
                                                                                                                                                            _loc6_ = _loc4_.§34§;
                                                                                                                                                            addr482:
                                                                                                                                                            if(_loc10_ || _loc3_)
                                                                                                                                                            {
                                                                                                                                                               _loc4_.§<-§ = null;
                                                                                                                                                               if(!_loc9_)
                                                                                                                                                               {
                                                                                                                                                                  addr498:
                                                                                                                                                                  _loc4_.§34§ = null;
                                                                                                                                                               }
                                                                                                                                                               _loc4_ = _loc6_;
                                                                                                                                                               if(_loc10_)
                                                                                                                                                               {
                                                                                                                                                                  _loc8_ = (_loc7_ = this).§4y§ - 1;
                                                                                                                                                                  if(!(_loc9_ && _loc3_))
                                                                                                                                                                  {
                                                                                                                                                                     _loc7_.§4y§ = _loc8_;
                                                                                                                                                                  }
                                                                                                                                                                  addr534:
                                                                                                                                                                  if((_loc4_ = _loc4_.§<-§).tick(_loc2_))
                                                                                                                                                                  {
                                                                                                                                                                     if(!(_loc9_ && param1))
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc4_.§34§);
                                                                                                                                                                        if(!(_loc9_ && _loc2_))
                                                                                                                                                                        {
                                                                                                                                                                           if(§§pop() != null)
                                                                                                                                                                           {
                                                                                                                                                                              if(!(_loc9_ && _loc3_))
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc4_.§34§);
                                                                                                                                                                                 if(!(_loc9_ && param1))
                                                                                                                                                                                 {
                                                                                                                                                                                    addr579:
                                                                                                                                                                                    §§pop().§<-§ = _loc4_.§<-§;
                                                                                                                                                                                    if(_loc10_ || _loc3_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr589:
                                                                                                                                                                                       §§push(_loc4_.§<-§);
                                                                                                                                                                                       if(_loc10_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(§§pop() != null)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!(_loc9_ && param1))
                                                                                                                                                                                             {
                                                                                                                                                                                                addr602:
                                                                                                                                                                                                §§push(_loc4_.§<-§);
                                                                                                                                                                                                if(!(_loc9_ && this))
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr611:
                                                                                                                                                                                                   §§pop().§34§ = _loc4_.§34§;
                                                                                                                                                                                                   addr616:
                                                                                                                                                                                                   _loc6_ = _loc4_.§34§;
                                                                                                                                                                                                   addr614:
                                                                                                                                                                                                   if(!(_loc9_ && this))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      _loc4_.§<-§ = null;
                                                                                                                                                                                                      if(!(_loc9_ && _loc2_))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         _loc4_.§34§ = null;
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   _loc4_ = _loc6_;
                                                                                                                                                                                                   if(!_loc9_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      _loc8_ = (_loc7_ = this).§4y§ - 1;
                                                                                                                                                                                                      if(!_loc9_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         _loc7_.§4y§ = _loc8_;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr656:
                                                                                                                                                                                                      §§push(_loc4_.§<-§);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr656);
                                                                                                                                                                                                }
                                                                                                                                                                                                if((_loc4_ = §§pop()).tick(_loc2_))
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc10_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(_loc4_.§34§);
                                                                                                                                                                                                      if(_loc10_ || param1)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(§§pop() != null)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!_loc9_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(_loc4_.§34§);
                                                                                                                                                                                                               if(_loc10_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§pop().§<-§ = _loc4_.§<-§;
                                                                                                                                                                                                                  if(!_loc9_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr691:
                                                                                                                                                                                                                     §§push(_loc4_.§<-§);
                                                                                                                                                                                                                     if(_loc10_ || param1)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(§§pop() != null)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!_loc9_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr704:
                                                                                                                                                                                                                              §§push(_loc4_.§<-§);
                                                                                                                                                                                                                              if(_loc10_ || _loc2_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr713:
                                                                                                                                                                                                                                 §§pop().§34§ = _loc4_.§34§;
                                                                                                                                                                                                                                 _loc6_ = _loc4_.§34§;
                                                                                                                                                                                                                                 addr716:
                                                                                                                                                                                                                                 if(!(_loc9_ && _loc3_))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    _loc4_.§<-§ = null;
                                                                                                                                                                                                                                    if(!(_loc9_ && _loc2_))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr737:
                                                                                                                                                                                                                                       _loc4_.§34§ = null;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    _loc4_ = _loc6_;
                                                                                                                                                                                                                                    if(_loc10_ || _loc2_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       _loc8_ = (_loc7_ = this).§4y§ - 1;
                                                                                                                                                                                                                                       if(!_loc9_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          _loc7_.§4y§ = _loc8_;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       addr763:
                                                                                                                                                                                                                                       if((_loc4_ = _loc4_.§<-§).tick(_loc2_))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(!(_loc9_ && param1))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(_loc4_.§34§);
                                                                                                                                                                                                                                             if(!_loc9_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(§§pop() != null)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(_loc10_ || _loc2_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(_loc4_.§34§);
                                                                                                                                                                                                                                                      if(!(_loc9_ && _loc3_))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§pop().§<-§ = _loc4_.§<-§;
                                                                                                                                                                                                                                                         if(!(_loc9_ && param1))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            addr813:
                                                                                                                                                                                                                                                            §§push(_loc4_.§<-§);
                                                                                                                                                                                                                                                            if(_loc10_ || _loc2_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(§§pop() != null)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(_loc10_ || param1)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     addr831:
                                                                                                                                                                                                                                                                     §§push(_loc4_.§<-§);
                                                                                                                                                                                                                                                                     if(!_loc9_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§pop().§34§ = _loc4_.§34§;
                                                                                                                                                                                                                                                                        addr840:
                                                                                                                                                                                                                                                                        _loc6_ = _loc4_.§34§;
                                                                                                                                                                                                                                                                        addr838:
                                                                                                                                                                                                                                                                        if(_loc10_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           _loc4_.§<-§ = null;
                                                                                                                                                                                                                                                                           if(!_loc9_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              _loc4_.§34§ = null;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        _loc4_ = _loc6_;
                                                                                                                                                                                                                                                                        if(!_loc9_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           _loc8_ = (_loc7_ = this).§4y§ - 1;
                                                                                                                                                                                                                                                                           if(!_loc9_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              _loc7_.§4y§ = _loc8_;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           addr870:
                                                                                                                                                                                                                                                                           §§push(_loc4_.§<-§);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr870);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr838);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            if(!(_loc4_ = §§pop()).tick(_loc2_))
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               continue loop0;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            if(!_loc9_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(_loc4_.§34§);
                                                                                                                                                                                                                                                               if(!(_loc9_ && _loc2_))
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(§§pop() != null)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(!_loc9_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(_loc4_.§34§);
                                                                                                                                                                                                                                                                        if(_loc10_ || this)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           addr905:
                                                                                                                                                                                                                                                                           §§pop().§<-§ = _loc4_.§<-§;
                                                                                                                                                                                                                                                                           if(!_loc9_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              addr910:
                                                                                                                                                                                                                                                                              §§push(_loc4_.§<-§);
                                                                                                                                                                                                                                                                              if(_loc10_ || param1)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(§§pop() != null)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    addr928:
                                                                                                                                                                                                                                                                                    if(_loc10_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       addr923:
                                                                                                                                                                                                                                                                                       §§push(_loc4_.§<-§);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    _loc6_ = _loc4_.§34§;
                                                                                                                                                                                                                                                                                    if(!_loc9_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       _loc4_.§<-§ = null;
                                                                                                                                                                                                                                                                                       if(!(_loc9_ && _loc3_))
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          addr944:
                                                                                                                                                                                                                                                                                          _loc4_.§34§ = null;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       _loc4_ = _loc6_;
                                                                                                                                                                                                                                                                                       if(!(_loc9_ && this))
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          _loc8_ = (_loc7_ = this).§4y§ - 1;
                                                                                                                                                                                                                                                                                          if(_loc10_ || this)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             _loc7_.§4y§ = _loc8_;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       continue loop0;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr944);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr928);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§pop().§34§ = _loc4_.§34§;
                                                                                                                                                                                                                                                                              §§goto(addr928);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr923);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr928);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr910);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr905);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr923);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr840);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr831);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr813);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr840);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr870);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr763);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr737);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr763);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr716);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr713);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr704);
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr713);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr691);
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr713);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr763);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr614);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr611);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr602);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr616);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr611);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr589);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr579);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr589);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr656);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr534);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr498);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr534);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr482);
                                                                                                                                                }
                                                                                                                                                §§goto(addr479);
                                                                                                                                             }
                                                                                                                                             §§goto(addr470);
                                                                                                                                          }
                                                                                                                                          §§goto(addr479);
                                                                                                                                       }
                                                                                                                                       §§goto(addr470);
                                                                                                                                    }
                                                                                                                                    §§goto(addr457);
                                                                                                                                 }
                                                                                                                                 §§goto(addr452);
                                                                                                                              }
                                                                                                                              §§goto(addr479);
                                                                                                                           }
                                                                                                                           §§goto(addr534);
                                                                                                                        }
                                                                                                                        §§goto(addr417);
                                                                                                                     }
                                                                                                                     §§goto(addr391);
                                                                                                                  }
                                                                                                                  §§goto(addr417);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr370);
                                                                                                         }
                                                                                                         §§goto(addr367);
                                                                                                      }
                                                                                                      §§goto(addr358);
                                                                                                   }
                                                                                                   §§goto(addr367);
                                                                                                }
                                                                                                §§goto(addr358);
                                                                                             }
                                                                                             §§goto(addr345);
                                                                                          }
                                                                                          §§goto(addr340);
                                                                                       }
                                                                                       §§goto(addr345);
                                                                                    }
                                                                                    §§goto(addr417);
                                                                                 }
                                                                                 §§goto(addr300);
                                                                              }
                                                                              §§goto(addr269);
                                                                           }
                                                                           §§goto(addr300);
                                                                        }
                                                                     }
                                                                     §§goto(addr248);
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr245);
                                                      }
                                                      §§goto(addr223);
                                                   }
                                                   §§goto(addr218);
                                                }
                                                §§goto(addr236);
                                             }
                                             §§goto(addr300);
                                          }
                                       }
                                       §§goto(addr151);
                                    }
                                 }
                                 §§goto(addr148);
                              }
                              §§goto(addr153);
                           }
                           §§goto(addr139);
                        }
                        §§goto(addr126);
                     }
                     §§goto(addr121);
                  }
                  §§goto(addr126);
               }
               §§goto(addr193);
            }
            if(!_loc9_)
            {
               if((this.§["+§ = _loc5_.§<-§) != null)
               {
                  if(!(_loc9_ && param1))
                  {
                     this.§["+§.§34§ = null;
                     if(!_loc10_)
                     {
                     }
                  }
                  §§goto(addr1022);
               }
               _loc5_.§<-§ = this.§,!V§[_loc3_ + 1];
            }
            addr1022:
            return;
         }
      }
      
      public function start() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§=m§ = getTimer() / 1000;
            do
            {
               §-k§.addEventListener(Event.ENTER_FRAME,this.update);
            }
            while(_loc1_);
            
         }
      }
      
      public function §0!j§(param1:§,7§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§,7§ = this.§["+§;
         loop0:
         while(true)
         {
            if(_loc2_ != null)
            {
               if(_loc2_ == param1)
               {
                  if(_loc5_)
                  {
                     §§push(_loc2_.§34§);
                     if(!(_loc6_ && _loc2_))
                     {
                        if(§§pop() == null)
                        {
                           this.§["+§ = _loc2_.§<-§;
                           loop1:
                           while(true)
                           {
                              addr36:
                              while(true)
                              {
                                 §§push(_loc2_.§<-§);
                                 if(!(_loc5_ || this))
                                 {
                                    break;
                                 }
                                 if(§§pop() != null)
                                 {
                                    if(_loc6_ && this)
                                    {
                                       addr173:
                                       §§push(_loc2_.§<-§);
                                    }
                                    else
                                    {
                                       addr173:
                                    }
                                    §§push(_loc2_.§<-§);
                                    if(_loc6_ && this)
                                    {
                                       break;
                                    }
                                    §§pop().§34§ = _loc2_.§34§;
                                    if(!(_loc5_ || _loc2_))
                                    {
                                       break loop1;
                                    }
                                    continue loop1;
                                    break;
                                 }
                                 addr138:
                                 var _loc3_:*;
                                 var _loc4_:* = (_loc3_ = this).§4y§ - 1;
                                 if(!(_loc6_ && this))
                                 {
                                    _loc3_.§4y§ = _loc4_;
                                 }
                                 if(!(_loc5_ || _loc2_))
                                 {
                                    break loop1;
                                 }
                                 §§goto(addr173);
                                 §§goto(addr173);
                              }
                              continue loop0;
                           }
                           §§goto(addr180);
                        }
                        §§goto(addr132);
                     }
                     while(true)
                     {
                        §§pop().§<-§ = _loc2_.§<-§;
                        §§goto(addr137);
                     }
                  }
                  §§goto(addr132);
               }
               §§goto(addr173);
            }
            addr180:
            return;
         }
      }
      
      public function get time() : Number
      {
         return this.§=m§;
      }
      
      public function stop() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §-k§.removeEventListener(Event.ENTER_FRAME,this.update);
         }
      }
      
      public function §`H§(param1:§,7§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            §§push(param1.§<-§ == null);
            if(!(_loc4_ && _loc2_))
            {
               §§push(!§§pop());
               loop0:
               while(true)
               {
                  if(!§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        addr189:
                        loop14:
                        while(true)
                        {
                           §§push(param1.§34§);
                           addr156:
                           while(true)
                           {
                              §§push(null);
                              addr157:
                              do
                              {
                                 §§push(§§pop() == §§pop());
                                 if(_loc5_)
                                 {
                                    if(_loc4_)
                                    {
                                       continue loop0;
                                    }
                                    §§push(!§§pop());
                                 }
                              }
                              while(_loc5_ || this);
                              
                              continue loop14;
                           }
                        }
                     }
                     addr188:
                  }
                  while(true)
                  {
                     if(!§§pop())
                     {
                        loop2:
                        while(true)
                        {
                           §§push(this.§["+§);
                           loop3:
                           while(true)
                           {
                              if(§§pop() != null)
                              {
                                 if(_loc5_)
                                 {
                                    §§push(this.§["+§);
                                    loop4:
                                    while(true)
                                    {
                                       §§push(§§pop().§34§);
                                       if(!(_loc4_ && this))
                                       {
                                          §§push(null);
                                          if(!(_loc4_ && _loc2_))
                                          {
                                             if(§§pop() != §§pop())
                                             {
                                                if(_loc5_ || _loc3_)
                                                {
                                                   if(!(_loc5_ || _loc3_))
                                                   {
                                                      break;
                                                   }
                                                   §§push(this.§["+§);
                                                   loop5:
                                                   while(true)
                                                   {
                                                      §§push(§§pop().§34§);
                                                      addr148:
                                                      while(_loc5_)
                                                      {
                                                         §§pop().§<-§ = param1;
                                                         while(true)
                                                         {
                                                            param1.§34§ = this.§["+§.§34§;
                                                            loop7:
                                                            for(; !(_loc4_ && this); while(true)
                                                            {
                                                               if(_loc5_ || _loc2_)
                                                               {
                                                                  if(_loc4_ && param1)
                                                                  {
                                                                     break;
                                                                  }
                                                                  continue loop5;
                                                               }
                                                               continue loop7;
                                                            },§§goto(addr189))
                                                            {
                                                               while(true)
                                                               {
                                                                  param1.§<-§ = this.§["+§;
                                                                  continue loop7;
                                                               }
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr156);
                                                      loop10:
                                                      while(true)
                                                      {
                                                         §§push(this.§["+§);
                                                         if(_loc5_ || _loc3_)
                                                         {
                                                            if(_loc5_)
                                                            {
                                                               if(!(_loc4_ && _loc2_))
                                                               {
                                                                  §§pop().§34§ = param1;
                                                                  if(!(_loc4_ && this))
                                                                  {
                                                                     if(!_loc4_)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           this.§["+§ = param1;
                                                                           if(!_loc4_)
                                                                           {
                                                                              if(_loc4_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              if(false)
                                                                              {
                                                                                 continue loop10;
                                                                              }
                                                                              var _loc2_:*;
                                                                              var _loc3_:* = (_loc2_ = this).§4y§ + 1;
                                                                              if(!(_loc4_ && param1))
                                                                              {
                                                                                 _loc2_.§4y§ = _loc3_;
                                                                              }
                                                                           }
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           continue loop2;
                                                                        }
                                                                        addr20:
                                                                        addr173:
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr66);
                                                                     }
                                                                  }
                                                                  §§goto(addr218);
                                                               }
                                                               break;
                                                            }
                                                            continue loop4;
                                                         }
                                                         continue loop5;
                                                      }
                                                      continue loop3;
                                                   }
                                                }
                                                §§goto(addr152);
                                             }
                                             §§goto(addr61);
                                          }
                                          §§goto(addr157);
                                       }
                                       §§goto(addr148);
                                    }
                                    §§goto(addr172);
                                 }
                                 addr218:
                                 return;
                              }
                              §§goto(addr20);
                           }
                        }
                     }
                     addr172:
                     return;
                  }
               }
            }
            §§goto(addr188);
         }
         §§goto(addr173);
      }
   }
}
