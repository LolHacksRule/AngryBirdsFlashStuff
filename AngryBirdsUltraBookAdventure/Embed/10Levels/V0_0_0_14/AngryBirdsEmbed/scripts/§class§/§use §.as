package §class§
{
   import §+!"§.§5!<§;
   import §-!F§.§&!A§;
   import §-!F§.§,J§;
   import §-!F§.§^h§;
   import §-!F§.§`!&§;
   import §<!G§.§^3§;
   import com.rovio.assets.§'!H§;
   import flash.display.*;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §use § extends §3C§
   {
      
      public static const §#^§:int = 0;
      
      public static const §+i§:int = 1;
      
      public static const §,?§:int = 2;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §#^§ = 0;
            if(!_loc2_)
            {
               §§goto(addr33);
            }
            §§goto(addr43);
         }
         addr33:
         if(_loc1_ || _loc2_)
         {
            addr43:
            §,?§ = 2;
         }
      }
      
      public var §1l§:String;
      
      public var §7h§:Class;
      
      public var §@b§:String = null;
      
      public var §`!0§:Vector.<§,J§>;
      
      public var §--§:int;
      
      public var §"<§:Number;
      
      public var §!?§:Number;
      
      public var §+!1§:Number;
      
      public var §=!<§:Number;
      
      public var §7!B§:Number;
      
      public var §3'§:Number;
      
      public var §&!+§:Number;
      
      public var §-!>§:Number;
      
      public var mButtonMarginX2:Number;
      
      public var mButtonMarginY2:Number;
      
      public var §6l§:int;
      
      public var §5!6§:Number;
      
      public var §@!0§:String = "";
      
      public var §"B§:int;
      
      public var §77§:int;
      
      public var §>m§:GlowFilter;
      
      public var §3F§:Boolean = true;
      
      public var § !>§:int;
      
      public var §0!§:int;
      
      public var §[W§:Number = 0;
      
      public var §-+§:Number = 0;
      
      public var §++§:Number = 0;
      
      public var §1B§:Number = 0;
      
      public var §^1§:Boolean = false;
      
      public var §!'§:Boolean = false;
      
      public var §2!B§:MovieClip = null;
      
      public function §use §(param1:XML, param2:§3C§, param3:§^3§, param4:MovieClip = null)
      {
         var _loc22_:Boolean = true;
         var _loc23_:Boolean = false;
         var _loc14_:* = null;
         var _loc15_:* = null;
         var _loc16_:* = NaN;
         var _loc17_:XML = null;
         var _loc18_:XML = null;
         var _loc19_:* = NaN;
         var _loc20_:* = NaN;
         if(_loc22_ || param2)
         {
            super(param1,param2,param3,param4);
            if(_loc22_)
            {
               this.§1l§ = param1.@button;
               if(_loc22_ || param2)
               {
                  addr60:
                  §§push(this.§1l§);
                  if(!_loc23_)
                  {
                     if(§§pop().length > 0)
                     {
                        if(_loc22_)
                        {
                           addr69:
                           this.§7h§ = §'!H§.§&!G§(this.§1l§);
                           addr75:
                           §§push(param1.@buttonIconContainer);
                        }
                     }
                     §§goto(addr75);
                  }
                  var _loc5_:*;
                  §§push(_loc5_ = §§pop());
                  if(_loc22_ || param2)
                  {
                     if(§§pop().length > 0)
                     {
                        this.§@b§ = _loc5_;
                        if(!_loc23_)
                        {
                           addr95:
                           this.§"B§ = §#^§;
                           if(_loc22_ || param1)
                           {
                              if(param1.@buttonAlign)
                              {
                                 if(!_loc23_)
                                 {
                                    addr110:
                                    §§push(param1.@buttonAlign);
                                    if(_loc22_)
                                    {
                                       addr115:
                                       §§push(§§pop());
                                       if(!(_loc23_ && param3))
                                       {
                                          _loc14_ = §§pop();
                                          if(_loc22_)
                                          {
                                             if(§§pop().toUpperCase() == "BOTTOM")
                                             {
                                                if(!_loc23_)
                                                {
                                                   this.§"B§ = §+i§;
                                                   if(!(_loc23_ && param3))
                                                   {
                                                      addr141:
                                                      this.§77§ = §,?§;
                                                      if(param1.@surfaceAlign)
                                                      {
                                                         §§push(param1.@surfaceAlign);
                                                         if(!_loc23_)
                                                         {
                                                            addr152:
                                                            §§push(§§pop());
                                                            if(_loc22_)
                                                            {
                                                               _loc15_ = §§pop();
                                                               if(!_loc22_)
                                                               {
                                                               }
                                                               addr168:
                                                               var _loc6_:*;
                                                               §§push(_loc6_ = §§pop());
                                                               if(!(_loc23_ && param3))
                                                               {
                                                                  §§push(Boolean(§§pop()));
                                                                  if(!(_loc23_ && param3))
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        if(_loc22_)
                                                                        {
                                                                           addr188:
                                                                           §§pop();
                                                                           §§push(_loc6_.length > 0);
                                                                        }
                                                                     }
                                                                     if(§§pop())
                                                                     {
                                                                        if(_loc22_ || param2)
                                                                        {
                                                                           §§push(Number(param1.@GlowFilter));
                                                                           if(!_loc23_)
                                                                           {
                                                                              _loc16_ = §§pop();
                                                                              this.§>m§ = new GlowFilter(_loc16_,1,3,3,10);
                                                                              addr216:
                                                                              if(this.mClip.getChildByName("Button_Scroll1") != null)
                                                                              {
                                                                                 if(!(_loc23_ && this))
                                                                                 {
                                                                                    (_loc17_ = <Button/>).@name = "Button_Scroll1";
                                                                                    if(!_loc23_)
                                                                                    {
                                                                                       _loc17_.@MouseUp = "SCROLL_LEFT";
                                                                                       if(_loc23_ && param1)
                                                                                       {
                                                                                       }
                                                                                       addr255:
                                                                                       if(this.mClip.getChildByName("Button_Scroll2") != null)
                                                                                       {
                                                                                          (_loc18_ = <Button/>).@name = "Button_Scroll2";
                                                                                          if(!_loc23_)
                                                                                          {
                                                                                             _loc18_.@MouseUp = "SCROLL_RIGHT";
                                                                                             if(_loc22_ || this)
                                                                                             {
                                                                                                §3! §.push(new §?q§(_loc18_,this));
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       this.§"<§ = mClip.getChildByName("Surface").x;
                                                                                       if(_loc22_ || param2)
                                                                                       {
                                                                                          this.§!?§ = mClip.getChildByName("Surface").y;
                                                                                          if(!(_loc23_ && param1))
                                                                                          {
                                                                                             this.§+!1§ = mClip.getChildByName("Surface").width;
                                                                                             if(_loc22_)
                                                                                             {
                                                                                                this.§=!<§ = mClip.getChildByName("Surface").height;
                                                                                             }
                                                                                             addr338:
                                                                                             this.§3'§ = mClip.getChildByName("Button_Area1").y - this.§!?§;
                                                                                             addr347:
                                                                                             §§push(mClip.getChildByName("Button_Area2").x - this.§"<§);
                                                                                             if(_loc22_)
                                                                                             {
                                                                                                addr356:
                                                                                                §§push(Number(§§pop()));
                                                                                             }
                                                                                             var _loc7_:* = §§pop();
                                                                                             §§push(mClip.getChildByName("Button_Area2").y - this.§!?§);
                                                                                             if(_loc22_ || this)
                                                                                             {
                                                                                                §§push(Number(§§pop()));
                                                                                             }
                                                                                             var _loc8_:* = §§pop();
                                                                                             var _loc9_:Rectangle = mClip.getChildByName("Button_Area1").getRect(mClip);
                                                                                             if(!(_loc23_ && param3))
                                                                                             {
                                                                                                §§push(this);
                                                                                                §§push(_loc9_.bottom - this.§!?§);
                                                                                                if(_loc22_)
                                                                                                {
                                                                                                   §§push(§§pop() - this.§3'§);
                                                                                                }
                                                                                                §§pop().§5!6§ = §§pop();
                                                                                             }
                                                                                             §§push(this);
                                                                                             §§push(_loc7_);
                                                                                             if(_loc22_ || param3)
                                                                                             {
                                                                                                §§push(§§pop() - this.§7!B§);
                                                                                             }
                                                                                             §§pop().§&!+§ = §§pop();
                                                                                             if(_loc22_ || this)
                                                                                             {
                                                                                                §§push(this);
                                                                                                §§push(_loc8_);
                                                                                                if(!_loc23_)
                                                                                                {
                                                                                                   §§push(§§pop() - this.§3'§);
                                                                                                }
                                                                                                §§pop().§-!>§ = §§pop();
                                                                                                if(_loc22_ || param1)
                                                                                                {
                                                                                                   if(Math.abs(this.§&!+§) < 3)
                                                                                                   {
                                                                                                      if(!_loc23_)
                                                                                                      {
                                                                                                         addr443:
                                                                                                         this.§&!+§ = 0;
                                                                                                         addr446:
                                                                                                         if(Math.abs(this.§-!>§) < 3)
                                                                                                         {
                                                                                                            this.§-!>§ = 0;
                                                                                                         }
                                                                                                      }
                                                                                                      var _loc10_:* = Number(9999);
                                                                                                      var _loc11_:* = Number(9999);
                                                                                                      if(!_loc23_)
                                                                                                      {
                                                                                                         §§push(this.§&!+§);
                                                                                                         if(!_loc23_)
                                                                                                         {
                                                                                                            §§push(0);
                                                                                                            if(_loc22_)
                                                                                                            {
                                                                                                               if(§§pop() != §§pop())
                                                                                                               {
                                                                                                                  if(_loc22_)
                                                                                                                  {
                                                                                                                     §§push(1);
                                                                                                                     if(!_loc23_)
                                                                                                                     {
                                                                                                                        §§push(mClip.getChildByName("Surface").width - this.§7!B§);
                                                                                                                        if(_loc22_ || this)
                                                                                                                        {
                                                                                                                           §§push(this.§7!B§);
                                                                                                                           if(!_loc23_)
                                                                                                                           {
                                                                                                                              §§push(§§pop() - §§pop());
                                                                                                                              if(_loc22_ || param1)
                                                                                                                              {
                                                                                                                                 §§push(this.§&!+§);
                                                                                                                                 if(!(_loc23_ && param1))
                                                                                                                                 {
                                                                                                                                    addr521:
                                                                                                                                    §§push(§§pop() / §§pop());
                                                                                                                                    if(!(_loc23_ && this))
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                       if(!(_loc23_ && this))
                                                                                                                                       {
                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                          if(_loc22_ || this)
                                                                                                                                          {
                                                                                                                                             _loc10_ = §§pop();
                                                                                                                                             addr546:
                                                                                                                                             §§push(this.§-!>§);
                                                                                                                                             if(!_loc23_)
                                                                                                                                             {
                                                                                                                                                addr551:
                                                                                                                                                if(§§pop() != 0)
                                                                                                                                                {
                                                                                                                                                   addr553:
                                                                                                                                                   §§push(1);
                                                                                                                                                   §§push(mClip.getChildByName("Surface").height - this.§3'§);
                                                                                                                                                   if(_loc22_)
                                                                                                                                                   {
                                                                                                                                                      addr562:
                                                                                                                                                      §§push(this.§3'§);
                                                                                                                                                      if(!(_loc23_ && param3))
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() - §§pop());
                                                                                                                                                         if(!_loc23_)
                                                                                                                                                         {
                                                                                                                                                            addr577:
                                                                                                                                                            §§push(§§pop() + §§pop() / this.§-!>§);
                                                                                                                                                            if(!(_loc23_ && this))
                                                                                                                                                            {
                                                                                                                                                               addr585:
                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr577);
                                                                                                                                                }
                                                                                                                                                addr589:
                                                                                                                                                this.§--§ = Math.min(_loc10_,_loc11_);
                                                                                                                                                this.§3F§ = _loc10_ <= _loc11_;
                                                                                                                                                var _loc12_:String;
                                                                                                                                                §§push(_loc12_ = param1.@ScrollPerClick);
                                                                                                                                                if(!(_loc23_ && param1))
                                                                                                                                                {
                                                                                                                                                   §§push(Boolean(§§pop()));
                                                                                                                                                   if(!(_loc23_ && param1))
                                                                                                                                                   {
                                                                                                                                                      if(§§pop())
                                                                                                                                                      {
                                                                                                                                                         if(_loc22_)
                                                                                                                                                         {
                                                                                                                                                            §§pop();
                                                                                                                                                            if(_loc22_)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc12_);
                                                                                                                                                               if(!(_loc23_ && param2))
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop().length > 0);
                                                                                                                                                                  if(_loc22_)
                                                                                                                                                                  {
                                                                                                                                                                     addr640:
                                                                                                                                                                     if(§§pop())
                                                                                                                                                                     {
                                                                                                                                                                        addr641:
                                                                                                                                                                        this.§ !>§ = param1.@ScrollPerClick;
                                                                                                                                                                        addr652:
                                                                                                                                                                        this.§6l§ = 1;
                                                                                                                                                                        if(!_loc23_)
                                                                                                                                                                        {
                                                                                                                                                                           if(mClip.getChildByName("Button_Area3"))
                                                                                                                                                                           {
                                                                                                                                                                              if(!(_loc23_ && param1))
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(mClip.getChildByName("Button_Area3").x - this.§"<§);
                                                                                                                                                                                 if(_loc22_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                                                                    if(_loc22_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr680:
                                                                                                                                                                                       _loc19_ = §§pop();
                                                                                                                                                                                       §§push(mClip.getChildByName("Button_Area3").y - this.§!?§);
                                                                                                                                                                                       if(_loc22_)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr690:
                                                                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                                                                       }
                                                                                                                                                                                       _loc20_ = §§pop();
                                                                                                                                                                                       if(_loc22_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(this);
                                                                                                                                                                                          §§push(_loc19_);
                                                                                                                                                                                          if(_loc22_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop() - this.§7!B§);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§pop().mButtonMarginX2 = §§pop();
                                                                                                                                                                                          if(_loc22_)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr704:
                                                                                                                                                                                             §§push(this);
                                                                                                                                                                                             §§push(_loc20_);
                                                                                                                                                                                             if(!_loc23_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop() - this.§3'§);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§pop().mButtonMarginY2 = §§pop();
                                                                                                                                                                                             if(!(_loc23_ && this))
                                                                                                                                                                                             {
                                                                                                                                                                                                if(Math.abs(this.mButtonMarginX2) < 3)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc22_ || param1)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr732:
                                                                                                                                                                                                      this.mButtonMarginX2 = 0;
                                                                                                                                                                                                      addr735:
                                                                                                                                                                                                      if(Math.abs(this.mButtonMarginY2) < 3)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr741:
                                                                                                                                                                                                         this.mButtonMarginY2 = 0;
                                                                                                                                                                                                         addr744:
                                                                                                                                                                                                         if(this.§3F§)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc22_ || param1)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr754:
                                                                                                                                                                                                               §§push(this);
                                                                                                                                                                                                               §§push(1);
                                                                                                                                                                                                               §§push(mClip.getChildByName("Surface").height - this.§3'§);
                                                                                                                                                                                                               if(_loc22_ || param2)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(this.§3'§);
                                                                                                                                                                                                                  if(_loc22_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr785:
                                                                                                                                                                                                                     §§push(§§pop() - §§pop());
                                                                                                                                                                                                                     if(_loc22_ || param3)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(this.mButtonMarginY2);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§pop().§6l§ = §§pop() + §§pop();
                                                                                                                                                                                                                     if(!(_loc23_ && this))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr820:
                                                                                                                                                                                                                        mClip.removeChild(mClip.getChildByName("Button_Area3"));
                                                                                                                                                                                                                        addr825:
                                                                                                                                                                                                                        var _loc13_:String;
                                                                                                                                                                                                                        §§push(_loc13_ = param1.@backgroundInstance);
                                                                                                                                                                                                                        if(_loc22_ || param3)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(Boolean(§§pop()));
                                                                                                                                                                                                                           if(!_loc23_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(§§pop())
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(_loc22_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§pop();
                                                                                                                                                                                                                                    addr846:
                                                                                                                                                                                                                                    §§push(_loc13_.length > 0);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           if(§§pop())
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(!_loc23_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 this.§2!B§ = mClip.getChildByName(param1.@backgroundInstance) as MovieClip;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              this.§++§ = this.§2!B§.x - mClip.getChildByName("Surface").x;
                                                                                                                                                                                                                              this.§1B§ = this.§2!B§.y - mClip.getChildByName("Surface").y;
                                                                                                                                                                                                                              if(_loc22_ || this)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 this.§[W§ = this.§2!B§.x + this.§2!B§.width - (this.§2!B§.x + mClip.getChildByName("Surface").width);
                                                                                                                                                                                                                                 this.§-+§ = this.§2!B§.y + this.§2!B§.height - (this.§2!B§.y + mClip.getChildByName("Surface").height);
                                                                                                                                                                                                                                 if(!_loc22_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 addr939:
                                                                                                                                                                                                                                 mClip.removeChild(mClip.getChildByName("Surface"));
                                                                                                                                                                                                                                 if(!(_loc23_ && param3))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    mClip.removeChild(mClip.getChildByName("Button_Area1"));
                                                                                                                                                                                                                                    if(!_loc23_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       mClip.removeChild(mClip.getChildByName("Button_Area2"));
                                                                                                                                                                                                                                       addr963:
                                                                                                                                                                                                                                       if(param1.@buttonSelectionType)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          var _loc21_:* = param1.@buttonSelectionType.toString();
                                                                                                                                                                                                                                          if(_loc22_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push("NO_SELECTION");
                                                                                                                                                                                                                                             if(_loc22_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(§§pop() === _loc21_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(_loc22_ || this)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      addr1023:
                                                                                                                                                                                                                                                      §§push(0);
                                                                                                                                                                                                                                                      if(_loc22_ || this)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   else
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      addr1035:
                                                                                                                                                                                                                                                      §§push(1);
                                                                                                                                                                                                                                                      if(!_loc22_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr1043);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§goto(addr1033);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             addr1033:
                                                                                                                                                                                                                                             if("EXCLUSIVE" === _loc21_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§goto(addr1035);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             else
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(2);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             addr1043:
                                                                                                                                                                                                                                             switch(§§pop())
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                case 0:
                                                                                                                                                                                                                                                   this.§0!§ = §,J§.§?'§;
                                                                                                                                                                                                                                                   if(!(_loc23_ && param1))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      addr1047:
                                                                                                                                                                                                                                                      this.§"!0§();
                                                                                                                                                                                                                                                      break;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr1047);
                                                                                                                                                                                                                                                case 1:
                                                                                                                                                                                                                                                default:
                                                                                                                                                                                                                                                   this.§0!§ = §,J§.§"N§;
                                                                                                                                                                                                                                                   if(_loc22_ || this)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§goto(addr1047);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             return;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr1023);
                                                                                                                                                                                                                                          addr966:
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1047);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr966);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr963);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              this.§^1§ = param1.@backgroundScaleH.toUpperCase() == "TRUE";
                                                                                                                                                                                                                              this.§!'§ = param1.@backgroundScaleV.toUpperCase() == "TRUE";
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr939);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr846);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr825);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§push(§§pop() / §§pop());
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr785);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr825);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         else
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(this);
                                                                                                                                                                                                            §§push(1);
                                                                                                                                                                                                            §§push(mClip.getChildByName("Surface").width - this.§7!B§);
                                                                                                                                                                                                            if(_loc22_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(this.§7!B§);
                                                                                                                                                                                                               if(!_loc23_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr816:
                                                                                                                                                                                                                  §§push(§§pop() - §§pop());
                                                                                                                                                                                                                  if(_loc22_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(this.mButtonMarginX2);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§pop().§6l§ = §§pop() + §§pop();
                                                                                                                                                                                                                  if(!_loc22_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr820);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§push(§§pop() / §§pop());
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr816);
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr744);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr820);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr735);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr732);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr754);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr704);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr690);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr680);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr741);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr820);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr732);
                                                                                                                                                                     }
                                                                                                                                                                     else
                                                                                                                                                                     {
                                                                                                                                                                        this.§ !>§ = this.§--§;
                                                                                                                                                                        if(_loc22_)
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr652);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr741);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr820);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr641);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr640);
                                                                                                                                                }
                                                                                                                                                §§goto(addr820);
                                                                                                                                             }
                                                                                                                                             §§goto(addr585);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       _loc11_ = §§pop();
                                                                                                                                       if(!_loc22_)
                                                                                                                                       {
                                                                                                                                       }
                                                                                                                                       §§goto(addr589);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr577);
                                                                                                                           }
                                                                                                                           §§goto(addr521);
                                                                                                                        }
                                                                                                                        §§goto(addr562);
                                                                                                                     }
                                                                                                                     §§goto(addr553);
                                                                                                                  }
                                                                                                                  §§goto(addr589);
                                                                                                               }
                                                                                                               §§goto(addr546);
                                                                                                            }
                                                                                                            §§goto(addr551);
                                                                                                         }
                                                                                                         §§goto(addr585);
                                                                                                      }
                                                                                                      §§goto(addr553);
                                                                                                   }
                                                                                                   §§goto(addr446);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr443);
                                                                                          }
                                                                                          §§goto(addr347);
                                                                                       }
                                                                                       this.§7!B§ = mClip.getChildByName("Button_Area1").x - this.§"<§;
                                                                                       if(_loc23_)
                                                                                       {
                                                                                       }
                                                                                       §§goto(addr338);
                                                                                    }
                                                                                    §3! §.push(new §?q§(_loc17_,this));
                                                                                    §§goto(addr255);
                                                                                 }
                                                                                 §§goto(addr338);
                                                                              }
                                                                              §§goto(addr255);
                                                                           }
                                                                           §§goto(addr356);
                                                                        }
                                                                        §§goto(addr338);
                                                                     }
                                                                     §§goto(addr216);
                                                                  }
                                                               }
                                                               §§goto(addr188);
                                                            }
                                                            §§goto(addr168);
                                                         }
                                                         if(§§pop().toUpperCase() == "CENTER")
                                                         {
                                                            this.§77§ = §#^§;
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr168);
                                                   §§push(param1.@GlowFilter);
                                                }
                                             }
                                             §§goto(addr141);
                                          }
                                          §§goto(addr152);
                                       }
                                    }
                                    §§goto(addr168);
                                 }
                              }
                           }
                           §§goto(addr141);
                        }
                        §§goto(addr110);
                     }
                     §§goto(addr95);
                  }
                  §§goto(addr115);
               }
               §§goto(addr75);
            }
            §§goto(addr60);
         }
         §§goto(addr69);
      }
      
      public function §"!0§(param1:Array = null, param2:Class = null) : void
      {
         var _loc19_:Boolean = true;
         var _loc20_:Boolean = false;
         var _loc4_:String = null;
         var _loc5_:MovieClip = null;
         var _loc6_:XML = null;
         var _loc7_:§0=§ = null;
         var _loc8_:§,J§ = null;
         var _loc9_:int = 0;
         var _loc10_:* = 0;
         var _loc11_:int = 0;
         var _loc12_:XML = null;
         var _loc13_:§'3§ = null;
         var _loc14_:MovieClip = null;
         var _loc15_:* = 0;
         var _loc16_:* = 0;
         var _loc17_:int = 0;
         var _loc18_:int = 0;
         if(_loc19_)
         {
            if(param2 == null)
            {
               if(_loc19_ || _loc3_)
               {
                  param2 = §'3§;
                  addr69:
                  this.§`!0§ = new Vector.<§,J§>();
                  if(!(_loc20_ && param1))
                  {
                     this.§+!E§();
                     if(!(_loc20_ && _loc3_))
                     {
                        §§push(param1);
                        if(_loc19_ || this)
                        {
                           if(§§pop() == null)
                           {
                              if(_loc19_)
                              {
                                 addr103:
                                 param1 = getParentView().getRepeaterDataXML(mName);
                              }
                              §§goto(addr111);
                           }
                           §§push(param1);
                        }
                        if(!§§pop())
                        {
                           addr111:
                           param1 = new Array();
                           §§goto(addr115);
                        }
                        addr115:
                        var _loc3_:int = 0;
                        loop0:
                        while(true)
                        {
                           if(_loc3_ >= param1.length)
                           {
                              if(_loc19_ || param2)
                              {
                                 break;
                              }
                              §§goto(addr857);
                           }
                           §§push(mName + "_Tab_");
                           if(_loc19_)
                           {
                              §§push(§§pop() + _loc3_);
                           }
                           _loc4_ = §§pop();
                           if(_loc20_)
                           {
                              break;
                           }
                           _loc5_ = new MovieClip();
                           (_loc6_ = <Container/>).@name = _loc4_;
                           _loc7_ = new §0=§(_loc6_,this,null,_loc5_);
                           if(!(_loc20_ && this))
                           {
                              §3! §.push(_loc7_);
                           }
                           _loc8_ = new §,J§(this.§0!§,_loc4_);
                           this.§`!0§.push(_loc8_);
                           if(_loc19_ || param2)
                           {
                              §§push(this.§7!B§);
                              if(!(_loc20_ && param2))
                              {
                                 _loc9_ = §§pop();
                                 if(_loc19_)
                                 {
                                    §§push(this.§--§);
                                    if(_loc19_)
                                    {
                                       _loc10_ = int(§§pop());
                                       if(!(_loc20_ && this))
                                       {
                                          §§push(param1);
                                          if(_loc19_)
                                          {
                                             §§push(_loc3_);
                                             if(_loc19_)
                                             {
                                                if((§§pop()[§§pop()] as Array).length < _loc10_)
                                                {
                                                   §§push(param1);
                                                   if(!(_loc20_ && _loc3_))
                                                   {
                                                      §§push(_loc3_);
                                                      if(_loc19_ || param1)
                                                      {
                                                         §§push(int((§§pop()[§§pop()] as Array).length));
                                                         if(_loc19_)
                                                         {
                                                            addr239:
                                                            _loc10_ = §§pop();
                                                            addr240:
                                                            §§push(this.§77§);
                                                            if(!(_loc20_ && this))
                                                            {
                                                               if(§§pop() == §#^§)
                                                               {
                                                                  addr251:
                                                                  §§push(this.§+!1§);
                                                                  if(_loc19_ || this)
                                                                  {
                                                                     §§push(_loc10_);
                                                                     if(!(_loc20_ && _loc3_))
                                                                     {
                                                                        addr280:
                                                                        §§push(§§pop() - 1);
                                                                        if(!_loc20_)
                                                                        {
                                                                           §§push(§§pop() * this.§&!+§);
                                                                        }
                                                                        §§push(§§pop() - §§pop());
                                                                        if(!_loc20_)
                                                                        {
                                                                           addr278:
                                                                           §§push(§§pop() / 2);
                                                                        }
                                                                        _loc9_ = §§pop();
                                                                        addr281:
                                                                        _loc11_ = 0;
                                                                        if(!_loc20_)
                                                                        {
                                                                           addr285:
                                                                           loop3:
                                                                           while(true)
                                                                           {
                                                                              if(_loc11_ < (param1[_loc3_] as Array).length)
                                                                              {
                                                                                 addr288:
                                                                                 §§push(param1);
                                                                                 loop2:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc3_);
                                                                                    addr289:
                                                                                    while(true)
                                                                                    {
                                                                                       _loc12_ = ((§§pop()[§§pop()] as Array)[_loc11_] as Array)[0] as XML;
                                                                                       if(_loc19_ || this)
                                                                                       {
                                                                                          if(((param1[_loc3_] as Array)[_loc11_] as Array)[2])
                                                                                          {
                                                                                             if(_loc19_ || param2)
                                                                                             {
                                                                                                _loc7_.§3! §.push(new param2(_loc12_,_loc7_,((param1[_loc3_] as Array)[_loc11_] as Array)[2] as MovieClip));
                                                                                                if(_loc20_)
                                                                                                {
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             _loc7_.§3! §.push(new param2(_loc12_,_loc7_,new this.§7h§() as MovieClip));
                                                                                          }
                                                                                       }
                                                                                       _loc13_ = _loc7_.§3! §[_loc7_.§3! §.length - 1] as §'3§;
                                                                                       if(!_loc20_)
                                                                                       {
                                                                                          §§push(param1);
                                                                                          if(!(_loc20_ && param2))
                                                                                          {
                                                                                             §§push(_loc3_);
                                                                                             if(_loc19_ || param1)
                                                                                             {
                                                                                                if(((§§pop()[§§pop()] as Array)[_loc11_] as Array)[1] != null)
                                                                                                {
                                                                                                   if(_loc19_)
                                                                                                   {
                                                                                                      _loc14_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[1] as MovieClip;
                                                                                                      _loc13_.§;!G§(_loc14_,this.§@b§);
                                                                                                      addr406:
                                                                                                      if(_loc19_ || this)
                                                                                                      {
                                                                                                         §§push(this.§"B§);
                                                                                                         if(!_loc20_)
                                                                                                         {
                                                                                                            addr482:
                                                                                                            if(§§pop() == §+i§)
                                                                                                            {
                                                                                                               §§push(2);
                                                                                                            }
                                                                                                            §§push(this.§6l§);
                                                                                                            if(_loc19_ || param2)
                                                                                                            {
                                                                                                               §§push(1);
                                                                                                               if(!_loc20_)
                                                                                                               {
                                                                                                                  if(§§pop() == §§pop())
                                                                                                                  {
                                                                                                                     if(_loc19_)
                                                                                                                     {
                                                                                                                        _loc13_.x = _loc9_ + _loc11_ * this.§&!+§;
                                                                                                                        if(_loc20_)
                                                                                                                        {
                                                                                                                           continue loop3;
                                                                                                                        }
                                                                                                                        addr507:
                                                                                                                        §§push(_loc13_);
                                                                                                                        §§push(this.§3'§);
                                                                                                                        if(_loc19_ || _loc3_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() + _loc11_ * this.§-!>§);
                                                                                                                        }
                                                                                                                        §§pop().y = §§pop();
                                                                                                                        addr780:
                                                                                                                        _loc8_.§6i§(_loc13_);
                                                                                                                        if(_loc20_ && param2)
                                                                                                                        {
                                                                                                                           continue loop3;
                                                                                                                        }
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        addr674:
                                                                                                                        if(this.§3F§)
                                                                                                                        {
                                                                                                                           if(!_loc20_)
                                                                                                                           {
                                                                                                                              §§push(_loc13_);
                                                                                                                              §§push(_loc9_ + _loc18_ * this.§&!+§);
                                                                                                                              if(_loc19_ || this)
                                                                                                                              {
                                                                                                                                 §§push(_loc16_ * this.§--§);
                                                                                                                                 if(!(_loc20_ && param2))
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() * this.§&!+§);
                                                                                                                                 }
                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                              }
                                                                                                                              §§pop().x = §§pop();
                                                                                                                              §§push(_loc13_);
                                                                                                                              §§push(this.§3'§);
                                                                                                                              if(!(_loc20_ && param2))
                                                                                                                              {
                                                                                                                                 §§push(§§pop() + _loc17_ * this.mButtonMarginY2);
                                                                                                                              }
                                                                                                                              §§pop().y = §§pop();
                                                                                                                           }
                                                                                                                           §§goto(addr780);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           _loc13_.x = _loc9_ + _loc17_ * this.mButtonMarginX2;
                                                                                                                           if(_loc19_)
                                                                                                                           {
                                                                                                                              §§push(_loc13_);
                                                                                                                              §§push(this.§3'§);
                                                                                                                              if(!_loc20_)
                                                                                                                              {
                                                                                                                                 §§push(_loc18_);
                                                                                                                                 if(!(_loc20_ && this))
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() * this.§-!>§);
                                                                                                                                    if(_loc19_)
                                                                                                                                    {
                                                                                                                                       addr772:
                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                       if(!(_loc20_ && this))
                                                                                                                                       {
                                                                                                                                          addr763:
                                                                                                                                          §§push(_loc16_ * this.§--§);
                                                                                                                                          if(_loc19_)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() * this.§-!>§);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§pop().y = §§pop();
                                                                                                                                       if(!(_loc20_ && this))
                                                                                                                                       {
                                                                                                                                          §§goto(addr780);
                                                                                                                                       }
                                                                                                                                       _loc11_++;
                                                                                                                                       continue loop3;
                                                                                                                                    }
                                                                                                                                    §§goto(addr772);
                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                 }
                                                                                                                                 §§goto(addr763);
                                                                                                                              }
                                                                                                                              §§goto(addr772);
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§push(_loc11_);
                                                                                                                     if(!(_loc20_ && _loc3_))
                                                                                                                     {
                                                                                                                        §§push(this.§--§);
                                                                                                                        if(!(_loc20_ && param1))
                                                                                                                        {
                                                                                                                           §§push(this.§6l§);
                                                                                                                           if(_loc19_ || _loc3_)
                                                                                                                           {
                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                              if(!(_loc20_ && _loc3_))
                                                                                                                              {
                                                                                                                                 §§push(§§pop() / §§pop());
                                                                                                                                 if(_loc19_ || this)
                                                                                                                                 {
                                                                                                                                    §§push(int(§§pop()));
                                                                                                                                    if(!(_loc20_ && this))
                                                                                                                                    {
                                                                                                                                       addr574:
                                                                                                                                       _loc16_ = §§pop();
                                                                                                                                       §§push(_loc11_);
                                                                                                                                       if(_loc19_)
                                                                                                                                       {
                                                                                                                                          addr578:
                                                                                                                                          §§push(_loc16_);
                                                                                                                                          if(_loc19_)
                                                                                                                                          {
                                                                                                                                             addr581:
                                                                                                                                             §§push(this.§--§);
                                                                                                                                             if(_loc19_ || param1)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                if(!(_loc20_ && _loc3_))
                                                                                                                                                {
                                                                                                                                                   §§push(this.§6l§);
                                                                                                                                                   if(!_loc20_)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                      if(!_loc20_)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() - §§pop());
                                                                                                                                                         if(_loc19_ || this)
                                                                                                                                                         {
                                                                                                                                                            §§push(this.§--§);
                                                                                                                                                            if(_loc19_ || param1)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() / §§pop());
                                                                                                                                                               if(_loc19_ || this)
                                                                                                                                                               {
                                                                                                                                                                  addr630:
                                                                                                                                                                  _loc17_ = §§pop();
                                                                                                                                                                  §§push(_loc11_);
                                                                                                                                                                  if(!(_loc20_ && param2))
                                                                                                                                                                  {
                                                                                                                                                                     addr643:
                                                                                                                                                                     §§push(_loc16_ * this.§--§);
                                                                                                                                                                     if(_loc19_ || this)
                                                                                                                                                                     {
                                                                                                                                                                        addr654:
                                                                                                                                                                        §§push(§§pop() - §§pop() * this.§6l§);
                                                                                                                                                                        if(!(_loc20_ && param1))
                                                                                                                                                                        {
                                                                                                                                                                           addr662:
                                                                                                                                                                           §§push(§§pop() % this.§--§);
                                                                                                                                                                        }
                                                                                                                                                                        _loc18_ = §§pop();
                                                                                                                                                                        if(!(_loc20_ && _loc3_))
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr674);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr772);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr654);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr662);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr630);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr654);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr643);
                                                                                                                                    }
                                                                                                                                    §§goto(addr578);
                                                                                                                                 }
                                                                                                                                 §§goto(addr662);
                                                                                                                              }
                                                                                                                              §§goto(addr654);
                                                                                                                           }
                                                                                                                           §§goto(addr643);
                                                                                                                        }
                                                                                                                        §§goto(addr581);
                                                                                                                     }
                                                                                                                     §§goto(addr654);
                                                                                                                  }
                                                                                                                  §§goto(addr772);
                                                                                                               }
                                                                                                               §§goto(addr581);
                                                                                                            }
                                                                                                            §§goto(addr574);
                                                                                                         }
                                                                                                         _loc15_ = §§pop();
                                                                                                         if(_loc19_ || param2)
                                                                                                         {
                                                                                                            addr456:
                                                                                                            _loc14_.y -= _loc14_.height / 2;
                                                                                                            if(!(_loc20_ && param2))
                                                                                                            {
                                                                                                               addr472:
                                                                                                               if(this.§@b§ == null)
                                                                                                               {
                                                                                                               }
                                                                                                               §§goto(addr482);
                                                                                                            }
                                                                                                            _loc14_.y -= _loc15_;
                                                                                                            §§goto(addr482);
                                                                                                         }
                                                                                                         §§goto(addr472);
                                                                                                      }
                                                                                                      §§goto(addr456);
                                                                                                   }
                                                                                                   §§goto(addr507);
                                                                                                }
                                                                                                §§goto(addr482);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr406);
                                                                                       }
                                                                                       §§goto(addr507);
                                                                                       continue loop2;
                                                                                    }
                                                                                 }
                                                                                 addr288:
                                                                              }
                                                                              _loc8_.§,4§("");
                                                                              addr802:
                                                                              _loc7_.§,D§(this.§--§,this.§"<§,this.§!?§,this.§ !>§ * this.§&!+§,this.§ !>§ * this.§-!>§,this.§6l§,this.§ !>§);
                                                                              if(!(_loc20_ && _loc3_))
                                                                              {
                                                                                 _loc3_++;
                                                                              }
                                                                              continue loop0;
                                                                           }
                                                                        }
                                                                        §§goto(addr802);
                                                                     }
                                                                  }
                                                                  §§goto(addr278);
                                                               }
                                                               §§goto(addr281);
                                                            }
                                                         }
                                                         §§goto(addr280);
                                                      }
                                                      §§goto(addr289);
                                                   }
                                                   §§goto(addr288);
                                                }
                                                §§goto(addr240);
                                             }
                                             §§goto(addr289);
                                          }
                                          §§goto(addr288);
                                       }
                                       §§goto(addr285);
                                    }
                                    §§goto(addr239);
                                 }
                                 §§goto(addr802);
                              }
                              §§goto(addr278);
                           }
                           §§goto(addr251);
                        }
                        if(param1.length > 1)
                        {
                        }
                        addr857:
                        return;
                     }
                  }
                  §§goto(addr103);
               }
               §§goto(addr111);
            }
            §§goto(addr69);
         }
         §§goto(addr103);
      }
      
      public function get §=o§() : int
      {
         return this.§--§;
      }
      
      public function get §`o§() : int
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §§push(this.§=o§);
            if(!_loc2_)
            {
               if(§§pop() == 0)
               {
                  if(!_loc2_)
                  {
                     §§goto(addr52);
                  }
               }
               §§push(this.§,&§(this.§@!0§).§9!>§.length / this.§=o§);
               if(_loc1_ || _loc2_)
               {
                  §§push(§§pop() + 1);
               }
               return §§pop();
            }
            §§goto(addr52);
         }
         addr52:
         return 0;
      }
      
      override public function containerEventOccured(param1:int, param2:String, param3:§^h§) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:§,J§ = null;
         var _loc4_:§0=§ = getItemByName(this.§@!0§) as §0=§;
         if(!_loc6_)
         {
            §§push(param2);
            if(_loc7_)
            {
               if(§§pop().toUpperCase() == "SCROLL_LEFT")
               {
                  if(_loc7_)
                  {
                     if(_loc4_)
                     {
                        _loc4_.§5V§(_loc4_.§[!6§ - 1);
                        this.§!"§();
                        if(!(_loc7_ || param2))
                        {
                           addr112:
                           §§push(param1);
                           if(_loc7_ || param3)
                           {
                              §§push(§§pop() == §^h§.LISTENER_EVENT_MOUSE_DOWN);
                              if(!(_loc6_ && param3))
                              {
                                 §§push(§§pop());
                                 if(_loc7_ || param3)
                                 {
                                    addr138:
                                    if(!§§pop())
                                    {
                                       §§pop();
                                       addr141:
                                       §§push(param1 == §^h§.LISTENER_EVENT_MOUSE_UP);
                                    }
                                    §§push(§§pop());
                                 }
                                 if(§§pop())
                                 {
                                    addr146:
                                    §§pop();
                                    §§goto(addr165);
                                 }
                                 addr157:
                                 if(§§pop())
                                 {
                                    if(!(_loc6_ && this))
                                    {
                                       addr165:
                                       if(_loc7_ || this)
                                       {
                                          addr154:
                                          §§push(param3 is §&!A§);
                                       }
                                       §§push(Boolean(_loc5_ = this.§,&§((param3 as §&!A§).mParentContainer.mName.toUpperCase())));
                                       if(_loc7_)
                                       {
                                          if(§§pop())
                                          {
                                             if(!(_loc6_ && param3))
                                             {
                                                §§pop();
                                                §§goto(addr219);
                                             }
                                          }
                                       }
                                       if(§§pop())
                                       {
                                          if(_loc7_ || param1)
                                          {
                                             _loc5_.§,4§((param3 as §&!A§).mName.toUpperCase());
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr219);
                              }
                              §§goto(addr146);
                           }
                           §§goto(addr141);
                        }
                        else
                        {
                           addr54:
                        }
                        §§goto(addr219);
                     }
                     §§goto(addr54);
                  }
                  §§goto(addr146);
               }
               else
               {
                  §§push(param2);
                  if(_loc7_ || param2)
                  {
                     addr63:
                     if(§§pop().toUpperCase() == "SCROLL_RIGHT")
                     {
                        if(_loc4_)
                        {
                           if(_loc7_ || param2)
                           {
                              _loc4_.§5V§(_loc4_.§[!6§ + 1);
                              this.§!"§();
                              if(!_loc7_)
                              {
                                 §§goto(addr154);
                              }
                              else
                              {
                                 addr85:
                              }
                              §§goto(addr219);
                           }
                           else
                           {
                              §§goto(addr141);
                           }
                        }
                        §§goto(addr85);
                     }
                     else
                     {
                        addr87:
                        §§push(param2.length > 0);
                        §§push(param2.length > 0);
                        if(!_loc6_)
                        {
                           if(§§pop())
                           {
                              §§pop();
                              if(!(_loc6_ && param3))
                              {
                                 §§goto(addr112);
                              }
                              §§goto(addr146);
                           }
                        }
                        §§goto(addr138);
                     }
                  }
                  §§goto(addr87);
               }
            }
            §§goto(addr63);
         }
         addr219:
         if(_loc7_)
         {
            §§push(param3 is §'3§);
         }
         super.containerEventOccured(param1,param2,param3);
      }
      
      public function §1+§(param1:String, param2:int) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§0=§ = getItemByName(param1) as §0=§;
         if(!(_loc5_ && this))
         {
            if(_loc3_)
            {
               if(_loc4_)
               {
                  _loc3_.§5V§(param2);
                  if(!_loc5_)
                  {
                     addr49:
                     this.§!"§();
                  }
               }
               §§goto(addr49);
            }
            return;
         }
         §§goto(addr49);
      }
      
      public function §,&§(param1:String) : §,J§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = 0;
         while(_loc2_ < this.§`!0§.length)
         {
            if(param1.toUpperCase() == (this.§`!0§[_loc2_] as §,J§).mName.toUpperCase())
            {
               if(!(_loc4_ && this))
               {
                  return this.§`!0§[_loc2_] as §,J§;
               }
               break;
            }
            _loc2_++;
            if(_loc4_)
            {
               break;
            }
         }
         return null;
      }
      
      public function §>!?§(param1:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param1))
         {
            this.§@!0§ = param1;
         }
         var _loc2_:int = 0;
         while(_loc2_ < §3! §.length)
         {
            §§push(§3! §[_loc2_] is §0=§);
            if(_loc3_ || param1)
            {
               if(§§pop())
               {
                  if((§3! §[_loc2_] as §0=§).mName.toUpperCase() == param1.toUpperCase())
                  {
                     if(!_loc4_)
                     {
                        (§3! §[_loc2_] as §0=§).setActiveStatus(true);
                        §§push(this.§^1§);
                        if(!(_loc4_ && _loc3_))
                        {
                           if(§§pop())
                           {
                              if(_loc3_)
                              {
                                 this.§2!B§.x = (§3! §[_loc2_] as §0=§).x + this.§++§;
                                 if(_loc4_ && _loc3_)
                                 {
                                    break;
                                 }
                                 this.§2!B§.width = (§3! §[_loc2_] as §0=§).width + this.§[W§;
                                 addr115:
                                 addr117:
                                 if(this.§!'§)
                                 {
                                    this.§2!B§.y = (§3! §[_loc2_] as §0=§).y + this.§1B§;
                                    if(_loc3_ || _loc2_)
                                    {
                                       addr147:
                                       this.§2!B§.height = (§3! §[_loc2_] as §0=§).height + this.§-+§;
                                    }
                                 }
                                 _loc2_++;
                                 continue;
                              }
                              §§goto(addr147);
                           }
                           §§goto(addr115);
                        }
                        §§goto(addr117);
                     }
                     §§goto(addr176);
                  }
                  (§3! §[_loc2_] as §0=§).setActiveStatus(false);
                  if(_loc4_)
                  {
                     continue;
                  }
               }
            }
            §§goto(addr115);
         }
         this.§!"§();
         addr176:
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§,J§ = null;
         if(!(_loc5_ && param1))
         {
            super.setEnabled(param1);
         }
         for each(_loc2_ in this.§`!0§)
         {
            if(_loc6_)
            {
               _loc2_.setEnabled(param1);
            }
         }
      }
      
      public function §!"§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc1_)
         {
            §§push(getItemByName("Button_Scroll1") == null);
            if(!_loc3_)
            {
               if(§§pop())
               {
                  if(_loc2_ || _loc1_)
                  {
                     addr39:
                     §§pop();
                     if(_loc2_)
                     {
                        addr47:
                        if(getItemByName("Button_Scroll2") == null)
                        {
                           if(!(_loc3_ && _loc3_))
                           {
                              return;
                           }
                        }
                     }
                     var _loc1_:§0=§ = getItemByName(this.§@!0§) as §0=§;
                     if(_loc1_)
                     {
                        §§push(_loc1_.§[!6§);
                        if(!(_loc3_ && _loc3_))
                        {
                           §§push(0);
                           if(!_loc3_)
                           {
                              if(§§pop() > §§pop())
                              {
                                 (getItemByName("Button_Scroll1") as §?q§).setComponentState(§`!&§.COMPONENT_STATE_ACTIVE_DEFAULT);
                                 if(_loc3_ && _loc1_)
                                 {
                                    addr169:
                                    (getItemByName("Button_Scroll2") as §?q§).setComponentState(§`!&§.§9I§);
                                 }
                                 §§goto(addr177);
                              }
                              else
                              {
                                 (getItemByName("Button_Scroll1") as §?q§).setComponentState(§`!&§.§9I§);
                              }
                              addr115:
                              §§push(_loc1_.§[!6§);
                              §§push(_loc1_.§4!1§);
                           }
                           if(§§pop() < §§pop() - 1)
                           {
                              if(_loc2_ || _loc2_)
                              {
                                 (getItemByName("Button_Scroll2") as §?q§).setComponentState(§`!&§.COMPONENT_STATE_ACTIVE_DEFAULT);
                              }
                              §§goto(addr177);
                           }
                           else
                           {
                              (getItemByName("Button_Scroll2") as §?q§).setComponentState(§`!&§.§9I§);
                           }
                           addr177:
                           return;
                        }
                        §§goto(addr115);
                     }
                     else
                     {
                        (getItemByName("Button_Scroll1") as §?q§).setComponentState(§`!&§.§9I§);
                        if(_loc2_ || _loc2_)
                        {
                           §§goto(addr169);
                        }
                     }
                     §§goto(addr169);
                  }
               }
               §§goto(addr47);
            }
            §§goto(addr39);
         }
         §§goto(addr47);
      }
      
      public function §+!E§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§0=§ = null;
         var _loc1_:* = int(§3! §.length - 1);
         while(_loc1_ >= 0)
         {
            _loc2_ = §3! §[_loc1_] as §0=§;
            if(!(_loc4_ && _loc1_))
            {
               if(_loc2_)
               {
                  if(_loc3_)
                  {
                     _loc2_.clear();
                     if(_loc3_ || this)
                     {
                        §3! §.splice(_loc1_,1);
                        if(!_loc3_)
                        {
                           continue;
                        }
                     }
                  }
               }
            }
            §§push(_loc1_);
            if(!(_loc4_ && _loc3_))
            {
               §§push(§§pop() - 1);
            }
            _loc1_ = §§pop();
         }
         if(!(_loc4_ && _loc2_))
         {
            this.§>!?§("");
         }
      }
      
      public function §2!D§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§,J§ = null;
         for each(_loc1_ in this.§`!0§)
         {
            if(_loc4_)
            {
               _loc1_.§2!D§();
            }
         }
      }
      
      public function §`!,§() : Array
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            §§push(this.§,&§(this.§@!0§));
            if(_loc1_)
            {
               if(§§pop() == null)
               {
                  if(_loc1_)
                  {
                     addr53:
                     §5!<§.log("ERROR! Tried to get selections for noninited repeater!");
                     if(_loc2_ && _loc1_)
                     {
                        addr70:
                        return this.§,&§(this.§@!0§).§8j§();
                        addr66:
                     }
                  }
                  return new Array();
               }
               §§goto(addr66);
            }
            §§goto(addr70);
         }
         §§goto(addr53);
      }
      
      public function §8R§(param1:Array) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§,&§(this.§@!0§).§8R§(param1);
         }
      }
      
      public function §0!1§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§,&§(this.§@!0§).§0!1§(param1);
         }
      }
      
      override public function clear() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.clear();
            if(_loc1_)
            {
               this.§7h§ = null;
               if(_loc1_)
               {
                  addr37:
                  this.§`!0§ = null;
                  if(_loc1_ || _loc1_)
                  {
                  }
                  §§goto(addr50);
               }
               this.§>m§ = null;
            }
            addr50:
            return;
         }
         §§goto(addr37);
      }
   }
}
