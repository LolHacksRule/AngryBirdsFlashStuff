package §<"B§
{
   public class §94§
   {
       
      
      public var instanceName:String;
      
      public var type:String = "";
      
      public var id:int = 0;
      
      public var x:Number = 0;
      
      public var y:Number = 0;
      
      public var angle:Number = 0;
      
      public var themeTexture:String = "";
      
      public var front:Boolean = false;
      
      public var §2"5§:Number = 0.0;
      
      public var §`#Y§:Number = 0.0;
      
      public var §=G§:int = -1;
      
      public function §94§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
      }
      
      public function getAsSerializableObject() : Object
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:Object = new Object();
         if(_loc3_ || _loc3_)
         {
            _loc1_.x = this.x;
            while(true)
            {
               _loc1_.y = this.y;
               while(true)
               {
                  _loc1_.angle = this.angle;
                  addr86:
                  while(!_loc2_)
                  {
                  }
               }
               addr67:
               if(_loc2_ && this)
               {
                  continue;
               }
               _loc1_.id = this.type;
               addr74:
               if(!(_loc2_ && _loc1_))
               {
                  addr56:
                  if(!_loc3_)
                  {
                     while(true)
                     {
                        _loc1_.uniqueID = this.id.toString();
                        addr65:
                        while(!_loc2_)
                        {
                           §§goto(addr67);
                           §§goto(addr74);
                        }
                        §§goto(addr86);
                        §§goto(addr56);
                     }
                     addr80:
                  }
                  return _loc1_;
               }
               §§goto(addr65);
            }
         }
         while(true)
         {
            _loc1_.front = this.front;
            §§goto(addr80);
         }
      }
   }
}
