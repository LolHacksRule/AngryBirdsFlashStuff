package §0N§
{
   public class §,!A§
   {
       
      
      public var instanceName:String;
      
      public var type:String = "";
      
      public var id:int = 0;
      
      public var x:Number = 0;
      
      public var y:Number = 0;
      
      public var angle:Number = 0;
      
      public var §<<§:String = "";
      
      public var front:Boolean = false;
      
      public var §4!Y§:Number = 0.0;
      
      public var §]5§:Number = 0.0;
      
      public var §<v§:int = -1;
      
      public function §,!A§()
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
         if(_loc3_)
         {
            _loc1_.x = this.x;
            loop0:
            while(true)
            {
               _loc1_.y = this.y;
               while(true)
               {
                  _loc1_.angle = this.angle;
                  while(true)
                  {
                     _loc1_.front = this.front;
                     addr43:
                     if(!(_loc2_ && _loc1_))
                     {
                        if(_loc3_)
                        {
                           return _loc1_;
                           addr62:
                        }
                        continue loop0;
                     }
                  }
                  loop4:
                  while(_loc3_ || _loc2_)
                  {
                     _loc1_.id = this.type;
                     if(_loc2_)
                     {
                        continue;
                     }
                     addr36:
                     if(!(_loc2_ && _loc3_))
                     {
                        §§goto(addr43);
                     }
                     while(true)
                     {
                        _loc1_.uniqueID = this.id.toString();
                        continue loop4;
                        §§goto(addr36);
                     }
                     §§goto(addr62);
                  }
               }
            }
         }
         §§goto(addr82);
      }
   }
}
