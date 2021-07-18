package §?"6§
{
   import §%!n§.§'!r§;
   import §%!n§.§;!'§;
   import flash.display.Shape;
   import flash.events.Event;
   import flash.utils.getTimer;
   
   public class § !j§ implements §;!'§
   {
      
      private static var §<!d§:Shape;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §<!d§ = new Shape();
         }
      }
      
      private var §<#§:Vector.<§'!r§>;
      
      private var §1!0§:uint = 0;
      
      private var §;1§:Number;
      
      private var §[P§:§'!r§ = null;
      
      public function § !j§()
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§'!r§ = null;
         if(_loc5_ || this)
         {
            super();
            if(!(_loc4_ && _loc2_))
            {
               addr36:
               this.§<#§ = new Vector.<§'!r§>(10,true);
            }
            var _loc1_:§'!r§ = null;
            var _loc2_:* = uint(0);
            while(_loc2_ < 10)
            {
               _loc3_ = new §'!r§();
               if(!(_loc4_ && this))
               {
                  if(_loc1_ != null)
                  {
                     if(_loc5_)
                     {
                        _loc1_.§,"%§ = _loc3_;
                        if(_loc5_)
                        {
                           addr83:
                           _loc3_.§<!>§ = _loc1_;
                        }
                     }
                     §§goto(addr83);
                  }
                  _loc1_ = _loc3_;
                  if(!_loc4_)
                  {
                     this.§<#§[_loc2_] = _loc3_;
                     if(!_loc4_)
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
               §§goto(addr83);
            }
            return;
         }
         §§goto(addr36);
      }
      
      function update(param1:Event) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         §§push(this.§;1§ = getTimer() / 1000);
         if(!(_loc10_ && _loc2_))
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         var _loc3_:uint = 8 - this.§1!0§ % 8;
         var _loc4_:§'!r§ = this.§<#§[0];
         var _loc5_:§'!r§ = this.§<#§[_loc3_];
         var _loc6_:§'!r§ = null;
         if(_loc9_ || this)
         {
            if((_loc5_.§,"%§ = this.§[P§) != null)
            {
               if(_loc9_)
               {
                  addr77:
                  this.§[P§.§<!>§ = _loc5_;
               }
            }
            loop0:
            while(true)
            {
               §§push(_loc4_.§,"%§);
               while(§§pop() != null)
               {
                  §§push(_loc4_.§,"%§);
                  if(!(_loc9_ || param1))
                  {
                     continue;
                  }
                  if((_loc4_ = §§pop()).tick(_loc2_))
                  {
                     if(_loc9_)
                     {
                        §§push(_loc4_.§<!>§);
                        if(!(_loc10_ && _loc2_))
                        {
                           if(§§pop() != null)
                           {
                              if(!(_loc10_ && _loc2_))
                              {
                                 §§push(_loc4_.§<!>§);
                                 if(_loc9_ || _loc2_)
                                 {
                                    §§pop().§,"%§ = _loc4_.§,"%§;
                                    if(!_loc10_)
                                    {
                                       addr135:
                                       §§push(_loc4_.§,"%§);
                                       if(_loc9_)
                                       {
                                          if(§§pop() != null)
                                          {
                                             if(!_loc10_)
                                             {
                                                addr143:
                                                §§push(_loc4_.§,"%§);
                                                if(_loc9_)
                                                {
                                                   addr147:
                                                   §§pop().§<!>§ = _loc4_.§<!>§;
                                                   _loc6_ = _loc4_.§<!>§;
                                                   addr150:
                                                   if(_loc9_ || this)
                                                   {
                                                      _loc4_.§,"%§ = null;
                                                      if(_loc9_)
                                                      {
                                                         addr166:
                                                         _loc4_.§<!>§ = null;
                                                      }
                                                      _loc4_ = _loc6_;
                                                      if(_loc9_)
                                                      {
                                                         var _loc7_:*;
                                                         var _loc8_:* = (_loc7_ = this).§1!0§ - 1;
                                                         if(_loc9_ || this)
                                                         {
                                                            _loc7_.§1!0§ = _loc8_;
                                                         }
                                                         addr192:
                                                         if((_loc4_ = _loc4_.§,"%§).tick(_loc2_))
                                                         {
                                                            if(!(_loc10_ && _loc2_))
                                                            {
                                                               §§push(_loc4_.§<!>§);
                                                               if(_loc9_)
                                                               {
                                                                  if(§§pop() != null)
                                                                  {
                                                                     if(_loc9_)
                                                                     {
                                                                        §§push(_loc4_.§<!>§);
                                                                        if(!(_loc10_ && _loc2_))
                                                                        {
                                                                           addr227:
                                                                           §§pop().§,"%§ = _loc4_.§,"%§;
                                                                           if(_loc9_ || param1)
                                                                           {
                                                                              addr237:
                                                                              §§push(_loc4_.§,"%§);
                                                                              if(_loc9_)
                                                                              {
                                                                                 if(§§pop() != null)
                                                                                 {
                                                                                    if(!(_loc10_ && this))
                                                                                    {
                                                                                       addr250:
                                                                                       §§push(_loc4_.§,"%§);
                                                                                       if(!_loc10_)
                                                                                       {
                                                                                          addr254:
                                                                                          §§pop().§<!>§ = _loc4_.§<!>§;
                                                                                          addr259:
                                                                                          _loc6_ = _loc4_.§<!>§;
                                                                                          addr257:
                                                                                          if(!_loc10_)
                                                                                          {
                                                                                             _loc4_.§,"%§ = null;
                                                                                             if(!(_loc10_ && this))
                                                                                             {
                                                                                                _loc4_.§<!>§ = null;
                                                                                             }
                                                                                          }
                                                                                          _loc4_ = _loc6_;
                                                                                          if(_loc9_)
                                                                                          {
                                                                                             _loc8_ = (_loc7_ = this).§1!0§ - 1;
                                                                                             if(_loc9_)
                                                                                             {
                                                                                                _loc7_.§1!0§ = _loc8_;
                                                                                             }
                                                                                             addr294:
                                                                                             §§push(_loc4_.§,"%§);
                                                                                          }
                                                                                          §§goto(addr294);
                                                                                       }
                                                                                       if((_loc4_ = §§pop()).tick(_loc2_))
                                                                                       {
                                                                                          if(_loc9_)
                                                                                          {
                                                                                             §§push(_loc4_.§<!>§);
                                                                                             if(!(_loc10_ && param1))
                                                                                             {
                                                                                                if(§§pop() != null)
                                                                                                {
                                                                                                   if(_loc9_ || _loc2_)
                                                                                                   {
                                                                                                      addr325:
                                                                                                      §§push(_loc4_.§<!>§);
                                                                                                      if(!(_loc10_ && _loc3_))
                                                                                                      {
                                                                                                         §§pop().§,"%§ = _loc4_.§,"%§;
                                                                                                         if(_loc9_ || param1)
                                                                                                         {
                                                                                                            addr344:
                                                                                                            §§push(_loc4_.§,"%§);
                                                                                                            if(_loc9_ || this)
                                                                                                            {
                                                                                                               if(§§pop() != null)
                                                                                                               {
                                                                                                                  if(_loc9_ || _loc3_)
                                                                                                                  {
                                                                                                                     addr362:
                                                                                                                     §§push(_loc4_.§,"%§);
                                                                                                                     if(!_loc10_)
                                                                                                                     {
                                                                                                                        §§pop().§<!>§ = _loc4_.§<!>§;
                                                                                                                        addr371:
                                                                                                                        _loc6_ = _loc4_.§<!>§;
                                                                                                                        addr369:
                                                                                                                        if(_loc9_ || _loc3_)
                                                                                                                        {
                                                                                                                           _loc4_.§,"%§ = null;
                                                                                                                           if(_loc9_)
                                                                                                                           {
                                                                                                                              addr385:
                                                                                                                              _loc4_.§<!>§ = null;
                                                                                                                           }
                                                                                                                           _loc4_ = _loc6_;
                                                                                                                           if(_loc9_)
                                                                                                                           {
                                                                                                                              _loc8_ = (_loc7_ = this).§1!0§ - 1;
                                                                                                                              if(!_loc10_)
                                                                                                                              {
                                                                                                                                 _loc7_.§1!0§ = _loc8_;
                                                                                                                              }
                                                                                                                              addr406:
                                                                                                                              if((_loc4_ = _loc4_.§,"%§).tick(_loc2_))
                                                                                                                              {
                                                                                                                                 if(!_loc10_)
                                                                                                                                 {
                                                                                                                                    §§push(_loc4_.§<!>§);
                                                                                                                                    if(!(_loc10_ && _loc2_))
                                                                                                                                    {
                                                                                                                                       if(§§pop() != null)
                                                                                                                                       {
                                                                                                                                          if(_loc9_)
                                                                                                                                          {
                                                                                                                                             §§push(_loc4_.§<!>§);
                                                                                                                                             if(_loc9_ || this)
                                                                                                                                             {
                                                                                                                                                addr441:
                                                                                                                                                §§pop().§,"%§ = _loc4_.§,"%§;
                                                                                                                                                if(_loc9_)
                                                                                                                                                {
                                                                                                                                                   addr446:
                                                                                                                                                   §§push(_loc4_.§,"%§);
                                                                                                                                                   if(_loc9_ || _loc3_)
                                                                                                                                                   {
                                                                                                                                                      if(§§pop() != null)
                                                                                                                                                      {
                                                                                                                                                         if(_loc9_ || this)
                                                                                                                                                         {
                                                                                                                                                            addr464:
                                                                                                                                                            §§push(_loc4_.§,"%§);
                                                                                                                                                            if(_loc9_ || param1)
                                                                                                                                                            {
                                                                                                                                                               addr473:
                                                                                                                                                               §§pop().§<!>§ = _loc4_.§<!>§;
                                                                                                                                                               _loc6_ = _loc4_.§<!>§;
                                                                                                                                                               addr476:
                                                                                                                                                               if(_loc9_)
                                                                                                                                                               {
                                                                                                                                                                  _loc4_.§,"%§ = null;
                                                                                                                                                                  if(!_loc10_)
                                                                                                                                                                  {
                                                                                                                                                                     addr497:
                                                                                                                                                                     _loc4_.§<!>§ = null;
                                                                                                                                                                  }
                                                                                                                                                                  _loc4_ = _loc6_;
                                                                                                                                                                  if(_loc9_ || this)
                                                                                                                                                                  {
                                                                                                                                                                     _loc8_ = (_loc7_ = this).§1!0§ - 1;
                                                                                                                                                                     if(_loc9_ || param1)
                                                                                                                                                                     {
                                                                                                                                                                        _loc7_.§1!0§ = _loc8_;
                                                                                                                                                                     }
                                                                                                                                                                     addr528:
                                                                                                                                                                     if((_loc4_ = _loc4_.§,"%§).tick(_loc2_))
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc10_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc4_.§<!>§);
                                                                                                                                                                           if(_loc9_ || _loc3_)
                                                                                                                                                                           {
                                                                                                                                                                              if(§§pop() != null)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!_loc10_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc4_.§<!>§);
                                                                                                                                                                                    if(_loc9_ || this)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§pop().§,"%§ = _loc4_.§,"%§;
                                                                                                                                                                                       if(_loc9_)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr568:
                                                                                                                                                                                          §§push(_loc4_.§,"%§);
                                                                                                                                                                                          if(!_loc10_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(§§pop() != null)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc9_ || _loc2_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr581:
                                                                                                                                                                                                   §§push(_loc4_.§,"%§);
                                                                                                                                                                                                   if(!_loc10_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr585:
                                                                                                                                                                                                      §§pop().§<!>§ = _loc4_.§<!>§;
                                                                                                                                                                                                      addr590:
                                                                                                                                                                                                      _loc6_ = _loc4_.§<!>§;
                                                                                                                                                                                                      addr588:
                                                                                                                                                                                                      if(!(_loc10_ && _loc3_))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         _loc4_.§,"%§ = null;
                                                                                                                                                                                                         if(_loc9_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            _loc4_.§<!>§ = null;
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      _loc4_ = _loc6_;
                                                                                                                                                                                                      if(!(_loc10_ && _loc3_))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         _loc8_ = (_loc7_ = this).§1!0§ - 1;
                                                                                                                                                                                                         if(_loc9_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            _loc7_.§1!0§ = _loc8_;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr630:
                                                                                                                                                                                                         §§push(_loc4_.§,"%§);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr630);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   if((_loc4_ = §§pop()).tick(_loc2_))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc9_ || this)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(_loc4_.§<!>§);
                                                                                                                                                                                                         if(_loc9_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(§§pop() != null)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc9_ || this)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(_loc4_.§<!>§);
                                                                                                                                                                                                                  if(_loc9_ || param1)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr670:
                                                                                                                                                                                                                     §§pop().§,"%§ = _loc4_.§,"%§;
                                                                                                                                                                                                                     if(!_loc10_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr675:
                                                                                                                                                                                                                        §§push(_loc4_.§,"%§);
                                                                                                                                                                                                                        if(!_loc10_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(§§pop() != null)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(_loc9_ || _loc2_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr688:
                                                                                                                                                                                                                                 §§push(_loc4_.§,"%§);
                                                                                                                                                                                                                                 if(_loc9_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr692:
                                                                                                                                                                                                                                    §§pop().§<!>§ = _loc4_.§<!>§;
                                                                                                                                                                                                                                    addr697:
                                                                                                                                                                                                                                    _loc6_ = _loc4_.§<!>§;
                                                                                                                                                                                                                                    addr695:
                                                                                                                                                                                                                                    if(_loc9_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       _loc4_.§,"%§ = null;
                                                                                                                                                                                                                                       if(!(_loc10_ && param1))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          _loc4_.§<!>§ = null;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    _loc4_ = _loc6_;
                                                                                                                                                                                                                                    if(_loc9_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       _loc8_ = (_loc7_ = this).§1!0§ - 1;
                                                                                                                                                                                                                                       if(_loc9_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          _loc7_.§1!0§ = _loc8_;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       addr732:
                                                                                                                                                                                                                                       §§push(_loc4_.§,"%§);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr732);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 if((_loc4_ = §§pop()).tick(_loc2_))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(!_loc10_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(_loc4_.§<!>§);
                                                                                                                                                                                                                                       if(_loc9_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(§§pop() != null)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(!(_loc10_ && this))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(_loc4_.§<!>§);
                                                                                                                                                                                                                                                if(!_loc10_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr762:
                                                                                                                                                                                                                                                   §§pop().§,"%§ = _loc4_.§,"%§;
                                                                                                                                                                                                                                                   if(!_loc10_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      addr767:
                                                                                                                                                                                                                                                      §§push(_loc4_.§,"%§);
                                                                                                                                                                                                                                                      if(!_loc10_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(§§pop() != null)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(!_loc10_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               addr775:
                                                                                                                                                                                                                                                               §§push(_loc4_.§,"%§);
                                                                                                                                                                                                                                                               if(_loc9_ || _loc2_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  addr784:
                                                                                                                                                                                                                                                                  §§pop().§<!>§ = _loc4_.§<!>§;
                                                                                                                                                                                                                                                                  addr789:
                                                                                                                                                                                                                                                                  _loc6_ = _loc4_.§<!>§;
                                                                                                                                                                                                                                                                  addr787:
                                                                                                                                                                                                                                                                  if(_loc9_ || _loc2_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     _loc4_.§,"%§ = null;
                                                                                                                                                                                                                                                                     if(!(_loc10_ && _loc3_))
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        _loc4_.§<!>§ = null;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  _loc4_ = _loc6_;
                                                                                                                                                                                                                                                                  if(_loc9_ || _loc3_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     _loc8_ = (_loc7_ = this).§1!0§ - 1;
                                                                                                                                                                                                                                                                     if(!_loc10_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        _loc7_.§1!0§ = _loc8_;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     addr834:
                                                                                                                                                                                                                                                                     §§push(_loc4_.§,"%§);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr834);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               if(!(_loc4_ = §§pop()).tick(_loc2_))
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  continue loop0;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               if(_loc9_ || this)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(_loc4_.§<!>§);
                                                                                                                                                                                                                                                                  if(_loc9_ || _loc2_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(§§pop() != null)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(_loc9_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(_loc4_.§<!>§);
                                                                                                                                                                                                                                                                           if(_loc9_ || param1)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§pop().§,"%§ = _loc4_.§,"%§;
                                                                                                                                                                                                                                                                              if(!(_loc10_ && param1))
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 addr884:
                                                                                                                                                                                                                                                                                 §§push(_loc4_.§,"%§);
                                                                                                                                                                                                                                                                                 if(_loc9_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(§§pop() != null)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       addr897:
                                                                                                                                                                                                                                                                                       if(!_loc10_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          addr892:
                                                                                                                                                                                                                                                                                          §§push(_loc4_.§,"%§);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       _loc6_ = _loc4_.§<!>§;
                                                                                                                                                                                                                                                                                       if(_loc9_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          _loc4_.§,"%§ = null;
                                                                                                                                                                                                                                                                                          if(_loc9_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             addr908:
                                                                                                                                                                                                                                                                                             _loc4_.§<!>§ = null;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          _loc4_ = _loc6_;
                                                                                                                                                                                                                                                                                          if(!_loc10_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             _loc8_ = (_loc7_ = this).§1!0§ - 1;
                                                                                                                                                                                                                                                                                             if(!_loc10_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                _loc7_.§1!0§ = _loc8_;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          continue loop0;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr908);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr897);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§pop().§<!>§ = _loc4_.§<!>§;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr897);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr892);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr884);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr897);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr787);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr784);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr789);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr775);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr767);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr762);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr784);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr834);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr695);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr692);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr688);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr697);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr688);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr675);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr670);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr692);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr732);
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr588);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr585);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr581);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr590);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr585);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr568);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr585);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr568);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr630);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr528);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr497);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr528);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr476);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr473);
                                                                                                                                                }
                                                                                                                                                §§goto(addr464);
                                                                                                                                             }
                                                                                                                                             §§goto(addr473);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr446);
                                                                                                                                    }
                                                                                                                                    §§goto(addr441);
                                                                                                                                 }
                                                                                                                                 §§goto(addr446);
                                                                                                                              }
                                                                                                                              §§goto(addr528);
                                                                                                                           }
                                                                                                                           §§goto(addr406);
                                                                                                                        }
                                                                                                                        §§goto(addr385);
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr369);
                                                                                                            }
                                                                                                            §§goto(addr406);
                                                                                                         }
                                                                                                         §§goto(addr369);
                                                                                                      }
                                                                                                      §§goto(addr371);
                                                                                                   }
                                                                                                   §§goto(addr362);
                                                                                                }
                                                                                                §§goto(addr344);
                                                                                             }
                                                                                             §§goto(addr371);
                                                                                          }
                                                                                          §§goto(addr325);
                                                                                       }
                                                                                       §§goto(addr406);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr257);
                                                                              }
                                                                              §§goto(addr254);
                                                                           }
                                                                           §§goto(addr250);
                                                                        }
                                                                        §§goto(addr259);
                                                                     }
                                                                  }
                                                                  §§goto(addr237);
                                                               }
                                                               §§goto(addr227);
                                                            }
                                                            §§goto(addr237);
                                                         }
                                                         §§goto(addr294);
                                                      }
                                                      §§goto(addr192);
                                                   }
                                                   §§goto(addr166);
                                                }
                                                §§goto(addr192);
                                             }
                                          }
                                          §§goto(addr150);
                                       }
                                       §§goto(addr147);
                                    }
                                    §§goto(addr143);
                                 }
                                 §§goto(addr147);
                              }
                           }
                           §§goto(addr135);
                        }
                     }
                     §§goto(addr147);
                  }
                  §§goto(addr192);
               }
               if(!_loc10_)
               {
                  if((this.§[P§ = _loc5_.§,"%§) != null)
                  {
                     if(!(_loc10_ && param1))
                     {
                        §§goto(addr952);
                     }
                  }
                  §§goto(addr968);
               }
               addr952:
               this.§[P§.§<!>§ = null;
               if(_loc9_)
               {
                  addr968:
                  _loc5_.§,"%§ = this.§<#§[_loc3_ + 1];
               }
               return;
            }
         }
         §§goto(addr77);
      }
      
      public function start() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§;1§ = getTimer() / 1000;
            do
            {
               §<!d§.addEventListener(Event.ENTER_FRAME,this.update);
            }
            while(_loc1_);
            
         }
      }
      
      public function §#!Y§(param1:§'!r§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§'!r§ = this.§[P§;
         loop0:
         while(true)
         {
            if(_loc2_ != null)
            {
               if(_loc2_ == param1)
               {
                  while(true)
                  {
                     §§push(_loc2_.§<!>§);
                     if(!(_loc6_ && _loc3_))
                     {
                        if(§§pop() == null)
                        {
                           this.§[P§ = _loc2_.§,"%§;
                           if(!_loc6_)
                           {
                              loop2:
                              while(true)
                              {
                                 §§push(_loc2_.§,"%§);
                                 if(!_loc6_)
                                 {
                                    if(§§pop() != null)
                                    {
                                       if(!_loc6_)
                                       {
                                          if(_loc6_)
                                          {
                                             break;
                                          }
                                          §§push(_loc2_.§,"%§);
                                          if(_loc5_)
                                          {
                                             addr53:
                                             §§pop().§<!>§ = _loc2_.§<!>§;
                                             while(true)
                                             {
                                                _loc2_.§<!>§ = null;
                                                if(_loc6_)
                                                {
                                                   break;
                                                }
                                                if(_loc5_ || param1)
                                                {
                                                   if(_loc5_)
                                                   {
                                                      if(false)
                                                      {
                                                         continue loop2;
                                                      }
                                                      addr113:
                                                      var _loc3_:*;
                                                      var _loc4_:* = (_loc3_ = this).§1!0§ - 1;
                                                      if(_loc5_ || _loc2_)
                                                      {
                                                         _loc3_.§1!0§ = _loc4_;
                                                      }
                                                   }
                                                   loop4:
                                                   for(; !(_loc5_ || this); _loc2_.§,"%§ = null)
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(_loc2_.§<!>§);
                                                         addr107:
                                                         while(true)
                                                         {
                                                            §§pop().§,"%§ = _loc2_.§,"%§;
                                                            if(!_loc6_)
                                                            {
                                                               continue loop4;
                                                            }
                                                         }
                                                      }
                                                   }
                                                   continue loop2;
                                                   if(!(_loc6_ && this))
                                                   {
                                                      break;
                                                   }
                                                   §§goto(addr155);
                                                }
                                             }
                                             §§push(_loc2_.§,"%§);
                                          }
                                          continue loop0;
                                       }
                                       §§goto(addr155);
                                    }
                                    §§goto(addr113);
                                 }
                                 §§goto(addr53);
                              }
                              continue;
                           }
                           §§goto(addr53);
                        }
                        §§goto(addr105);
                     }
                     §§goto(addr107);
                  }
               }
               §§goto(addr53);
            }
            addr155:
            return;
         }
      }
      
      public function get time() : Number
      {
         return this.§;1§;
      }
      
      public function stop() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            §<!d§.removeEventListener(Event.ENTER_FRAME,this.update);
         }
      }
      
      public function §]!a§(param1:§'!r§) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && _loc3_))
         {
            §§push(param1.§,"%§ == null);
            loop0:
            while(true)
            {
               §§push(!§§pop());
               loop1:
               while(true)
               {
                  if(!§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        loop3:
                        while(true)
                        {
                           §§push(param1.§<!>§);
                           loop4:
                           while(true)
                           {
                              §§push(null);
                              addr144:
                              while(true)
                              {
                                 §§push(§§pop() == §§pop());
                                 if(_loc4_)
                                 {
                                    §§push(!§§pop());
                                 }
                                 if(_loc5_)
                                 {
                                    break;
                                 }
                                 if(!_loc4_)
                                 {
                                    continue loop1;
                                 }
                                 if(!_loc4_)
                                 {
                                    continue loop0;
                                 }
                              }
                              continue loop2;
                              loop15:
                              while(true)
                              {
                                 if(_loc5_ && _loc3_)
                                 {
                                    continue loop4;
                                 }
                                 §§pop().§,"%§ = param1;
                                 loop10:
                                 while(true)
                                 {
                                    param1.§<!>§ = this.§[P§.§<!>§;
                                    loop11:
                                    while(true)
                                    {
                                       if(!_loc5_)
                                       {
                                          loop12:
                                          while(true)
                                          {
                                             param1.§,"%§ = this.§[P§;
                                             loop13:
                                             while(!_loc5_)
                                             {
                                                while(true)
                                                {
                                                   §§push(this.§[P§);
                                                   if(!_loc5_)
                                                   {
                                                      if(_loc5_ && _loc3_)
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(§§pop().§<!>§);
                                                            if(!_loc4_)
                                                            {
                                                               continue loop15;
                                                            }
                                                            §§push(null);
                                                            if(_loc4_ || _loc2_)
                                                            {
                                                               if(§§pop() == §§pop())
                                                               {
                                                                  continue loop12;
                                                               }
                                                               if(!_loc4_)
                                                               {
                                                                  break loop13;
                                                               }
                                                               if(_loc5_)
                                                               {
                                                                  break;
                                                               }
                                                               §§push(this.§[P§);
                                                               while(true)
                                                               {
                                                                  continue loop15;
                                                               }
                                                               addr129:
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr144);
                                                            }
                                                            §§goto(addr129);
                                                         }
                                                         addr156:
                                                         return;
                                                         addr111:
                                                      }
                                                      §§pop().§<!>§ = param1;
                                                      if(!(_loc4_ || _loc3_))
                                                      {
                                                         return;
                                                      }
                                                      if(!_loc5_)
                                                      {
                                                         continue loop11;
                                                      }
                                                      continue loop13;
                                                      addr192:
                                                   }
                                                   §§goto(addr129);
                                                }
                                                continue loop4;
                                             }
                                             continue loop10;
                                          }
                                       }
                                       else
                                       {
                                          if(!_loc4_)
                                          {
                                             break;
                                          }
                                          addr159:
                                       }
                                       addr97:
                                       while(true)
                                       {
                                          §§push(this.§[P§);
                                          if(_loc4_ || param1)
                                          {
                                             if(§§pop() == null)
                                             {
                                                while(true)
                                                {
                                                   this.§[P§ = param1;
                                                   if(!_loc5_)
                                                   {
                                                      addr30:
                                                      if(!(_loc5_ && _loc3_))
                                                      {
                                                         if(false)
                                                         {
                                                            §§goto(addr39);
                                                         }
                                                         else
                                                         {
                                                            var _loc2_:*;
                                                            var _loc3_:* = (_loc2_ = this).§1!0§ + 1;
                                                            if(!_loc5_)
                                                            {
                                                               _loc2_.§1!0§ = _loc3_;
                                                            }
                                                            §§goto(addr192);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                            §§goto(addr30);
                                                         }
                                                         addr109:
                                                      }
                                                      §§goto(addr111);
                                                   }
                                                   §§goto(addr192);
                                                }
                                                addr24:
                                             }
                                             §§goto(addr109);
                                          }
                                          §§goto(addr129);
                                          §§goto(addr159);
                                       }
                                    }
                                    continue loop3;
                                 }
                              }
                           }
                        }
                     }
                  }
                  while(true)
                  {
                     if(!§§pop())
                     {
                        §§goto(addr97);
                     }
                     §§goto(addr156);
                  }
               }
            }
         }
         §§goto(addr69);
      }
   }
}
