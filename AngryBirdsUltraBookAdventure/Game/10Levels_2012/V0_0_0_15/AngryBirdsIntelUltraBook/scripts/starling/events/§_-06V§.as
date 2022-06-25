package starling.events
{
   import §_-uY§.DisplayObject;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §_-06V§
   {
      
      private static var §_-6w§:Matrix;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §_-6w§ = new Matrix();
         }
      }
      
      private var §_-EB§:int;
      
      private var §_-OG§:Number;
      
      private var §_-01C§:Number;
      
      private var §_-nN§:Number;
      
      private var §_-3E§:Number;
      
      private var §_-Om§:int;
      
      private var §_-0DX§:String;
      
      private var §_-EY§:DisplayObject;
      
      private var §_-0CR§:Number;
      
      public function §_-06V§(param1:int, param2:Number, param3:Number, param4:String, param5:DisplayObject)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_ || param2)
         {
            super();
            if(_loc7_)
            {
               this.§_-EB§ = param1;
               if(!(_loc8_ && this))
               {
                  addr47:
                  this.§_-OG§ = this.§_-nN§ = param2;
                  if(!_loc8_)
                  {
                     this.§_-01C§ = this.§_-3E§ = param3;
                     if(_loc7_)
                     {
                        this.§_-Om§ = 0;
                        while(true)
                        {
                           this.§_-0DX§ = param4;
                           loop1:
                           while(!_loc8_)
                           {
                              while(true)
                              {
                                 this.§_-EY§ = param5;
                                 if(_loc7_)
                                 {
                                    return;
                                    addr90:
                                 }
                                 continue loop1;
                              }
                           }
                        }
                        addr79:
                     }
                     §§goto(addr97);
                  }
               }
               §§goto(addr79);
            }
            §§goto(addr90);
         }
         §§goto(addr47);
      }
      
      public function §_-du§(param1:DisplayObject) : Point
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Point = new Point(this.§_-OG§,this.§_-01C§);
         if(_loc4_)
         {
            this.§_-EY§.root.§_-mP§(param1,§_-6w§);
         }
         return §_-6w§.transformPoint(_loc2_);
      }
      
      public function §_-QB§(param1:DisplayObject) : Point
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:Point = new Point(this.§_-nN§,this.§_-3E§);
         if(!(_loc4_ && this))
         {
            this.§_-EY§.root.§_-mP§(param1,§_-6w§);
         }
         return §_-6w§.transformPoint(_loc2_);
      }
      
      public function clone() : §_-06V§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§_-06V§ = new §_-06V§(this.§_-EB§,this.§_-OG§,this.§_-01C§,this.§_-0DX§,this.§_-EY§);
         if(!_loc3_)
         {
            _loc1_.§_-nN§ = this.§_-nN§;
            while(true)
            {
               _loc1_.§_-3E§ = this.§_-3E§;
               while(!(_loc3_ && _loc3_))
               {
                  _loc1_.§_-Om§ = this.§_-Om§;
                  do
                  {
                     _loc1_.§_-0CR§ = this.§_-0CR§;
                  }
                  while(!_loc2_);
                  
                  if(!(_loc2_ || _loc3_))
                  {
                     continue;
                  }
                  return _loc1_;
                  addr72:
               }
            }
         }
         §§goto(addr72);
      }
      
      public function get id() : int
      {
         return this.§_-EB§;
      }
      
      public function get globalX() : Number
      {
         return this.§_-OG§;
      }
      
      public function get globalY() : Number
      {
         return this.§_-01C§;
      }
      
      public function get §_-UI§() : Number
      {
         return this.§_-nN§;
      }
      
      public function get §_-02C§() : Number
      {
         return this.§_-3E§;
      }
      
      public function get §_-Y3§() : int
      {
         return this.§_-Om§;
      }
      
      public function get phase() : String
      {
         return this.§_-0DX§;
      }
      
      public function get target() : DisplayObject
      {
         return this.§_-EY§;
      }
      
      public function get timestamp() : Number
      {
         return this.§_-0CR§;
      }
      
      function setPosition(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§_-nN§ = this.§_-OG§;
            while(true)
            {
               this.§_-3E§ = this.§_-01C§;
               while(!_loc4_)
               {
                  this.§_-OG§ = param1;
                  while(_loc3_)
                  {
                     this.§_-01C§ = param2;
                     if(_loc3_ || param1)
                     {
                        return;
                        addr54:
                     }
                  }
               }
            }
         }
         §§goto(addr54);
      }
      
      function §_-og§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§_-0DX§ = param1;
         }
      }
      
      function §_-p9§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§_-Om§ = param1;
         }
      }
      
      function §_-dc§(param1:DisplayObject) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§_-EY§ = param1;
         }
      }
      
      function §_-Sz§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§_-0CR§ = param1;
         }
      }
   }
}
